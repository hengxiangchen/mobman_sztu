#!/usr/bin/env python3
import rospy
from graspnet_ws.srv import ArmMoveGoal


class armDriver:
    def __init__(self):
        rospy.init_node("arm_move_client")

        self.t = [0.12259969, 0.3725598 , 0.25182603]
        self.r = [0.9043488031827664, -0.09048206537936365, -0.14933906150030718, -0.38939147795587664]
    

    def call_arm_move(self, t, r):
        rospy.wait_for_service('arm_move')
        try:
            armClient = rospy.ServiceProxy("arm_move", ArmMoveGoal)
            resp = armClient(t, r)
            print("Success:", resp.success)
            print("Message:", resp.message)
        except rospy.ServiceException as e:
            print("Service call failed:", e)



# if __name__ == "__main__":
#     armDriver = armDriver()
#     armDriver.call_arm_move()




