import pickle
import sys
import copy
import rospy
import moveit_commander
import geometry_msgs.msg
import numpy as np
from scipy.spatial.transform import Rotation as R
from math import pi, fabs

def pose_msg_to_matrix(pose_msg):
    pose_matrix = np.zeros((4, 4))
    pose_matrix[0:3, 0:3] = R.from_quat([pose_msg.orientation.x, pose_msg.orientation.y, pose_msg.orientation.z, pose_msg.orientation.w]).as_matrix()
    pose_matrix[0:3, 3] = [pose_msg.position.x, pose_msg.position.y, pose_msg.position.z]
    pose_matrix[3, 3] = 1.0
    return pose_matrix

def matrix_to_pose_msg(pose_matrix):
    pose_msg = geometry_msgs.msg.Pose()
    pose_msg.position.x, pose_msg.position.y, pose_msg.position.z = pose_matrix[0, 3], pose_matrix[1, 3], pose_matrix[2, 3]
    rot_quat = R.from_matrix(pose_matrix[0:3, 0:3]).as_quat()
    pose_msg.orientation.x, pose_msg.orientation.y, pose_msg.orientation.z, pose_msg.orientation.w = rot_quat
    return pose_msg

class BehaviorDemo(object):
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

    def get_robot_states(self):
        return self.move_group.get_current_joint_values(), self.move_group.get_current_pose().pose
    
    def act(self, pose_trans, interactive=False):
        joint_state, eef_pose = self.get_robot_states()
        current_pose = pose_msg_to_matrix(eef_pose)
        target_pose = pose_trans @ current_pose
        pose_msg = matrix_to_pose_msg(target_pose)
        
        self.move_group.set_joint_value_target(pose_msg, True)
        success, plan, _, _ = self.move_group.plan()
        if success:
            self.move_group.execute(plan, wait=True)
        self.move_group.stop()
        self.move_group.clear_pose_targets()
        return success

    def post_act(self, action, delta):
        if action == 'open': return self.open_gripper()
        if action == 'close': return self.close_gripper()
        
        if action == 'move_down': self.move_group.shift_pose_target(2, -delta, self.eef_link)
        elif action == 'move_up': self.move_group.shift_pose_target(2, delta, self.eef_link)
        elif action == 'move_left': self.move_group.shift_pose_target(0, delta, self.eef_link)
        elif action == 'move_right': self.move_group.shift_pose_target(0, -delta, self.eef_link)
        elif action == 'forward': self.move_group.shift_pose_target(1, delta, self.eef_link)
        elif action == 'backward': self.move_group.shift_pose_target(1, -delta, self.eef_link)
        
        plan = self.move_group.go(wait=True)
        self.move_group.stop()
        self.move_group.clear_pose_targets()
        return plan

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
