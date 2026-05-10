;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::mono_path)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'mono_path (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::MONO_PATH")
  (make-package "WOOSH_MSGS::MONO_PATH"))

(in-package "ROS")
;;//! \htmlinclude mono_path.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass woosh_msgs::mono_path
  :super ros::object
  :slots (_path _width _allow_avoid ))

(defmethod woosh_msgs::mono_path
  (:init
   (&key
    ((:path __path) (instance nav_msgs::Path :init))
    ((:width __width) 0.0)
    ((:allow_avoid __allow_avoid) nil)
    )
   (send-super :init)
   (setq _path __path)
   (setq _width (float __width))
   (setq _allow_avoid __allow_avoid)
   self)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:allow_avoid
   (&optional (__allow_avoid :null))
   (if (not (eq __allow_avoid :null)) (setq _allow_avoid __allow_avoid)) _allow_avoid)
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _path
    (send _path :serialization-length)
    ;; float32 _width
    4
    ;; bool _allow_avoid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _path
       (send _path :serialize s)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _allow_avoid
       (if _allow_avoid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _allow_avoid
     (setq _allow_avoid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get woosh_msgs::mono_path :md5sum-) "6181e8db9f191cda19a6d8b7ae5e5f25")
(setf (get woosh_msgs::mono_path :datatype-) "woosh_msgs/mono_path")
(setf (get woosh_msgs::mono_path :definition-)
      "nav_msgs/Path path
float32 width
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



(provide :woosh_msgs/mono_path "6181e8db9f191cda19a6d8b7ae5e5f25")


