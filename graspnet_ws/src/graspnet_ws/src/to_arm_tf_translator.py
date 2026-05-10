import numpy as np
from scipy.spatial.transform import Rotation as R
import geometry_msgs.msg
import rospy
import tf2_ros
import geometry_msgs.msg
import tf.transformations as tft
# import tf2_geometry_msgs  # 用于转换geometry_msgs.msg.TransformStamped为tf2格式


class ToArmTfTranslator:

    def __init__(self):
        self.base_frame = "base_link"
        self.color_optical_frame = "d455i_link"
        self.offset = 0.2  # for gripper

    def get_transform(self):
        rospy.init_node('tf_listener', anonymous=True)

        tf_buffer = tf2_ros.Buffer()
        tf2_ros.TransformListener(tf_buffer)

        try:
            # 等待并获取变换（阻塞等待最多 5 秒）
            trans = tf_buffer.lookup_transform(self.base_frame, self.color_optical_frame, rospy.Time(0), rospy.Duration(5.0))

            # 提取平移信息
            translation = trans.transform.translation
            t = [translation.x, translation.y, translation.z]

            # 提取旋转（四元数）
            rotation = trans.transform.rotation
            q = [rotation.x, rotation.y, rotation.z, rotation.w]

            print(f"Translation (t): {t}")
            print(f"Rotation (quaternion q): {q}")

            self.t = t
            self.r = q
            # return t, q

        except Exception as e:
            rospy.logerr(f"Failed to get transform: {e}")
            return None, None


    def pose_calculater(self, target_in_camera_translation, target_in_camera_rotation_matrix):
        # 1. 定义相机到基座的转换关系（平移向量 + 旋转四元数）
        # 假设你已经有了相机到基座的转换关系 (translation 和 rotation_quat)


        print(self.t, self.r)

        camera_to_base_translation = self.t
        camera_to_base_rotation_quat = self.r

        # 将旋转四元数转换为旋转矩阵
        camera_to_base_rotation = R.from_quat(camera_to_base_rotation_quat).as_matrix()

        # 创建相机到基座的变换矩阵 T_camera_to_base
        T_camera_to_base = np.eye(4)
        T_camera_to_base[:3, :3] = camera_to_base_rotation
        T_camera_to_base[:3, 3] = camera_to_base_translation

    #     target_in_camera_translation = [-0.05681317, -0.11369154 , 0.52900004]

    #     target_in_camera_rotation_matrix = np.array([[ 0.43868852 ,-0.8949008  ,-0.08188382],
    # [ 0.47420946,  0.30793184, -0.8248051 ],
    # [ 0.7633333 ,  0.32300243 , 0.5594566 ]])


        # 创建目标位姿的矩阵 T_target_in_camera
        T_target_in_camera = np.eye(4)
        T_target_in_camera[:3, :3] = target_in_camera_rotation_matrix
        T_target_in_camera[:3, 3] = target_in_camera_translation

        # 4. 将目标位姿从相机坐标系转换到基座坐标系
        T_target_in_base = T_camera_to_base @ T_target_in_camera

        print("目标位姿 T_target_in_base（基座坐标系下）：")
        print(T_target_in_base)

        # 5. 提取目标位置和旋转四元数
        position = T_target_in_base[:3, 3]
        rotation_matrix = T_target_in_base[:3, :3]

        # 6. 将旋转矩阵转换为四元数
        rotation_quat_base = R.from_matrix(rotation_matrix).as_quat()

        return position, rotation_quat_base

    def move_pose_along_local_z(self, xyz, quat):
        # 1. 四元数转旋转矩阵
        rot = R.from_quat(quat)  # xyzw 格式
        rot_matrix = rot.as_matrix()  # 3x3 旋转矩阵

        # 2. 提取局部 Z 轴方向（在基坐标下）
        z_axis = rot_matrix[:, 2]

        # 3. 平移位置
        new_xyz = np.array(xyz) - self.offset * z_axis

        # 4. 姿态不变
        new_quat = quat

        print(f"new_xyz = {new_xyz}")

        # return new_xyz.tolist(), new_quat

    def static_tf_publisher(self, target_in_camera_translation, target_in_camera_rotation_matrix):
        # rospy.init_node('static_tf_publisher')

        # 创建 TF 广播器
        broadcaster = tf2_ros.StaticTransformBroadcaster()

        # 创建静态变换消息
        static_transform = geometry_msgs.msg.TransformStamped()
        
        # 填充静态变换数据
        static_transform.header.stamp = rospy.Time.now()  # 设置当前时间戳
        static_transform.header.frame_id = "base_link"    # 父坐标系
        static_transform.child_frame_id = "goal"  # 子坐标系
        
        position, rotation_quat_base = self.pose_calculater(target_in_camera_translation, target_in_camera_rotation_matrix)

        xt, yt ,zt = position[:3]
        xr, yr, zr, wr = rotation_quat_base[:4]
        # print(xt, yt ,zt)
        # print(xr, yr, zr, wr)
        static_transform.transform.translation.x = xt
        static_transform.transform.translation.y = yt
        static_transform.transform.translation.z = zt
        static_transform.transform.rotation.x =  xr
        static_transform.transform.rotation.y =  yr
        static_transform.transform.rotation.z =  zr
        static_transform.transform.rotation.w = wr

        qx90 = [0.7071, 0, 0, 0.7071]  # 四元数表示绕 X 轴旋转 90°
        qy90 = [0, 0.7071, 0, 0.7071]  # 四元数表示绕 Y 轴旋转 90°
        # qz180 =  [0, 0, 0.7071, 0.7071]

        rotated_x = tft.quaternion_multiply((xr, yr, zr, wr), qx90)
        rotated_y = tft.quaternion_multiply(rotated_x, qy90)
        # rotated_z = tft.quaternion_multiply(rotated_y, qz180)

        static_transform.transform.rotation.x = rotated_y[0]
        static_transform.transform.rotation.y = rotated_y[1]
        static_transform.transform.rotation.z = rotated_y[2]
        static_transform.transform.rotation.w = rotated_y[3]

        xr_new, yr_new, zr_new, wr_new = rotated_y[:4]
        print(f"t = [{xt}, {yt}, {zt}]")
        print(f"r = [{xr_new}, {yr_new}, {zr_new}, {wr_new}]")
        xyz = [xt, yt, zt]
        quat = [xr_new, yr_new, zr_new, wr_new]

        new_xyz, q = self.move_pose_along_local_z(xyz, quat)
        
        # new_xyz.tolist()

        static_transform.transform.translation.x = new_xyz[0]
        static_transform.transform.translation.y = new_xyz[1]
        static_transform.transform.translation.z = new_xyz[2]


        # 发布静态 TF
        broadcaster.sendTransform(static_transform)

        rospy.spin()

# if __name__ == '__main__':
#     driver = ToArmTfTranslator()

#     driver.get_transform()
#     target_in_camera_translation = [-0.05681317, -0.11369154 , 0.52900004]

#     target_in_camera_rotation_matrix = np.array([[ 0.43868852 ,-0.8949008  ,-0.08188382],
#                                         [ 0.47420946,  0.30793184, -0.8248051 ],
#                                         [ 0.7633333 ,  0.32300243 , 0.5594566 ]])

#     driver.static_tf_publisher(target_in_camera_translation, target_in_camera_rotation_matrix)

