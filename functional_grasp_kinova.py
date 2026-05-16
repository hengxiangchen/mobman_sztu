import sys
import copy
import rospy
import moveit_commander
import geometry_msgs.msg
import numpy as np
from scipy.spatial.transform import Rotation as R

GRIPPER_HEIGHT = 0.10
GRASP_DEPTH = 0.0
Z_OFFSET = 0.0

class GraspDemo(object):
    def __init__(self) -> None:
        super().__init__()
        self.ns = "/my_gen3"
        self.robot_desc = "my_gen3/robot_description"
        
        self.robot = moveit_commander.RobotCommander(self.robot_desc, ns=self.ns)
        self.scene = moveit_commander.PlanningSceneInterface(ns=self.ns)
        self.move_group = moveit_commander.MoveGroupCommander("arm", robot_description=self.robot_desc, ns=self.ns)

        try:
            self.gripper_group = moveit_commander.MoveGroupCommander("gripper", robot_description=self.robot_desc, ns=self.ns)
            self.has_gripper = True
        except:
            self.has_gripper = False

        self.eef_link = self.move_group.get_end_effector_link()
        self.base_link = "base_link"

    def graspnet_to_ros(self, rot_mat, translation):
        mu = np.sin(np.pi/4)
        mat_graspnet_to_ros = np.array([[0.0, 0.0, 1.0], [-mu, -mu, 0.0], [mu, -mu, 0.0]])
        rot_mat = np.dot(rot_mat, mat_graspnet_to_ros)
        rot_quat = R.from_matrix(rot_mat).as_quat()
        
        grasp_pose = geometry_msgs.msg.Pose()
        grasp_pose.orientation.x, grasp_pose.orientation.y, grasp_pose.orientation.z, grasp_pose.orientation.w = rot_quat
        translation -= (GRIPPER_HEIGHT - GRASP_DEPTH) * rot_mat[:,2]
        grasp_pose.position.x, grasp_pose.position.y, grasp_pose.position.z = translation[0], translation[1], translation[2] + Z_OFFSET
        
        pre_grasp_pose = copy.deepcopy(grasp_pose)
        pre_grasp_pose.position.x -= rot_mat[0,2] * 0.115
        pre_grasp_pose.position.y -= rot_mat[1,2] * 0.115
        pre_grasp_pose.position.z -= rot_mat[2,2] * 0.115
        
        post_grasp_retreat = copy.deepcopy(grasp_pose)
        post_grasp_retreat.position.z += 0.10
        return pre_grasp_pose, grasp_pose, post_grasp_retreat

    def grasp(self, grasp_pose):
        rotation = grasp_pose[:3,:3]
        translation = grasp_pose[:3,3]
        pre_grasp, grasp, post_grasp = self.graspnet_to_ros(rotation, translation)

        self.move_group.set_max_velocity_scaling_factor(0.1)
        
        # 1. pre grasp
        self.move_group.set_pose_target(pre_grasp)
        self.move_group.go(wait=True)
        self.move_group.stop()
        
        # 2. open gripper
        self.open_gripper()
        
        # 3. grasp
        self.move_group.set_joint_value_target(grasp, True)
        self.move_group.go(wait=True)
        self.move_group.stop()
        
        # 4. close gripper
        self.close_gripper()
        
        # 5. retreat
        self.move_group.set_pose_target(post_grasp)
        self.move_group.go(wait=True)
        self.move_group.stop()
        self.move_group.clear_pose_targets()

    def open_gripper(self):
        if not self.has_gripper: return False
        try:
            self.gripper_group.set_named_target("opened")
            return self.gripper_group.go(wait=True)
        except: return False
        
    def close_gripper(self):
        if not self.has_gripper: return False
        try:
            self.gripper_group.set_named_target("closed")
            return self.gripper_group.go(wait=True)
        except: return False
        
    def go_home(self):
        self.move_group.set_named_target("home")
        return self.move_group.go(wait=True)
