import os
import numpy as np
import pickle
import sys
import rospy
import moveit_commander

# 确保可以从当前目录导入适配好的类
sys.path.append(os.path.dirname(os.path.abspath(__file__)))

def main(task_dir, transform_path, action_path):
    # 统一初始化 moveit_commander，防止多次初始化导致段错误
    moveit_commander.roscpp_initialize(sys.argv)
    if not rospy.core.is_initialized():
        rospy.init_node('kinova_plan_executor', anonymous=True)

    try:
        from functional_grasp_kinova import GraspDemo
        from behavior_kinova import BehaviorDemo
    except ImportError as e:
        print(f"[错误] 无法导入适配文件: {e}")
        return

    # 1. 执行抓取
    grasp_path = os.path.join(task_dir, "grasp.npy")
    if os.path.exists(grasp_path):
        print(f"[执行] 正在启动抓取器...")
        robot_grasp = GraspDemo()
        # robot_grasp.go_home() # 暂时注释，直接开始抓取
        grasp_pose = np.load(grasp_path)
        robot_grasp.grasp(grasp_pose)
    
    # 2. 执行主要动作 (act)
    if os.path.exists(transform_path):
        print(f"[执行] 正在启动动作行为器...")
        robot_behavior = BehaviorDemo()
        pose_trans = np.load(transform_path)
        robot_behavior.act(pose_trans, interactive=False)

    # 3. 执行后处理动作 (post_act)
    if os.path.exists(action_path):
        print(f"[执行] 正在执行后处理动作...")
        try:
            with open(action_path, 'rb') as f:
                actions = pickle.load(f)
            for action in actions:
                robot_behavior.post_act(action[0], action[1])
        except Exception as e:
            print(f"[错误] 后处理动作失败: {e}")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("task_dir")
    parser.add_argument("transform")
    parser.add_argument("action")
    args = parser.parse_args()
    main(args.task_dir, args.transform, args.action)
