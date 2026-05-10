;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::NavPath)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'NavPath (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::NAVPATH")
  (make-package "WOOSH_MSGS::NAVPATH"))

(in-package "ROS")
;;//! \htmlinclude NavPath.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass woosh_msgs::NavPath
  :super ros::object
  :slots (_path _path_type _path_check_code ))

(defmethod woosh_msgs::NavPath
  (:init
   (&key
    ((:path __path) (instance nav_msgs::Path :init))
    ((:path_type __path_type) 0)
    ((:path_check_code __path_check_code) 0)
    )
   (send-super :init)
   (setq _path __path)
   (setq _path_type (round __path_type))
   (setq _path_check_code (round __path_check_code))
   self)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:path_type
   (&optional __path_type)
   (if __path_type (setq _path_type __path_type)) _path_type)
  (:path_check_code
   (&optional __path_check_code)
   (if __path_check_code (setq _path_check_code __path_check_code)) _path_check_code)
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _path
    (send _path :serialization-length)
    ;; uint32 _path_type
    4
    ;; uint32 _path_check_code
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _path
       (send _path :serialize s)
     ;; uint32 _path_type
       (write-long _path_type s)
     ;; uint32 _path_check_code
       (write-long _path_check_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;; uint32 _path_type
     (setq _path_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _path_check_code
     (setq _path_check_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get woosh_msgs::NavPath :md5sum-) "27705117dadbad8cf0d09e3e8f7c9ac0")
(setf (get woosh_msgs::NavPath :datatype-) "woosh_msgs/NavPath")
(setf (get woosh_msgs::NavPath :definition-)
      "nav_msgs/Path path
uint32 path_type 　#0=move base更新的路径，1= 回传的路径
uint32 path_check_code

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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



(provide :woosh_msgs/NavPath "27705117dadbad8cf0d09e3e8f7c9ac0")


