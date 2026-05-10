# main.py

from realsense_driver import RealsenseDriver
from graspnet_driver import GraspNetDriver
from to_arm_tf_translator import ToArmTfTranslator
from arm_driver import armDriver
from gripper_driver import gripperDriver
from
import rospy


if __name__ == '__main__':
    debug = False


    chassisDriver = chassisDriver()
    chassisDriver.navigation()

    armDriver = armDriver()
    armDriver.call_arm_move(t, r)

    realsenseDriver = RealsenseDriver()
    pcd = realsenseDriver.generate_pcd_with_rgb(debug)

    gg = []

    graspnum = 1  # maximum is 65

    while True:    
        if pcd is not None:
            graspNetDriver = GraspNetDriver()
            gg = graspNetDriver.demo(pcd, graspnum)
            break
        else:
            pass
    
    # print(type(gg))
    # @property so it is a variable, or it will be gg.translations(), if there are more than 1 result, using gg.translation[${num}]
    print(gg.translations[graspnum-1])

    t = gg.translations[graspnum-1]
    r = gg.rotation_matrices[graspnum-1]

    # print(gg[ graspnum-1 ].translations)


    toArmTfTranslator = ToArmTfTranslator()

    toArmTfTranslator.get_transform()

    toArmTfTranslator.static_tf_publisher(t, r)

    armDriver.call_arm_move(t, r)

    gripperDriver = gripperDriver()
    gripperDriver.call_gripper_grasp()

    # move to the collecting box
    armDriver.call_arm_move(t, r)

    # navigate to the original pose
    chassisDriver.navigation()