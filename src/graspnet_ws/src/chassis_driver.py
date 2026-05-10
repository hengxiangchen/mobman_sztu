import rospy
from graspnet_ws.srv import ChassisMoveGoal

class chassisDriver:

    def __init__(self):
        rospy.init_node("chassis_move_client")
        self.point = []

    def call_chassis_move(self):
        rospy.wait_for_service('chassis_move')
        try:
            chassisClient = rospy.ServiceProxy("chassis_move", ChassisMoveGoal)
            resp = chassisClient(self.point)
            print("Success:", resp.success)
            print("Message:", resp.message)
        except rospy.ServiceException as e:
            print("Service call failed:", e)



if __name__ == '__main__':

    chassisDriver = chassisDriver()
    chassisDriver.call_chassis_move()

