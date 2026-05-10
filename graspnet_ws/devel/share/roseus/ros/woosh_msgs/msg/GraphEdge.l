;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::GraphEdge)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'GraphEdge (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::GRAPHEDGE")
  (make-package "WOOSH_MSGS::GRAPHEDGE"))

(in-package "ROS")
;;//! \htmlinclude GraphEdge.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass woosh_msgs::GraphEdge
  :super ros::object
  :slots (_source _target _field_id _weight _busy_level _path_length _path ))

(defmethod woosh_msgs::GraphEdge
  (:init
   (&key
    ((:source __source) 0)
    ((:target __target) 0)
    ((:field_id __field_id) 0)
    ((:weight __weight) 0.0)
    ((:busy_level __busy_level) 0.0)
    ((:path_length __path_length) 0.0)
    ((:path __path) (instance nav_msgs::Path :init))
    )
   (send-super :init)
   (setq _source (round __source))
   (setq _target (round __target))
   (setq _field_id (round __field_id))
   (setq _weight (float __weight))
   (setq _busy_level (float __busy_level))
   (setq _path_length (float __path_length))
   (setq _path __path)
   self)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:target
   (&optional __target)
   (if __target (setq _target __target)) _target)
  (:field_id
   (&optional __field_id)
   (if __field_id (setq _field_id __field_id)) _field_id)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:busy_level
   (&optional __busy_level)
   (if __busy_level (setq _busy_level __busy_level)) _busy_level)
  (:path_length
   (&optional __path_length)
   (if __path_length (setq _path_length __path_length)) _path_length)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; uint32 _source
    4
    ;; uint32 _target
    4
    ;; uint32 _field_id
    4
    ;; float32 _weight
    4
    ;; float32 _busy_level
    4
    ;; float32 _path_length
    4
    ;; nav_msgs/Path _path
    (send _path :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _source
       (write-long _source s)
     ;; uint32 _target
       (write-long _target s)
     ;; uint32 _field_id
       (write-long _field_id s)
     ;; float32 _weight
       (sys::poke _weight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _busy_level
       (sys::poke _busy_level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _path_length
       (sys::poke _path_length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; nav_msgs/Path _path
       (send _path :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _source
     (setq _source (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _target
     (setq _target (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _field_id
     (setq _field_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _weight
     (setq _weight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _busy_level
     (setq _busy_level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _path_length
     (setq _path_length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; nav_msgs/Path _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;;
   self)
  )

(setf (get woosh_msgs::GraphEdge :md5sum-) "9bd7ce82cec3994c24dc6b7bca58ca6d")
(setf (get woosh_msgs::GraphEdge :datatype-) "woosh_msgs/GraphEdge")
(setf (get woosh_msgs::GraphEdge :definition-)
      "uint32 source		#边源marker的id
uint32 target		#边汇marker的id
uint32 field_id		#边所在域的id，如果边不在域内，则id为0
float32 weight		#边权重，主要影响路径规划
float32 busy_level	#繁忙系数，越大，路径规划器更不倾向选择该边
float32 path_length	#路径长度
nav_msgs/Path path	#边路径点

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



(provide :woosh_msgs/GraphEdge "9bd7ce82cec3994c24dc6b7bca58ca6d")


