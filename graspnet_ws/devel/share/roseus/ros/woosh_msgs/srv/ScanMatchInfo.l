;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::ScanMatchInfo)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'ScanMatchInfo (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::SCANMATCHINFO")
  (make-package "WOOSH_MSGS::SCANMATCHINFO"))
(unless (find-package "WOOSH_MSGS::SCANMATCHINFOREQUEST")
  (make-package "WOOSH_MSGS::SCANMATCHINFOREQUEST"))
(unless (find-package "WOOSH_MSGS::SCANMATCHINFORESPONSE")
  (make-package "WOOSH_MSGS::SCANMATCHINFORESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass woosh_msgs::ScanMatchInfoRequest
  :super ros::object
  :slots (_get_scan_match _match_pose ))

(defmethod woosh_msgs::ScanMatchInfoRequest
  (:init
   (&key
    ((:get_scan_match __get_scan_match) nil)
    ((:match_pose __match_pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _get_scan_match __get_scan_match)
   (setq _match_pose __match_pose)
   self)
  (:get_scan_match
   (&optional (__get_scan_match :null))
   (if (not (eq __get_scan_match :null)) (setq _get_scan_match __get_scan_match)) _get_scan_match)
  (:match_pose
   (&rest __match_pose)
   (if (keywordp (car __match_pose))
       (send* _match_pose __match_pose)
     (progn
       (if __match_pose (setq _match_pose (car __match_pose)))
       _match_pose)))
  (:serialization-length
   ()
   (+
    ;; bool _get_scan_match
    1
    ;; geometry_msgs/PoseStamped _match_pose
    (send _match_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _get_scan_match
       (if _get_scan_match (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/PoseStamped _match_pose
       (send _match_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _get_scan_match
     (setq _get_scan_match (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/PoseStamped _match_pose
     (send _match_pose :deserialize buf ptr-) (incf ptr- (send _match_pose :serialization-length))
   ;;
   self)
  )

(defclass woosh_msgs::ScanMatchInfoResponse
  :super ros::object
  :slots (_success _message _valid _x _iterations _nvalid _error ))

(defmethod woosh_msgs::ScanMatchInfoResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:valid __valid) 0)
    ((:x __x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:iterations __iterations) 0)
    ((:nvalid __nvalid) 0)
    ((:error __error) 0.0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _valid (round __valid))
   (setq _x __x)
   (setq _iterations (round __iterations))
   (setq _nvalid (round __nvalid))
   (setq _error (float __error))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:valid
   (&optional __valid)
   (if __valid (setq _valid __valid)) _valid)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:iterations
   (&optional __iterations)
   (if __iterations (setq _iterations __iterations)) _iterations)
  (:nvalid
   (&optional __nvalid)
   (if __nvalid (setq _nvalid __nvalid)) _nvalid)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; int32 _valid
    4
    ;; float32[] _x
    (* 4    (length _x)) 4
    ;; int32 _iterations
    4
    ;; int32 _nvalid
    4
    ;; float32 _error
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; int32 _valid
       (write-long _valid s)
     ;; float32[] _x
     (write-long (length _x) s)
     (dotimes (i (length _x))
       (sys::poke (elt _x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _iterations
       (write-long _iterations s)
     ;; int32 _nvalid
       (write-long _nvalid s)
     ;; float32 _error
       (sys::poke _error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _valid
     (setq _valid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32 _iterations
     (setq _iterations (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _nvalid
     (setq _nvalid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _error
     (setq _error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass woosh_msgs::ScanMatchInfo
  :super ros::object
  :slots ())

(setf (get woosh_msgs::ScanMatchInfo :md5sum-) "33f658e01fd3940268f71981c2c56be5")
(setf (get woosh_msgs::ScanMatchInfo :datatype-) "woosh_msgs/ScanMatchInfo")
(setf (get woosh_msgs::ScanMatchInfo :request) woosh_msgs::ScanMatchInfoRequest)
(setf (get woosh_msgs::ScanMatchInfo :response) woosh_msgs::ScanMatchInfoResponse)

(defmethod woosh_msgs::ScanMatchInfoRequest
  (:response () (instance woosh_msgs::ScanMatchInfoResponse :init)))

(setf (get woosh_msgs::ScanMatchInfoRequest :md5sum-) "33f658e01fd3940268f71981c2c56be5")
(setf (get woosh_msgs::ScanMatchInfoRequest :datatype-) "woosh_msgs/ScanMatchInfoRequest")
(setf (get woosh_msgs::ScanMatchInfoRequest :definition-)
      "bool get_scan_match  #true : get; false: save/update scan match
geometry_msgs/PoseStamped match_pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
#/** 1 if the result is valid */
int32 valid
#/** Scan matching result (x,y,theta) */
float32[] x
#/** Number of iterations done */
int32 iterations
#/** Number of valid correspondence in the end */
int32 nvalid
#/** Total correspondence error */
float32 error


")

(setf (get woosh_msgs::ScanMatchInfoResponse :md5sum-) "33f658e01fd3940268f71981c2c56be5")
(setf (get woosh_msgs::ScanMatchInfoResponse :datatype-) "woosh_msgs/ScanMatchInfoResponse")
(setf (get woosh_msgs::ScanMatchInfoResponse :definition-)
      "bool get_scan_match  #true : get; false: save/update scan match
geometry_msgs/PoseStamped match_pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
#/** 1 if the result is valid */
int32 valid
#/** Scan matching result (x,y,theta) */
float32[] x
#/** Number of iterations done */
int32 iterations
#/** Number of valid correspondence in the end */
int32 nvalid
#/** Total correspondence error */
float32 error


")



(provide :woosh_msgs/ScanMatchInfo "33f658e01fd3940268f71981c2c56be5")


