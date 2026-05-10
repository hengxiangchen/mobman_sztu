;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::Beacons)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'Beacons (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::BEACONS")
  (make-package "WOOSH_MSGS::BEACONS"))

(in-package "ROS")
;;//! \htmlinclude Beacons.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass woosh_msgs::Beacons
  :super ros::object
  :slots (_header _beacons ))

(defmethod woosh_msgs::Beacons
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:beacons __beacons) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _beacons __beacons)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:beacons
   (&rest __beacons)
   (if (keywordp (car __beacons))
       (send* _beacons __beacons)
     (progn
       (if __beacons (setq _beacons (car __beacons)))
       _beacons)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; woosh_msgs/Beacon[] _beacons
    (apply #'+ (send-all _beacons :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; woosh_msgs/Beacon[] _beacons
     (write-long (length _beacons) s)
     (dolist (elem _beacons)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; woosh_msgs/Beacon[] _beacons
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _beacons (let (r) (dotimes (i n) (push (instance woosh_msgs::Beacon :init) r)) r))
     (dolist (elem- _beacons)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get woosh_msgs::Beacons :md5sum-) "6a6c605e47bffb9a548789d9b0089a38")
(setf (get woosh_msgs::Beacons :datatype-) "woosh_msgs/Beacons")
(setf (get woosh_msgs::Beacons :definition-)
      "Header header
Beacon[] beacons
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
MSG: woosh_msgs/Beacon
Header header #frame_id is the frame of receiver in the robot
uint8 submodule
uint32 beaconID
string beaconIDStr
geometry_msgs/Point32 position #beacon's position of the world
float32 range
float32 bearing
float32 max_range
uint8 batteryPercentage
uint16  group

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :woosh_msgs/Beacons "6a6c605e47bffb9a548789d9b0089a38")


