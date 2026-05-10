;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::Beacon)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'Beacon (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::BEACON")
  (make-package "WOOSH_MSGS::BEACON"))

(in-package "ROS")
;;//! \htmlinclude Beacon.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass woosh_msgs::Beacon
  :super ros::object
  :slots (_header _submodule _beaconID _beaconIDStr _position _range _bearing _max_range _batteryPercentage _group ))

(defmethod woosh_msgs::Beacon
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:submodule __submodule) 0)
    ((:beaconID __beaconID) 0)
    ((:beaconIDStr __beaconIDStr) "")
    ((:position __position) (instance geometry_msgs::Point32 :init))
    ((:range __range) 0.0)
    ((:bearing __bearing) 0.0)
    ((:max_range __max_range) 0.0)
    ((:batteryPercentage __batteryPercentage) 0)
    ((:group __group) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _submodule (round __submodule))
   (setq _beaconID (round __beaconID))
   (setq _beaconIDStr (string __beaconIDStr))
   (setq _position __position)
   (setq _range (float __range))
   (setq _bearing (float __bearing))
   (setq _max_range (float __max_range))
   (setq _batteryPercentage (round __batteryPercentage))
   (setq _group (round __group))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:submodule
   (&optional __submodule)
   (if __submodule (setq _submodule __submodule)) _submodule)
  (:beaconID
   (&optional __beaconID)
   (if __beaconID (setq _beaconID __beaconID)) _beaconID)
  (:beaconIDStr
   (&optional __beaconIDStr)
   (if __beaconIDStr (setq _beaconIDStr __beaconIDStr)) _beaconIDStr)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:bearing
   (&optional __bearing)
   (if __bearing (setq _bearing __bearing)) _bearing)
  (:max_range
   (&optional __max_range)
   (if __max_range (setq _max_range __max_range)) _max_range)
  (:batteryPercentage
   (&optional __batteryPercentage)
   (if __batteryPercentage (setq _batteryPercentage __batteryPercentage)) _batteryPercentage)
  (:group
   (&optional __group)
   (if __group (setq _group __group)) _group)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _submodule
    1
    ;; uint32 _beaconID
    4
    ;; string _beaconIDStr
    4 (length _beaconIDStr)
    ;; geometry_msgs/Point32 _position
    (send _position :serialization-length)
    ;; float32 _range
    4
    ;; float32 _bearing
    4
    ;; float32 _max_range
    4
    ;; uint8 _batteryPercentage
    1
    ;; uint16 _group
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _submodule
       (write-byte _submodule s)
     ;; uint32 _beaconID
       (write-long _beaconID s)
     ;; string _beaconIDStr
       (write-long (length _beaconIDStr) s) (princ _beaconIDStr s)
     ;; geometry_msgs/Point32 _position
       (send _position :serialize s)
     ;; float32 _range
       (sys::poke _range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bearing
       (sys::poke _bearing (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_range
       (sys::poke _max_range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _batteryPercentage
       (write-byte _batteryPercentage s)
     ;; uint16 _group
       (write-word _group s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _submodule
     (setq _submodule (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _beaconID
     (setq _beaconID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _beaconIDStr
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _beaconIDStr (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point32 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float32 _range
     (setq _range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bearing
     (setq _bearing (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_range
     (setq _max_range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _batteryPercentage
     (setq _batteryPercentage (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _group
     (setq _group (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get woosh_msgs::Beacon :md5sum-) "1884dff50198bbc7db795331c8e650a6")
(setf (get woosh_msgs::Beacon :datatype-) "woosh_msgs/Beacon")
(setf (get woosh_msgs::Beacon :definition-)
      "Header header #frame_id is the frame of receiver in the robot
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



(provide :woosh_msgs/Beacon "1884dff50198bbc7db795331c8e650a6")


