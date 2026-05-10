;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::InitPose)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'InitPose (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::INITPOSE")
  (make-package "WOOSH_MSGS::INITPOSE"))
(unless (find-package "WOOSH_MSGS::INITPOSEREQUEST")
  (make-package "WOOSH_MSGS::INITPOSEREQUEST"))
(unless (find-package "WOOSH_MSGS::INITPOSERESPONSE")
  (make-package "WOOSH_MSGS::INITPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass woosh_msgs::InitPoseRequest
  :super ros::object
  :slots (_initial_pose ))

(defmethod woosh_msgs::InitPoseRequest
  (:init
   (&key
    ((:initial_pose __initial_pose) (instance geometry_msgs::PoseWithCovarianceStamped :init))
    )
   (send-super :init)
   (setq _initial_pose __initial_pose)
   self)
  (:initial_pose
   (&rest __initial_pose)
   (if (keywordp (car __initial_pose))
       (send* _initial_pose __initial_pose)
     (progn
       (if __initial_pose (setq _initial_pose (car __initial_pose)))
       _initial_pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseWithCovarianceStamped _initial_pose
    (send _initial_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseWithCovarianceStamped _initial_pose
       (send _initial_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseWithCovarianceStamped _initial_pose
     (send _initial_pose :deserialize buf ptr-) (incf ptr- (send _initial_pose :serialization-length))
   ;;
   self)
  )

(defclass woosh_msgs::InitPoseResponse
  :super ros::object
  :slots (_success ))

(defmethod woosh_msgs::InitPoseResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass woosh_msgs::InitPose
  :super ros::object
  :slots ())

(setf (get woosh_msgs::InitPose :md5sum-) "d85ac5803be8daa00e52d453ae42eb7d")
(setf (get woosh_msgs::InitPose :datatype-) "woosh_msgs/InitPose")
(setf (get woosh_msgs::InitPose :request) woosh_msgs::InitPoseRequest)
(setf (get woosh_msgs::InitPose :response) woosh_msgs::InitPoseResponse)

(defmethod woosh_msgs::InitPoseRequest
  (:response () (instance woosh_msgs::InitPoseResponse :init)))

(setf (get woosh_msgs::InitPoseRequest :md5sum-) "d85ac5803be8daa00e52d453ae42eb7d")
(setf (get woosh_msgs::InitPoseRequest :datatype-) "woosh_msgs/InitPoseRequest")
(setf (get woosh_msgs::InitPoseRequest :definition-)
      "geometry_msgs/PoseWithCovarianceStamped initial_pose

================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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
---
bool success

")

(setf (get woosh_msgs::InitPoseResponse :md5sum-) "d85ac5803be8daa00e52d453ae42eb7d")
(setf (get woosh_msgs::InitPoseResponse :datatype-) "woosh_msgs/InitPoseResponse")
(setf (get woosh_msgs::InitPoseResponse :definition-)
      "geometry_msgs/PoseWithCovarianceStamped initial_pose

================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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
---
bool success

")



(provide :woosh_msgs/InitPose "d85ac5803be8daa00e52d453ae42eb7d")


