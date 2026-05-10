#!/usr/bin/env python3
import rospy
from std_srvs.srv import Trigger


class gripperDriver:
    def __init__(self):
        rospy.init_node("gripper_grasp_client")

    def call_gripper_grasp(self):
        rospy.wait_for_service('gripper_grasp')
        try:
            trigger_grasp = rospy.ServiceProxy('gripper_grasp', Trigger)
            resp = trigger_grasp()
            if resp.success:
                rospy.loginfo("Gripper triggered successfully: " + resp.message)
            else:
                rospy.logwarn("Gripper trigger failed: " + resp.message)
        except rospy.ServiceException as e:
            rospy.logerr("Service call failed: %s" % e)


# if __name__ == "__main__":
#     gripperDriver = gripperDriver()
#     gripperDriver.call_gripper_grasp()
