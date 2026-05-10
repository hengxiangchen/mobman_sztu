;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::Deployment)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'Deployment (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::DEPLOYMENT")
  (make-package "WOOSH_MSGS::DEPLOYMENT"))
(unless (find-package "WOOSH_MSGS::DEPLOYMENTREQUEST")
  (make-package "WOOSH_MSGS::DEPLOYMENTREQUEST"))
(unless (find-package "WOOSH_MSGS::DEPLOYMENTRESPONSE")
  (make-package "WOOSH_MSGS::DEPLOYMENTRESPONSE"))

(in-package "ROS")





(defclass woosh_msgs::DeploymentRequest
  :super ros::object
  :slots (_type _mode ))

(defmethod woosh_msgs::DeploymentRequest
  (:init
   (&key
    ((:type __type) 0)
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _mode (round __mode))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; int8 _type
    1
    ;; int8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _type
       (write-byte _type s)
     ;; int8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;;
   self)
  )

(defclass woosh_msgs::DeploymentResponse
  :super ros::object
  :slots (_success _message _point1Valid _point2Valid _point3Valid _collectedNumber _numberOfFailBeacons _markers _reflector_errorID_groups ))

(defmethod woosh_msgs::DeploymentResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:point1Valid __point1Valid) nil)
    ((:point2Valid __point2Valid) nil)
    ((:point3Valid __point3Valid) nil)
    ((:collectedNumber __collectedNumber) 0)
    ((:numberOfFailBeacons __numberOfFailBeacons) 0)
    ((:markers __markers) (instance woosh_msgs::deployment_markers :init))
    ((:reflector_errorID_groups __reflector_errorID_groups) ())
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _point1Valid __point1Valid)
   (setq _point2Valid __point2Valid)
   (setq _point3Valid __point3Valid)
   (setq _collectedNumber (round __collectedNumber))
   (setq _numberOfFailBeacons (round __numberOfFailBeacons))
   (setq _markers __markers)
   (setq _reflector_errorID_groups __reflector_errorID_groups)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:point1Valid
   (&optional (__point1Valid :null))
   (if (not (eq __point1Valid :null)) (setq _point1Valid __point1Valid)) _point1Valid)
  (:point2Valid
   (&optional (__point2Valid :null))
   (if (not (eq __point2Valid :null)) (setq _point2Valid __point2Valid)) _point2Valid)
  (:point3Valid
   (&optional (__point3Valid :null))
   (if (not (eq __point3Valid :null)) (setq _point3Valid __point3Valid)) _point3Valid)
  (:collectedNumber
   (&optional __collectedNumber)
   (if __collectedNumber (setq _collectedNumber __collectedNumber)) _collectedNumber)
  (:numberOfFailBeacons
   (&optional __numberOfFailBeacons)
   (if __numberOfFailBeacons (setq _numberOfFailBeacons __numberOfFailBeacons)) _numberOfFailBeacons)
  (:markers
   (&rest __markers)
   (if (keywordp (car __markers))
       (send* _markers __markers)
     (progn
       (if __markers (setq _markers (car __markers)))
       _markers)))
  (:reflector_errorID_groups
   (&rest __reflector_errorID_groups)
   (if (keywordp (car __reflector_errorID_groups))
       (send* _reflector_errorID_groups __reflector_errorID_groups)
     (progn
       (if __reflector_errorID_groups (setq _reflector_errorID_groups (car __reflector_errorID_groups)))
       _reflector_errorID_groups)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; bool _point1Valid
    1
    ;; bool _point2Valid
    1
    ;; bool _point3Valid
    1
    ;; uint8 _collectedNumber
    1
    ;; int8 _numberOfFailBeacons
    1
    ;; woosh_msgs/deployment_markers _markers
    (send _markers :serialization-length)
    ;; woosh_msgs/reflector_errorID_group[] _reflector_errorID_groups
    (apply #'+ (send-all _reflector_errorID_groups :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; bool _point1Valid
       (if _point1Valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _point2Valid
       (if _point2Valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _point3Valid
       (if _point3Valid (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _collectedNumber
       (write-byte _collectedNumber s)
     ;; int8 _numberOfFailBeacons
       (write-byte _numberOfFailBeacons s)
     ;; woosh_msgs/deployment_markers _markers
       (send _markers :serialize s)
     ;; woosh_msgs/reflector_errorID_group[] _reflector_errorID_groups
     (write-long (length _reflector_errorID_groups) s)
     (dolist (elem _reflector_errorID_groups)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _point1Valid
     (setq _point1Valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _point2Valid
     (setq _point2Valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _point3Valid
     (setq _point3Valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _collectedNumber
     (setq _collectedNumber (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8 _numberOfFailBeacons
     (setq _numberOfFailBeacons (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _numberOfFailBeacons 127) (setq _numberOfFailBeacons (- _numberOfFailBeacons 256)))
   ;; woosh_msgs/deployment_markers _markers
     (send _markers :deserialize buf ptr-) (incf ptr- (send _markers :serialization-length))
   ;; woosh_msgs/reflector_errorID_group[] _reflector_errorID_groups
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reflector_errorID_groups (let (r) (dotimes (i n) (push (instance woosh_msgs::reflector_errorID_group :init) r)) r))
     (dolist (elem- _reflector_errorID_groups)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass woosh_msgs::Deployment
  :super ros::object
  :slots ())

(setf (get woosh_msgs::Deployment :md5sum-) "57f1fbe19bd792986d22fb16590e842c")
(setf (get woosh_msgs::Deployment :datatype-) "woosh_msgs/Deployment")
(setf (get woosh_msgs::Deployment :request) woosh_msgs::DeploymentRequest)
(setf (get woosh_msgs::Deployment :response) woosh_msgs::DeploymentResponse)

(defmethod woosh_msgs::DeploymentRequest
  (:response () (instance woosh_msgs::DeploymentResponse :init)))

(setf (get woosh_msgs::DeploymentRequest :md5sum-) "57f1fbe19bd792986d22fb16590e842c")
(setf (get woosh_msgs::DeploymentRequest :datatype-) "woosh_msgs/DeploymentRequest")
(setf (get woosh_msgs::DeploymentRequest :definition-)
      "int8 type   #0:beacons  1:ar_tag  2:reflector
int8 mode   #0:开始采集  1:取消采集（beacons多组数据生效）  2:reflector校验
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
bool point1Valid
bool point2Valid
bool point3Valid
uint8 collectedNumber       #表示此时已经收集几个数据了（总共需要三个）
int8 numberOfFailBeacons     #三次采集后未发布的uwb基站数

deployment_markers markers  #基于map坐标系

reflector_errorID_group[] reflector_errorID_groups


================================================================================
MSG: woosh_msgs/deployment_markers
Header header
deployment_marker[] markers

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
MSG: woosh_msgs/deployment_marker
uint32 markerID
geometry_msgs/Pose pose
uint16  group

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
MSG: woosh_msgs/reflector_errorID_group
reflector_errorID[] reflector_errorIDs

================================================================================
MSG: woosh_msgs/reflector_errorID
uint32 ID1
uint32 ID2
uint32 ID3
")

(setf (get woosh_msgs::DeploymentResponse :md5sum-) "57f1fbe19bd792986d22fb16590e842c")
(setf (get woosh_msgs::DeploymentResponse :datatype-) "woosh_msgs/DeploymentResponse")
(setf (get woosh_msgs::DeploymentResponse :definition-)
      "int8 type   #0:beacons  1:ar_tag  2:reflector
int8 mode   #0:开始采集  1:取消采集（beacons多组数据生效）  2:reflector校验
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
bool point1Valid
bool point2Valid
bool point3Valid
uint8 collectedNumber       #表示此时已经收集几个数据了（总共需要三个）
int8 numberOfFailBeacons     #三次采集后未发布的uwb基站数

deployment_markers markers  #基于map坐标系

reflector_errorID_group[] reflector_errorID_groups


================================================================================
MSG: woosh_msgs/deployment_markers
Header header
deployment_marker[] markers

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
MSG: woosh_msgs/deployment_marker
uint32 markerID
geometry_msgs/Pose pose
uint16  group

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
MSG: woosh_msgs/reflector_errorID_group
reflector_errorID[] reflector_errorIDs

================================================================================
MSG: woosh_msgs/reflector_errorID
uint32 ID1
uint32 ID2
uint32 ID3
")



(provide :woosh_msgs/Deployment "57f1fbe19bd792986d22fb16590e842c")


