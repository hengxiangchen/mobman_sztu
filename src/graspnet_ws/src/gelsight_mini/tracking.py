import copy
import find_marker
import numpy as np
import cv2
import time
import marker_detection
import sys
import setting
import os
from std_srvs.srv import Empty  # 使用 Empty 类型作为服务请求

from geometry_msgs.msg import WrenchStamped

import marker_displacement
import rospy
from geometry_msgs.msg import Wrench
from std_msgs.msg import Bool

class gelsightDriver:
    def __init__(self):
        
        self.imgw = 320
        self.imgh = 240
        
        if video_recording:
            self.is_recording = True
            self.file_generator()
            self.out_recording()
        self.ros_init()

    def ros_init(self):
        rospy.init_node('gelsight', anonymous=True)
        self.pub = rospy.Publisher('gelsight_ft', WrenchStamped, queue_size=10)
        
        self.marker_wrench = WrenchStamped()
        self.marker_wrench.wrench.force.x = 0
        self.marker_wrench.wrench.force.y = 0
        self.marker_wrench.wrench.torque.x = 0
        self.marker_wrench.wrench.torque.y = 0
        self.marker_wrench.wrench.torque.z = 0


    def out_recording(self):
        self.fourcc = cv2.VideoWriter_fourcc(*'XVID')
        self.out = cv2.VideoWriter(self.filename, self.fourcc, 25, (320, 240), isColor=True)
        print("starting recording!--------------------------")

    def file_generator(self):
        self.file_count = 1
        self.filename = f"{os.getcwd()}/tactile_videos/result_{self.file_count}.avi"
        # 检查文件是否存在，如果存在则递增计数器
        while os.path.exists(self.filename):
            self.file_count += 1
            self.filename = f"{os.getcwd()}/tactile_videos/result_{self.file_count}.avi"
        # call video recording ending flag 创建一个服务，等待外部请求来停止录制
        rospy.Service('/my_gen3/stop_recording', Empty, self.stop_recording_callback)

    def find_cameras(self):
        index = 0
        cameras = []
        # Windows 系统调用特定函数
        if os.name == 'nt':
            return find_cameras_windows()
        while index < 10:  # 扫描 0-9 号摄像头
            cap = cv2.VideoCapture(index)

            if cap.isOpened():  # 确保摄像头能正确打开
                ret, _ = cap.read()
                if ret:
                    # 检查是否是 Arducam 或 Mini 设备
                    command = f'v4l2-ctl -d {index} --info'
                    device_info = os.popen(command).read()
                    if 'Arducam' in device_info or 'Mini' in device_info:
                        cameras.append(index)
                cap.release()
            index += 1
        return cameras

    def find_cameras_windows(self):
        # checks the first 10 indexes.
        index = 0
        arr = []
        idVendor = 0xC45
        idProduct = 0x636D
        import usb.core
        import usb.backend.libusb1
        backend = usb.backend.libusb1.get_backend(
            find_library=lambda x: "libusb_win/libusb-1.0.dll"
        )
        dev = usb.core.find(backend=backend, find_all=True)
        # loop through devices, printing vendor and product ids in decimal and hex
        for cfg in dev:
            #print('Decimal VendorID=' + hex(cfg.idVendor) + ' & ProductID=' + hex(cfg.idProduct) + '\n')
            if cfg.idVendor == idVendor and cfg.idProduct == idProduct:
                arr.append(index)
            index += 1

        return arr


    def resize_crop_mini(self, img):
        # resize, crop and resize back
        img = cv2.resize(img, (895, 672))  # size suggested by janos to maintain aspect ratio
        border_size_x, border_size_y = int(img.shape[0] * (1 / 7)), int(np.floor(img.shape[1] * (1 / 7)))  # remove 1/7th of border from each size
        img = img[border_size_x:img.shape[0] - border_size_x, border_size_y:img.shape[1] - border_size_y]
        img = img[:, :-1]  # remove last column to get a popular image resolution
        img = cv2.resize(img, (self.imgw, self.imgh))  # final resize for 3d
        return img

    def main(self):
    
        cameras = self.find_cameras()
        cap = cv2.VideoCapture(cameras[0])

        WHILE_COND = cap.isOpened()

        fps_cap = cap.get(cv2.CAP_PROP_FPS)
        print(f"Captured FPS: {fps_cap}")


        # set the format into MJPG in the FourCC format
        cap.set(cv2.CAP_PROP_FOURCC,cv2.VideoWriter_fourcc('M','J','P','G'))

        # Resize scale for faster image processing
        setting.init()

        frame0 = None

        counter = 0

        while 1:

            if counter<50:
                ret, frame = cap.read()
                # print ('flush black imgs')

                if counter == 48:
                    ret, frame = cap.read()
                    ##########################
                    frame = self.resize_crop_mini(frame)
                    ### find marker masks
                    mask = marker_detection.find_marker(frame)
                    ### find marker centers
                    mc = marker_detection.marker_center(mask, frame)
                    break

                counter += 1

        counter = 0

        mccopy = mc
        mc_sorted1 = mc[mc[:,0].argsort()]
        mc1 = mc_sorted1[:setting.N_]
        mc1 = mc1[mc1[:,1].argsort()]

        mc_sorted2 = mc[mc[:,1].argsort()]
        mc2 = mc_sorted2[:setting.M_]
        mc2 = mc2[mc2[:,0].argsort()]


        """
        N_, M_: the row and column of the marker array
        x0_, y0_: the coordinate of upper-left marker
        dx_, dy_: the horizontal and vertical interval between adjacent markers
        """
        N_= setting.N_
        M_= setting.M_
        fps_ = setting.fps_
        x0_ = np.round(mc1[0][0])
        y0_ = np.round(mc1[0][1])
        dx_ = mc2[1, 0] - mc2[0, 0]
        dy_ = mc1[1, 1] - mc1[0, 1]

        m = find_marker.Matching(N_,M_,fps_,x0_,y0_,dx_,dy_)

        frameno = 0
        try:
            while (WHILE_COND):

                ret, frame = cap.read()
                # frame_out = frame
                if not(ret):
                    break

                frame = self.resize_crop_mini(frame)
                if video_recording:
                    frame_out = copy.deepcopy(frame)
                # raw_img = copy.deepcopy(frame)

                ''' EXTRINSIC calibration ... 
                ... the order of points [x_i,y_i] | i=[1,2,3,4], are same 
                as they appear in plt.imshow() image window. Put them in 
                clockwise order starting from the topleft corner'''

                ### find marker masks
                mask = marker_detection.find_marker(frame)

                ### find marker centers
                mc = marker_detection.marker_center(mask, frame)


                ### matching init
                m.init(mc)

                ### matching
                m.run()
                # print(time.time() - tm)

                ### matching result
                """
                output: (Ox, Oy, Cx, Cy, Occupied) = flow
                    Ox, Oy: N*M matrix, the x and y coordinate of each marker at frame 0
                    Cx, Cy: N*M matrix, the x and y coordinate of each marker at current frame
                    Occupied: N*M matrix, the index of the marker at each position, -1 means inferred. 
                        e.g. Occupied[i][j] = k, meaning the marker mc[k] lies in row i, column j.
                """
                flow = m.get_flow()

                if frame0 is None:
                    frame0 = frame.copy()
                    frame0 = cv2.GaussianBlur(frame0, (int(63), int(63)), 0)

                # diff = (frame * 1.0 - frame0) * 4 + 127
                # trim(diff)

                # # draw flow
                force_official = marker_detection.draw_flow(frame, flow)

                frameno = frameno + 1


                #mask_img = mask.astype(frame[0].dtype)
                mask_img = np.asarray(mask)
                # mask_img = cv2.merge((mask_img, mask_img, mask_img))

                bigframe = cv2.resize(frame, (frame.shape[1]*3, frame.shape[0]*3))
                cv2.imshow('frame', bigframe)
                bigmask = cv2.resize(mask_img*255, (mask_img.shape[1]*3, mask_img.shape[0]*3))
                cv2.imshow('mask', bigmask)


                z_dist = marker_displacement.avg_z_displacement(flow)
                
                z_torque = marker_displacement.avg_z_curl(flow)
                # print(f"Torque Z: {z_torque:.4f}")


                self.pub.publish(self.marker_wrench)

                if video_recording:
                    if self.is_recording:
                        self.out.write(frame_out)
                        force_official_out = force_official
                    else:
                        force_official_out = -1.0
                else:
                    force_official_out = -2.0

                # print(f"Force: {force_official:.4f}")
                self.marker_wrench.wrench.force.z = force_official
                self.marker_wrench.wrench.torque.z = z_torque
                self.marker_wrench.wrench.force.x = force_official_out
                self.marker_wrench.header.stamp = rospy.Time.now()


                if cv2.waitKey(1) & 0xFF == ord('q'):
                    break
            
                time.sleep(0.04)

        except KeyboardInterrupt:
            print('Interrupted!')

        ### release the capture and other stuff
        cap.release()  

        cv2.destroyAllWindows()

    # 服务回调函数
    def stop_recording_callback(self, req):
        print("Recording")
        # global out, is_recording
        if self.out:  # 如果 VideoWriter 对象是有效的
            self.out.release()  # 停止录制并保存文件
            self.is_recording = False
            rospy.loginfo(f"Recording stopped. Recording to video {self.filename}")
        return []

if __name__ == "__main__":
    video_recording = True
    gelsightDriver = gelsightDriver()
    gelsightDriver.main()






