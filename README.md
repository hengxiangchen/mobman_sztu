# 移动操作机器人关键技术研究 | Key Technology Research of Mobile Manipulation Robots

## 介绍
本工作构建了面向室内环境的移动操作机器人（MobMan）平台的软件系统，实现集自主导航、目标感知与抓取于一体。MobMan平台整合了移动底盘、机械臂、RGB-D相机和触觉传感器。


## 总体方案
<img width="396" height="215" alt="image" src="https://github.com/user-attachments/assets/9b2a686e-53ed-42e2-9176-3286c30da6a3" />


## 环境搭建
```bash
mkdir -p ~/catkin_ws/src
```
1. 相机 [realsense d455i](https://github.com/realsenseai/realsense-ros/tree/ros1-legacy)
2. 机械臂 [kinova-gen3](https://github.com/Kinovarobotics/ros_kortex)
3. 底盘 [SAMiR®-200/300](https://seafile.wsrobotics.com/d/9fee6b1fda3b4403919c/)
4. 夹爪 [CTAG2F90-C](https://github.com/hengxiangchen/zhixing_CTAG2F90-C)


## 内参标定

```bash
source /opt/ros/noetic/setup.bash
rosrun camera_calibration cameracalibrator.py --size 8x6 --square 0.108 image:=/d455i/color/image_raw camera:=/d455i/color/camera_info
```
<img width="193" height="118" alt="image" src="https://github.com/user-attachments/assets/1f4ac729-a914-42fd-a802-daecca690fd0" />
<img width="196" height="110" alt="image" src="https://github.com/user-attachments/assets/02b721d2-f2df-4566-bb13-c3fe5c70d76d" />


## 外参标定
```bash
git clone https://github.com/hengxiangchen/my_graduate_design.git
cd my_graduate_design
catkin build
```

```bash
source devel/setup.bash
roslaunch aruco_ros single_d455i.launch
```
```python
<launch>
    <arg name="markerId"        default="30"/>
    <arg name="markerSize"      default="0.064"/>    <!-- in m -->
    <arg name="eye"             default="right"/>
    <arg name="marker_frame"    default="camera_marker"/>
    <arg name="ref_frame"       default="d455i_link"/>  <!-- leave empty and the pose will be published wrt param parent_name -->
    <arg name="corner_refinement" default="LINES"/>  <!-- NONE, HARRIS, LINES, SUBPIX -->
    <node pkg="aruco_ros" type="single" name="aruco_single">
        <remap from="/camera_info" to="/d455i/color/camera_info" />
        <remap from="/image" to="/d455i/color/image_raw" />
        <param name="image_is_rectified" value="True"/>
        <param name="marker_size"        value="$(arg markerSize)"/>
        <param name="marker_id"          value="$(arg markerId)"/>
        <param name="reference_frame"    value="$(arg ref_frame)"/>   <!-- frame in which the marker pose will be refered d455i_color_optical_frame -->
        <param name="camera_frame"       value="d455i_link"/>
        <param name="marker_frame"       value="$(arg marker_frame)" />
        <param name="corner_refinement"  value="$(arg corner_refinement)"/>
    </node>
</launch> 
```

<img width="415" height="234" alt="image" src="https://github.com/user-attachments/assets/ed9c25b5-da81-41f3-90a4-dc6f9a9bb88b" />

```bash
source devel/setup.bash
roslaunch aruco_ros single_d455i.launch
```

```bash
source devel/setup.bash
roslaunch easy_handeye calibrate_kinova_on_arm.launch # OR roslaunch easy_handeye calibrate_kinova_on_arm.launch
```

<img width="415" height="234" alt="image" src="https://github.com/user-attachments/assets/f440ea1c-3775-4ea5-bc91-56845bfbc4c0" />


## 导航
```bash
cd catkin_ws
source devel/setup.bash
roslaunch navigation mapping.launch # save as src/navigation/maps/map.png
```
```bash
cd catkin_ws
source devel/setup.bash
roslaunch navigation navigation.launch
```


## graspnet
<img width="2560" height="1440" alt="Screenshot from 2025-04-13 17-54-02" src="https://github.com/user-attachments/assets/2ceaa771-2c03-4297-aacb-2b2cd801ecc3" />


## yolov8
 
<img width="201" height="151" alt="image" src="https://github.com/user-attachments/assets/b2575e7c-93a8-446a-a97e-277e9d8b51af" />


## force control based on gsmini

<img width="297" height="252" alt="image" src="https://github.com/user-attachments/assets/09531ae6-2ba1-45ee-bb65-0d3bc7ff7c93" />

