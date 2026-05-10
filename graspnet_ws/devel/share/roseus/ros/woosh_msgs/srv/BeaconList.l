;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::BeaconList)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'BeaconList (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::BEACONLIST")
  (make-package "WOOSH_MSGS::BEACONLIST"))
(unless (find-package "WOOSH_MSGS::BEACONLISTREQUEST")
  (make-package "WOOSH_MSGS::BEACONLISTREQUEST"))
(unless (find-package "WOOSH_MSGS::BEACONLISTRESPONSE")
  (make-package "WOOSH_MSGS::BEACONLISTRESPONSE"))

(in-package "ROS")





(defclass woosh_msgs::BeaconListRequest
  :super ros::object
  :slots (_isSave _beaconList ))

(defmethod woosh_msgs::BeaconListRequest
  (:init
   (&key
    ((:isSave __isSave) nil)
    ((:beaconList __beaconList) ())
    )
   (send-super :init)
   (setq _isSave __isSave)
   (setq _beaconList __beaconList)
   self)
  (:isSave
   (&optional (__isSave :null))
   (if (not (eq __isSave :null)) (setq _isSave __isSave)) _isSave)
  (:beaconList
   (&rest __beaconList)
   (if (keywordp (car __beaconList))
       (send* _beaconList __beaconList)
     (progn
       (if __beaconList (setq _beaconList (car __beaconList)))
       _beaconList)))
  (:serialization-length
   ()
   (+
    ;; bool _isSave
    1
    ;; woosh_msgs/Beacon[] _beaconList
    (apply #'+ (send-all _beaconList :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isSave
       (if _isSave (write-byte -1 s) (write-byte 0 s))
     ;; woosh_msgs/Beacon[] _beaconList
     (write-long (length _beaconList) s)
     (dolist (elem _beaconList)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isSave
     (setq _isSave (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; woosh_msgs/Beacon[] _beaconList
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _beaconList (let (r) (dotimes (i n) (push (instance woosh_msgs::Beacon :init) r)) r))
     (dolist (elem- _beaconList)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass woosh_msgs::BeaconListResponse
  :super ros::object
  :slots (_beaconList _message ))

(defmethod woosh_msgs::BeaconListResponse
  (:init
   (&key
    ((:beaconList __beaconList) ())
    ((:message __message) "")
    )
   (send-super :init)
   (setq _beaconList __beaconList)
   (setq _message (string __message))
   self)
  (:beaconList
   (&rest __beaconList)
   (if (keywordp (car __beaconList))
       (send* _beaconList __beaconList)
     (progn
       (if __beaconList (setq _beaconList (car __beaconList)))
       _beaconList)))
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; woosh_msgs/Beacon[] _beaconList
    (apply #'+ (send-all _beaconList :serialization-length)) 4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; woosh_msgs/Beacon[] _beaconList
     (write-long (length _beaconList) s)
     (dolist (elem _beaconList)
       (send elem :serialize s)
       )
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; woosh_msgs/Beacon[] _beaconList
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _beaconList (let (r) (dotimes (i n) (push (instance woosh_msgs::Beacon :init) r)) r))
     (dolist (elem- _beaconList)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass woosh_msgs::BeaconList
  :super ros::object
  :slots ())

(setf (get woosh_msgs::BeaconList :md5sum-) "f034c0ec4803c205aaeddc3bfdfaa7fe")
(setf (get woosh_msgs::BeaconList :datatype-) "woosh_msgs/BeaconList")
(setf (get woosh_msgs::BeaconList :request) woosh_msgs::BeaconListRequest)
(setf (get woosh_msgs::BeaconList :response) woosh_msgs::BeaconListResponse)

(defmethod woosh_msgs::BeaconListRequest
  (:response () (instance woosh_msgs::BeaconListResponse :init)))

(setf (get woosh_msgs::BeaconListRequest :md5sum-) "f034c0ec4803c205aaeddc3bfdfaa7fe")
(setf (get woosh_msgs::BeaconListRequest :datatype-) "woosh_msgs/BeaconListRequest")
(setf (get woosh_msgs::BeaconListRequest :definition-)
      "# Set Get beacon list
bool isSave #true: save beacon list false: get beacon list
Beacon[] beaconList


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
---

Beacon[] beaconList
string message



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
")

(setf (get woosh_msgs::BeaconListResponse :md5sum-) "f034c0ec4803c205aaeddc3bfdfaa7fe")
(setf (get woosh_msgs::BeaconListResponse :datatype-) "woosh_msgs/BeaconListResponse")
(setf (get woosh_msgs::BeaconListResponse :definition-)
      "# Set Get beacon list
bool isSave #true: save beacon list false: get beacon list
Beacon[] beaconList


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
---

Beacon[] beaconList
string message



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
")



(provide :woosh_msgs/BeaconList "f034c0ec4803c205aaeddc3bfdfaa7fe")


