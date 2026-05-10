;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::SaveMap)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'SaveMap (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::SAVEMAP")
  (make-package "WOOSH_MSGS::SAVEMAP"))
(unless (find-package "WOOSH_MSGS::SAVEMAPREQUEST")
  (make-package "WOOSH_MSGS::SAVEMAPREQUEST"))
(unless (find-package "WOOSH_MSGS::SAVEMAPRESPONSE")
  (make-package "WOOSH_MSGS::SAVEMAPRESPONSE"))

(in-package "ROS")

(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))




(defclass woosh_msgs::SaveMapRequest
  :super ros::object
  :slots (_pathName _useSavedMap _beaconList _eraseBeaconList _topic _map ))

(defmethod woosh_msgs::SaveMapRequest
  (:init
   (&key
    ((:pathName __pathName) "")
    ((:useSavedMap __useSavedMap) nil)
    ((:beaconList __beaconList) ())
    ((:eraseBeaconList __eraseBeaconList) nil)
    ((:topic __topic) "")
    ((:map __map) (instance nav_msgs::OccupancyGrid :init))
    )
   (send-super :init)
   (setq _pathName (string __pathName))
   (setq _useSavedMap __useSavedMap)
   (setq _beaconList __beaconList)
   (setq _eraseBeaconList __eraseBeaconList)
   (setq _topic (string __topic))
   (setq _map __map)
   self)
  (:pathName
   (&optional __pathName)
   (if __pathName (setq _pathName __pathName)) _pathName)
  (:useSavedMap
   (&optional (__useSavedMap :null))
   (if (not (eq __useSavedMap :null)) (setq _useSavedMap __useSavedMap)) _useSavedMap)
  (:beaconList
   (&rest __beaconList)
   (if (keywordp (car __beaconList))
       (send* _beaconList __beaconList)
     (progn
       (if __beaconList (setq _beaconList (car __beaconList)))
       _beaconList)))
  (:eraseBeaconList
   (&optional (__eraseBeaconList :null))
   (if (not (eq __eraseBeaconList :null)) (setq _eraseBeaconList __eraseBeaconList)) _eraseBeaconList)
  (:topic
   (&optional __topic)
   (if __topic (setq _topic __topic)) _topic)
  (:map
   (&rest __map)
   (if (keywordp (car __map))
       (send* _map __map)
     (progn
       (if __map (setq _map (car __map)))
       _map)))
  (:serialization-length
   ()
   (+
    ;; string _pathName
    4 (length _pathName)
    ;; bool _useSavedMap
    1
    ;; woosh_msgs/Beacon[] _beaconList
    (apply #'+ (send-all _beaconList :serialization-length)) 4
    ;; bool _eraseBeaconList
    1
    ;; string _topic
    4 (length _topic)
    ;; nav_msgs/OccupancyGrid _map
    (send _map :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _pathName
       (write-long (length _pathName) s) (princ _pathName s)
     ;; bool _useSavedMap
       (if _useSavedMap (write-byte -1 s) (write-byte 0 s))
     ;; woosh_msgs/Beacon[] _beaconList
     (write-long (length _beaconList) s)
     (dolist (elem _beaconList)
       (send elem :serialize s)
       )
     ;; bool _eraseBeaconList
       (if _eraseBeaconList (write-byte -1 s) (write-byte 0 s))
     ;; string _topic
       (write-long (length _topic) s) (princ _topic s)
     ;; nav_msgs/OccupancyGrid _map
       (send _map :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _pathName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pathName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _useSavedMap
     (setq _useSavedMap (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; woosh_msgs/Beacon[] _beaconList
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _beaconList (let (r) (dotimes (i n) (push (instance woosh_msgs::Beacon :init) r)) r))
     (dolist (elem- _beaconList)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _eraseBeaconList
     (setq _eraseBeaconList (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; nav_msgs/OccupancyGrid _map
     (send _map :deserialize buf ptr-) (incf ptr- (send _map :serialization-length))
   ;;
   self)
  )

(defclass woosh_msgs::SaveMapResponse
  :super ros::object
  :slots (_success _message ))

(defmethod woosh_msgs::SaveMapResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass woosh_msgs::SaveMap
  :super ros::object
  :slots ())

(setf (get woosh_msgs::SaveMap :md5sum-) "856838efac140246f68b796a2c37b1e1")
(setf (get woosh_msgs::SaveMap :datatype-) "woosh_msgs/SaveMap")
(setf (get woosh_msgs::SaveMap :request) woosh_msgs::SaveMapRequest)
(setf (get woosh_msgs::SaveMap :response) woosh_msgs::SaveMapResponse)

(defmethod woosh_msgs::SaveMapRequest
  (:response () (instance woosh_msgs::SaveMapResponse :init)))

(setf (get woosh_msgs::SaveMapRequest :md5sum-) "856838efac140246f68b796a2c37b1e1")
(setf (get woosh_msgs::SaveMapRequest :datatype-) "woosh_msgs/SaveMapRequest")
(setf (get woosh_msgs::SaveMapRequest :definition-)
      "# map_server

# if pathName == \"\", use \"./default_map\"
string pathName

# true: use this map as static map the map_server pub, when call startServe last time
bool useSavedMap

# for map yaml
Beacon[] beaconList #exist data: use new data replace old data; empty: do nothing
bool eraseBeaconList #true: delete all beacon data from yaml (only if beaconList is empty); false: do nothing

# For map image

# topic != \"\": save the map from this topic
# topic == \"\": save nav_msgs/OccupancyGrid data
string topic

# only if topic == \"\", this map data will be used
nav_msgs/OccupancyGrid map

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
float32 z
================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
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
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")

(setf (get woosh_msgs::SaveMapResponse :md5sum-) "856838efac140246f68b796a2c37b1e1")
(setf (get woosh_msgs::SaveMapResponse :datatype-) "woosh_msgs/SaveMapResponse")
(setf (get woosh_msgs::SaveMapResponse :definition-)
      "# map_server

# if pathName == \"\", use \"./default_map\"
string pathName

# true: use this map as static map the map_server pub, when call startServe last time
bool useSavedMap

# for map yaml
Beacon[] beaconList #exist data: use new data replace old data; empty: do nothing
bool eraseBeaconList #true: delete all beacon data from yaml (only if beaconList is empty); false: do nothing

# For map image

# topic != \"\": save the map from this topic
# topic == \"\": save nav_msgs/OccupancyGrid data
string topic

# only if topic == \"\", this map data will be used
nav_msgs/OccupancyGrid map

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
float32 z
================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
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
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")



(provide :woosh_msgs/SaveMap "856838efac140246f68b796a2c37b1e1")


