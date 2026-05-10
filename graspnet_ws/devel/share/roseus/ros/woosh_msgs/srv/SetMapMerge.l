;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::SetMapMerge)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'SetMapMerge (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::SETMAPMERGE")
  (make-package "WOOSH_MSGS::SETMAPMERGE"))
(unless (find-package "WOOSH_MSGS::SETMAPMERGEREQUEST")
  (make-package "WOOSH_MSGS::SETMAPMERGEREQUEST"))
(unless (find-package "WOOSH_MSGS::SETMAPMERGERESPONSE")
  (make-package "WOOSH_MSGS::SETMAPMERGERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))




(defclass woosh_msgs::SetMapMergeRequest
  :super ros::object
  :slots (_start_map_merge _initial_pose _map ))

(defmethod woosh_msgs::SetMapMergeRequest
  (:init
   (&key
    ((:start_map_merge __start_map_merge) nil)
    ((:initial_pose __initial_pose) (instance geometry_msgs::Pose :init))
    ((:map __map) (instance nav_msgs::OccupancyGrid :init))
    )
   (send-super :init)
   (setq _start_map_merge __start_map_merge)
   (setq _initial_pose __initial_pose)
   (setq _map __map)
   self)
  (:start_map_merge
   (&optional (__start_map_merge :null))
   (if (not (eq __start_map_merge :null)) (setq _start_map_merge __start_map_merge)) _start_map_merge)
  (:initial_pose
   (&rest __initial_pose)
   (if (keywordp (car __initial_pose))
       (send* _initial_pose __initial_pose)
     (progn
       (if __initial_pose (setq _initial_pose (car __initial_pose)))
       _initial_pose)))
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
    ;; bool _start_map_merge
    1
    ;; geometry_msgs/Pose _initial_pose
    (send _initial_pose :serialization-length)
    ;; nav_msgs/OccupancyGrid _map
    (send _map :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _start_map_merge
       (if _start_map_merge (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Pose _initial_pose
       (send _initial_pose :serialize s)
     ;; nav_msgs/OccupancyGrid _map
       (send _map :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _start_map_merge
     (setq _start_map_merge (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Pose _initial_pose
     (send _initial_pose :deserialize buf ptr-) (incf ptr- (send _initial_pose :serialization-length))
   ;; nav_msgs/OccupancyGrid _map
     (send _map :deserialize buf ptr-) (incf ptr- (send _map :serialization-length))
   ;;
   self)
  )

(defclass woosh_msgs::SetMapMergeResponse
  :super ros::object
  :slots (_success _message ))

(defmethod woosh_msgs::SetMapMergeResponse
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

(defclass woosh_msgs::SetMapMerge
  :super ros::object
  :slots ())

(setf (get woosh_msgs::SetMapMerge :md5sum-) "a6e5147bb07d077dde1ce71e1e622788")
(setf (get woosh_msgs::SetMapMerge :datatype-) "woosh_msgs/SetMapMerge")
(setf (get woosh_msgs::SetMapMerge :request) woosh_msgs::SetMapMergeRequest)
(setf (get woosh_msgs::SetMapMerge :response) woosh_msgs::SetMapMergeResponse)

(defmethod woosh_msgs::SetMapMergeRequest
  (:response () (instance woosh_msgs::SetMapMergeResponse :init)))

(setf (get woosh_msgs::SetMapMergeRequest :md5sum-) "a6e5147bb07d077dde1ce71e1e622788")
(setf (get woosh_msgs::SetMapMergeRequest :datatype-) "woosh_msgs/SetMapMergeRequest")
(setf (get woosh_msgs::SetMapMergeRequest :definition-)
      "# map_merge

# true: call startServe() to start map merge merge maps
# false: call stopServe() to stop map merge
bool start_map_merge

geometry_msgs/Pose initial_pose

nav_msgs/OccupancyGrid map

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
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")

(setf (get woosh_msgs::SetMapMergeResponse :md5sum-) "a6e5147bb07d077dde1ce71e1e622788")
(setf (get woosh_msgs::SetMapMergeResponse :datatype-) "woosh_msgs/SetMapMergeResponse")
(setf (get woosh_msgs::SetMapMergeResponse :definition-)
      "# map_merge

# true: call startServe() to start map merge merge maps
# false: call stopServe() to stop map merge
bool start_map_merge

geometry_msgs/Pose initial_pose

nav_msgs/OccupancyGrid map

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
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")



(provide :woosh_msgs/SetMapMerge "a6e5147bb07d077dde1ce71e1e622788")


