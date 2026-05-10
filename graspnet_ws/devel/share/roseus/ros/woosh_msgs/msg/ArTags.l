;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::ArTags)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'ArTags (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::ARTAGS")
  (make-package "WOOSH_MSGS::ARTAGS"))

(in-package "ROS")
;;//! \htmlinclude ArTags.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass woosh_msgs::ArTags
  :super ros::object
  :slots (_header _ArTags ))

(defmethod woosh_msgs::ArTags
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ArTags __ArTags) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _ArTags __ArTags)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ArTags
   (&rest __ArTags)
   (if (keywordp (car __ArTags))
       (send* _ArTags __ArTags)
     (progn
       (if __ArTags (setq _ArTags (car __ArTags)))
       _ArTags)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; woosh_msgs/ArTagPose[] _ArTags
    (apply #'+ (send-all _ArTags :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; woosh_msgs/ArTagPose[] _ArTags
     (write-long (length _ArTags) s)
     (dolist (elem _ArTags)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; woosh_msgs/ArTagPose[] _ArTags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ArTags (let (r) (dotimes (i n) (push (instance woosh_msgs::ArTagPose :init) r)) r))
     (dolist (elem- _ArTags)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get woosh_msgs::ArTags :md5sum-) "faa1303a33099917a10a02b9ca3d9e17")
(setf (get woosh_msgs::ArTags :datatype-) "woosh_msgs/ArTags")
(setf (get woosh_msgs::ArTags :definition-)
      "Header header
ArTagPose[] ArTags

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
MSG: woosh_msgs/ArTagPose
geometry_msgs/Point distination
geometry_msgs/Pose tag_pose
int32 tag_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :woosh_msgs/ArTags "faa1303a33099917a10a02b9ca3d9e17")


