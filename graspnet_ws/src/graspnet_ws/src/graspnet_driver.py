""" Demo to show prediction results.
    Author: chenxi-wang
"""

import os
import sys
import numpy as np
import open3d as o3d
import argparse
import importlib
import scipy.io as scio
from PIL import Image

import torch
from graspnetAPI import GraspGroup

import rospy

ROOT_DIR = os.path.dirname(os.path.abspath(__file__))
sys.path.append(os.path.join(ROOT_DIR, 'models'))
sys.path.append(os.path.join(ROOT_DIR, 'dataset'))
sys.path.append(os.path.join(ROOT_DIR, 'utils'))

from graspnet import GraspNet, pred_decode
from graspnet_dataset import GraspNetDataset
from collision_detector import ModelFreeCollisionDetector
from data_utils import CameraInfo, create_point_cloud_from_depth_image
import threading




class GraspNetDriver:
    def __init__(self):
        self.parser = argparse.ArgumentParser()
        self.parser.add_argument('--checkpoint_path', default="./checkpoint-rs.tar", required=False, help='Model checkpoint path')
        self.parser.add_argument('--num_point', type=int, default=20000, help='Point Number [default: 20000]')
        self.parser.add_argument('--num_view', type=int, default=300, help='View Number [default: 300]')
        self.parser.add_argument('--collision_thresh', type=float, default=0.01, help='Collision Threshold in collision detection [default: 0.01]')
        self.parser.add_argument('--voxel_size', type=float, default=0.01, help='Voxel Size to process point clouds before collision detection [default: 0.01]')
        

        self.cfgs = self.parser.parse_args()
        
        self.data_dir = 'demo'
        self.z_scale_factor = 0.1 
        self.num_point = 1024
        self.return_dict=True


    def get_net(self):
        # Init the model
        net = GraspNet(input_feature_dim=0, num_view=self.cfgs.num_view, num_angle=12, num_depth=4,
                cylinder_radius=0.05, hmin=-0.02, hmax_list=[0.01,0.02,0.03,0.04], is_training=False)
        device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
        net.to(device)
        # Load checkpoint
        checkpoint = torch.load(self.cfgs.checkpoint_path)
        net.load_state_dict(checkpoint['model_state_dict'])
        start_epoch = checkpoint['epoch']
        print("-> loaded checkpoint %s (epoch: %d)"%(self.cfgs.checkpoint_path, start_epoch))
        # set model to eval mode
        net.eval()
        return net

    def load_pcd_and_sample(self, pcd):
        # 加载 PCD 点云
        # cloud = o3d.io.read_point_cloud(pcd)
        cloud = pcd
        # 提取 numpy 数组
        points = np.asarray(cloud.points)  # [N, 3]
        colors = np.asarray(cloud.colors)  # [N, 3]

        # print(colors)
        # print(colors.shape[0], points.shape[0])
        # 检查是否有颜色
        if colors.shape[0] != points.shape[0]:
            print("[WARN] Color channels mismatch or missing. Using zeros.")
            colors = np.zeros_like(points)

        # 假设 points 是 (N, 3)
        points_center = np.mean(points, axis=0)  # 计算所有点的中心
        # print("点云中心坐标:", points_center)

        # 设置你想要保留的区域大小，比如在中心附近 ±范围
        crop_range = 0.2  # 单位是米，可以改为你想要的

        # 构建一个掩码，筛选在这个范围内的点
        mask = np.all(np.abs(points - points_center) < crop_range, axis=1)

        # 筛选点和颜色
        points = points[mask]
        colors = colors[mask]

        # print("裁剪后点数:", points.shape, colors.shape)

        min_bound = points_center - crop_range
        max_bound = points_center + crop_range


        # === 创建 AABB（Axis Aligned Bounding Box）框 ===
        aabb = o3d.geometry.AxisAlignedBoundingBox(min_bound=min_bound, max_bound=max_bound)
        aabb.color = (1, 0, 0)  # 红色框

        # 采样固定数量点
        if len(points) >= self.num_point:
            # print(">>>>>>>>.")
            idxs = np.random.choice(len(points), self.num_point, replace=False)
            # print(idxs)
        else:
            idx1 = np.arange(len(points))
            idx2 = np.random.choice(len(points), self.num_point - len(points), replace=True)
            idxs = np.concatenate([idx1, idx2], axis=0)

        sampled_points = points[idxs]
        # print(sampled_points)
        sampled_colors = colors[idxs]
        # print(sampled_colors)

        # 转换为 PyTorch Tensor，添加 batch 维度
        cloud_tensor = torch.from_numpy(sampled_points[np.newaxis, ...].astype(np.float32))
        device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
        cloud_tensor = cloud_tensor.to(device)

        if self.return_dict:
            end_points = {
                'point_clouds': cloud_tensor,
                'cloud_colors': sampled_colors
            }
            # print(end_points)
            return end_points, cloud, aabb
        else:
            return cloud_tensor, sampled_colors, cloud
        
    def get_grasps(self, net, end_points):
        # Forward pass
        with torch.no_grad():
            end_points = net(end_points)
            grasp_preds = pred_decode(end_points)
        gg_array = grasp_preds[0].detach().cpu().numpy()
        gg = GraspGroup(gg_array)
        return gg

    def collision_detection(self, gg, cloud):
        mfcdetector = ModelFreeCollisionDetector(cloud, voxel_size=self.cfgs.voxel_size)
        collision_mask = mfcdetector.detect(gg, approach_dist=0.05, collision_thresh=self.cfgs.collision_thresh)
        gg = gg[~collision_mask]
        # o3d.visualization.draw_geometries([cloud])
        return gg

    def vis_grasps(self, gg, cloud, aabb, graspnum):
        gg.nms()
        gg.sort_by_score(reverse=True)
        gg_result = gg[:graspnum]
        grippers = gg_result.to_open3d_geometry_list()
        # 创建相机坐标系（单位长度是0.1，你可以根据需要调整大小）
        coordinate_frame = o3d.geometry.TriangleMesh.create_coordinate_frame(size=0.1, origin=[0, 0, 0])

        o3d.visualization.draw_geometries([cloud, *grippers, aabb, coordinate_frame])

        return gg_result
    
    def demo(self, pcd, graspnum):
        net = self.get_net()
        end_points, cloud, aabb = self.load_pcd_and_sample(pcd)
        gg = self.get_grasps(net, end_points)
        if self.cfgs.collision_thresh > 0:
            gg = self.collision_detection(gg, np.array(cloud.points))
        gg_result = self.vis_grasps(gg, cloud, aabb, graspnum)
        return gg_result


    # def demo(self, pcd_path):
    #     net = self.get_net()
    #     end_points, cloud, aabb = self.load_pcd_and_sample(pcd_path)
    #     gg = self.get_grasps(net, end_points)
    #     if self.cfgs.collision_thresh > 0:
    #         gg = self.collision_detection(gg, np.array(cloud.points))
    #     self.vis_grasps(gg, cloud, aabb)

def printer():
    print("it is successful")

# if __name__=='__main__':
#     # data_dir = 'doc/example_data'
#     pcd_path = 'demo/point_cloud.pcd'
#     threading.Thread(target=printer, daemon=True).start()
#     driver = GraspNetDriver()
#     gg_result = driver.demo(pcd_path, 1)



    


    