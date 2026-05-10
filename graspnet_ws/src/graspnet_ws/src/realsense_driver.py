import numpy as np
import pyrealsense2 as rs
import open3d as o3d
import cv2

class RealsenseDriver:
    def __init__(self):
        # 配置相机
        self.pipeline = rs.pipeline()
        self.config = rs.config()
        self.config.enable_stream(rs.stream.depth, 640, 480, rs.format.z16, 30)
        self.config.enable_stream(rs.stream.color, 640, 480, rs.format.bgr8, 30)

    def get_depth_scale(self):
        """获取深度相机的深度比例"""
        try:
            self.pipeline.start(self.config)
            frames = self.pipeline.wait_for_frames()
            
            depth_sensor = self.pipeline.get_active_profile().get_device().first_depth_sensor()
            depth_scale = depth_sensor.get_depth_scale()
            print("Depth Scale is: ", depth_scale)
            
            return depth_scale
        finally:
            # 确保停止流
            self.pipeline.stop()

    def get_intrinsic(self):
        """获取相机内参"""
        try:
            profile = self.pipeline.start(self.config)
            depth_sensor = profile.get_device().first_depth_sensor()
            depth_scale = depth_sensor.get_depth_scale()
            print("Depth Scale:", depth_scale)

            # 获取深度图和RGB图的内参
            depth_stream = profile.get_stream(rs.stream.depth)
            depth_intrinsics = depth_stream.as_video_stream_profile().get_intrinsics()
            color_stream = profile.get_stream(rs.stream.color)
            color_intrinsics = color_stream.as_video_stream_profile().get_intrinsics()
            
            print("Depth Intrinsics:", depth_intrinsics)
            print("Color Intrinsics:", color_intrinsics)

            return color_intrinsics, depth_intrinsics
        finally:
            self.pipeline.stop()

    def get_align_rgbd(self):
        """获取对齐后的RGB和深度图像"""
        try:
            self.pipeline.start(self.config)
            align_to = rs.stream.color
            align = rs.align(align_to)
            frames = self.pipeline.wait_for_frames()
            aligned_frames = align.process(frames)

            # 获取相机参数
            aligned_profile = aligned_frames.get_profile()
            intrinsics = aligned_profile.as_video_stream_profile().get_intrinsics()
            print("Aligned Intrinsics:", intrinsics)

            # 转换为open3d中的相机参数
            pinhole_camera_intrinsic = o3d.camera.PinholeCameraIntrinsic(
                intrinsics.width, intrinsics.height, 
                intrinsics.fx, intrinsics.fy, 
                intrinsics.ppx, intrinsics.ppy)

            # 获取深度图和RGB图
            depth_frame = aligned_frames.get_depth_frame()
            color_frame = aligned_frames.get_color_frame()
            depth_image = np.asanyarray(depth_frame.get_data())
            color_image = np.asanyarray(color_frame.get_data())
            color_image = cv2.cvtColor(color_image, cv2.COLOR_BGR2RGB)

            return color_image, depth_image
        finally:
            self.pipeline.stop()

    def generate_pcd_with_rgb(self, debug):
        """生成带RGB信息的点云"""
        color_img, depth_img = self.get_align_rgbd()
        color_img = np.array(color_img) / 255.0
        depth_img = np.array(depth_img)

        depth_scale = self.get_depth_scale()
        color_intrinsic, _ = self.get_intrinsic()
        
        height, width = 480, 640
        assert (depth_img.shape[0] == height and depth_img.shape[1] == width)
        
        # 生成点云坐标
        xmap = np.arange(width)
        ymap = np.arange(height)
        xmap, ymap = np.meshgrid(xmap, ymap)
        points_z = depth_img * depth_scale
        points_x = (xmap - color_intrinsic.ppx) * points_z / color_intrinsic.fx
        points_y = (ymap - color_intrinsic.ppy) * points_z / color_intrinsic.fy
        cloud = np.stack([points_x, points_y, points_z], axis=-1)

        # 过滤无效点
        mask = (points_z > 0.05) & (points_z < 0.8)
        cloud = cloud[mask]
        color_img = color_img[mask]

        # 创建点云
        pcd = o3d.geometry.PointCloud()
        pcd.points = o3d.utility.Vector3dVector(cloud)
        pcd.colors = o3d.utility.Vector3dVector(color_img)
        
        # o3d.io.write_point_cloud("point_cloud.pcd", pcd)


        if debug:
            # 创建相机坐标系（单位长度是0.1，你可以根据需要调整大小）
            coordinate_frame = o3d.geometry.TriangleMesh.create_coordinate_frame(size=0.1, origin=[0, 0, 0])

            # 可视化点云和相机坐标系
            o3d.visualization.draw_geometries([pcd, coordinate_frame])     

        print("点云文件加载成功！")
        return pcd


# if __name__ == '__main__':
#     driver = RealsenseDriver()
#     pcd = driver.generate_pcd_with_rgb()
#     # pdc = driver.generate_pcd()