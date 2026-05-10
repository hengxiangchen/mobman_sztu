;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::bidirect_path)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'bidirect_path (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::BIDIRECT_PATH")
  (make-package "WOOSH_MSGS::BIDIRECT_PATH"))

(in-package "ROS")
;;//! \htmlinclude bidirect_path.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass woosh_msgs::bidirect_path
  :super ros::object
  :slots (_path _allow_avoid ))

(defmethod woosh_msgs::bidirect_path
  (:init
   (&key
    ((:path __path) (instance nav_msgs::Path :init))
    ((:allow_avoid __allow_avoid) nil)
    )
   (send-super :init)
   (setq _path __path)
   (setq _allow_avoid __allow_avoid)
   self)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:allow_avoid
   (&optional (__allow_avoid :null))
   (if (not (eq __allow_avoid :null)) (setq _allow_avoid __allow_avoid)) _allow_avoid)
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _path
    (send _path :serialization-length)
    ;; bool _allow_avoid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _path
       (send _path :serialize s)
     ;; bool _allow_avoid
       (if _allow_avoid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;; bool _allow_avoid
     (setq _allow_avoid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get woosh_msgs::bidirect_path :md5sum-) "7d735010e9a52fa18b34c7e18e19ee43")
(setf (get woosh_msgs::bidirect_path :datatype-) "woosh_msgs/bidirect_path")
(setf (get woosh_msgs::bidirect_path :definition-)
      "nav_msgs/Path path
bool allow_avoid

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



(provide :woosh_msgs/bidirect_path "7d735010e9a52fa18b34c7e18e19ee43")


