;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::Path_info)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'Path_info (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::PATH_INFO")
  (make-package "WOOSH_MSGS::PATH_INFO"))

(in-package "ROS")
;;//! \htmlinclude Path_info.msg.html


(defclass woosh_msgs::Path_info
  :super ros::object
  :slots (_mono_paths _bidirect_paths ))

(defmethod woosh_msgs::Path_info
  (:init
   (&key
    ((:mono_paths __mono_paths) ())
    ((:bidirect_paths __bidirect_paths) ())
    )
   (send-super :init)
   (setq _mono_paths __mono_paths)
   (setq _bidirect_paths __bidirect_paths)
   self)
  (:mono_paths
   (&rest __mono_paths)
   (if (keywordp (car __mono_paths))
       (send* _mono_paths __mono_paths)
     (progn
       (if __mono_paths (setq _mono_paths (car __mono_paths)))
       _mono_paths)))
  (:bidirect_paths
   (&rest __bidirect_paths)
   (if (keywordp (car __bidirect_paths))
       (send* _bidirect_paths __bidirect_paths)
     (progn
       (if __bidirect_paths (setq _bidirect_paths (car __bidirect_paths)))
       _bidirect_paths)))
  (:serialization-length
   ()
   (+
    ;; woosh_msgs/mono_path[] _mono_paths
    (apply #'+ (send-all _mono_paths :serialization-length)) 4
    ;; woosh_msgs/bidirect_path[] _bidirect_paths
    (apply #'+ (send-all _bidirect_paths :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; woosh_msgs/mono_path[] _mono_paths
     (write-long (length _mono_paths) s)
     (dolist (elem _mono_paths)
       (send elem :serialize s)
       )
     ;; woosh_msgs/bidirect_path[] _bidirect_paths
     (write-long (length _bidirect_paths) s)
     (dolist (elem _bidirect_paths)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; woosh_msgs/mono_path[] _mono_paths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mono_paths (let (r) (dotimes (i n) (push (instance woosh_msgs::mono_path :init) r)) r))
     (dolist (elem- _mono_paths)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; woosh_msgs/bidirect_path[] _bidirect_paths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bidirect_paths (let (r) (dotimes (i n) (push (instance woosh_msgs::bidirect_path :init) r)) r))
     (dolist (elem- _bidirect_paths)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get woosh_msgs::Path_info :md5sum-) "2de62e876ce2d4454b408d3b3598dd50")
(setf (get woosh_msgs::Path_info :datatype-) "woosh_msgs/Path_info")
(setf (get woosh_msgs::Path_info :definition-)
      "mono_path[] mono_paths  #单向路径集合
bidirect_path[] bidirect_paths #双向路径集合

================================================================================
MSG: woosh_msgs/mono_path
nav_msgs/Path path
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

================================================================================
MSG: woosh_msgs/bidirect_path
nav_msgs/Path path
bool allow_avoid

")



(provide :woosh_msgs/Path_info "2de62e876ce2d4454b408d3b3598dd50")


