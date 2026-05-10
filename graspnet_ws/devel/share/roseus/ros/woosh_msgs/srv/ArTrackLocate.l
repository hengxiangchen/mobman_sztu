;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::ArTrackLocate)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'ArTrackLocate (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::ARTRACKLOCATE")
  (make-package "WOOSH_MSGS::ARTRACKLOCATE"))
(unless (find-package "WOOSH_MSGS::ARTRACKLOCATEREQUEST")
  (make-package "WOOSH_MSGS::ARTRACKLOCATEREQUEST"))
(unless (find-package "WOOSH_MSGS::ARTRACKLOCATERESPONSE")
  (make-package "WOOSH_MSGS::ARTRACKLOCATERESPONSE"))

(in-package "ROS")





(defclass woosh_msgs::ArTrackLocateRequest
  :super ros::object
  :slots (_type ))

(defmethod woosh_msgs::ArTrackLocateRequest
  (:init
   (&key
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; int8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;;
   self)
  )

(defclass woosh_msgs::ArTrackLocateResponse
  :super ros::object
  :slots (_success _message _ar_tag_pose ))

(defmethod woosh_msgs::ArTrackLocateResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:ar_tag_pose __ar_tag_pose) (instance woosh_msgs::ArTagPose :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _ar_tag_pose __ar_tag_pose)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:ar_tag_pose
   (&rest __ar_tag_pose)
   (if (keywordp (car __ar_tag_pose))
       (send* _ar_tag_pose __ar_tag_pose)
     (progn
       (if __ar_tag_pose (setq _ar_tag_pose (car __ar_tag_pose)))
       _ar_tag_pose)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; woosh_msgs/ArTagPose _ar_tag_pose
    (send _ar_tag_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; woosh_msgs/ArTagPose _ar_tag_pose
       (send _ar_tag_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; woosh_msgs/ArTagPose _ar_tag_pose
     (send _ar_tag_pose :deserialize buf ptr-) (incf ptr- (send _ar_tag_pose :serialization-length))
   ;;
   self)
  )

(defclass woosh_msgs::ArTrackLocate
  :super ros::object
  :slots ())

(setf (get woosh_msgs::ArTrackLocate :md5sum-) "96c3b80438255363fd436571a1a57861")
(setf (get woosh_msgs::ArTrackLocate :datatype-) "woosh_msgs/ArTrackLocate")
(setf (get woosh_msgs::ArTrackLocate :request) woosh_msgs::ArTrackLocateRequest)
(setf (get woosh_msgs::ArTrackLocate :response) woosh_msgs::ArTrackLocateResponse)

(defmethod woosh_msgs::ArTrackLocateRequest
  (:response () (instance woosh_msgs::ArTrackLocateResponse :init)))

(setf (get woosh_msgs::ArTrackLocateRequest :md5sum-) "96c3b80438255363fd436571a1a57861")
(setf (get woosh_msgs::ArTrackLocateRequest :datatype-) "woosh_msgs/ArTrackLocateRequest")
(setf (get woosh_msgs::ArTrackLocateRequest :definition-)
      "int8 type   #0:start
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
ArTagPose ar_tag_pose


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

(setf (get woosh_msgs::ArTrackLocateResponse :md5sum-) "96c3b80438255363fd436571a1a57861")
(setf (get woosh_msgs::ArTrackLocateResponse :datatype-) "woosh_msgs/ArTrackLocateResponse")
(setf (get woosh_msgs::ArTrackLocateResponse :definition-)
      "int8 type   #0:start
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
ArTagPose ar_tag_pose


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



(provide :woosh_msgs/ArTrackLocate "96c3b80438255363fd436571a1a57861")


