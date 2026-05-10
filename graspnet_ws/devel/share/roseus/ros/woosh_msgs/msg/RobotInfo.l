;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::RobotInfo)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'RobotInfo (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::ROBOTINFO")
  (make-package "WOOSH_MSGS::ROBOTINFO"))

(in-package "ROS")
;;//! \htmlinclude RobotInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass woosh_msgs::RobotInfo
  :super ros::object
  :slots (_length _width _laserNum _cameraNum _beaconPose ))

(defmethod woosh_msgs::RobotInfo
  (:init
   (&key
    ((:length __length) 0.0)
    ((:width __width) 0.0)
    ((:laserNum __laserNum) 0)
    ((:cameraNum __cameraNum) 0)
    ((:beaconPose __beaconPose) ())
    )
   (send-super :init)
   (setq _length (float __length))
   (setq _width (float __width))
   (setq _laserNum (round __laserNum))
   (setq _cameraNum (round __cameraNum))
   (setq _beaconPose __beaconPose)
   self)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:laserNum
   (&optional __laserNum)
   (if __laserNum (setq _laserNum __laserNum)) _laserNum)
  (:cameraNum
   (&optional __cameraNum)
   (if __cameraNum (setq _cameraNum __cameraNum)) _cameraNum)
  (:beaconPose
   (&rest __beaconPose)
   (if (keywordp (car __beaconPose))
       (send* _beaconPose __beaconPose)
     (progn
       (if __beaconPose (setq _beaconPose (car __beaconPose)))
       _beaconPose)))
  (:serialization-length
   ()
   (+
    ;; float32 _length
    4
    ;; float32 _width
    4
    ;; uint8 _laserNum
    1
    ;; uint8 _cameraNum
    1
    ;; geometry_msgs/Pose[] _beaconPose
    (apply #'+ (send-all _beaconPose :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _laserNum
       (write-byte _laserNum s)
     ;; uint8 _cameraNum
       (write-byte _cameraNum s)
     ;; geometry_msgs/Pose[] _beaconPose
     (write-long (length _beaconPose) s)
     (dolist (elem _beaconPose)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _laserNum
     (setq _laserNum (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cameraNum
     (setq _cameraNum (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Pose[] _beaconPose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _beaconPose (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _beaconPose)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get woosh_msgs::RobotInfo :md5sum-) "b7a46e6518a49c07799e15858569507b")
(setf (get woosh_msgs::RobotInfo :datatype-) "woosh_msgs/RobotInfo")
(setf (get woosh_msgs::RobotInfo :definition-)
      "#Header header
float32 length
float32 width
uint8 laserNum
uint8 cameraNum
geometry_msgs/Pose[] beaconPose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :woosh_msgs/RobotInfo "b7a46e6518a49c07799e15858569507b")


