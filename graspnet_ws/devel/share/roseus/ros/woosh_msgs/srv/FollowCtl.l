;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::FollowCtl)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'FollowCtl (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::FOLLOWCTL")
  (make-package "WOOSH_MSGS::FOLLOWCTL"))
(unless (find-package "WOOSH_MSGS::FOLLOWCTLREQUEST")
  (make-package "WOOSH_MSGS::FOLLOWCTLREQUEST"))
(unless (find-package "WOOSH_MSGS::FOLLOWCTLRESPONSE")
  (make-package "WOOSH_MSGS::FOLLOWCTLRESPONSE"))

(in-package "ROS")





(defclass woosh_msgs::FollowCtlRequest
  :super ros::object
  :slots (_function _command _message ))

(defmethod woosh_msgs::FollowCtlRequest
  (:init
   (&key
    ((:function __function) 0)
    ((:command __command) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _function (round __function))
   (setq _command (round __command))
   (setq _message (string __message))
   self)
  (:function
   (&optional __function)
   (if __function (setq _function __function)) _function)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int32 _function
    4
    ;; int32 _command
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _function
       (write-long _function s)
     ;; int32 _command
       (write-long _command s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _function
     (setq _function (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _command
     (setq _command (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass woosh_msgs::FollowCtlResponse
  :super ros::object
  :slots (_status ))

(defmethod woosh_msgs::FollowCtlResponse
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass woosh_msgs::FollowCtl
  :super ros::object
  :slots ())

(setf (get woosh_msgs::FollowCtl :md5sum-) "11f809d80e616065ce721fceb2f99c9f")
(setf (get woosh_msgs::FollowCtl :datatype-) "woosh_msgs/FollowCtl")
(setf (get woosh_msgs::FollowCtl :request) woosh_msgs::FollowCtlRequest)
(setf (get woosh_msgs::FollowCtl :response) woosh_msgs::FollowCtlResponse)

(defmethod woosh_msgs::FollowCtlRequest
  (:response () (instance woosh_msgs::FollowCtlResponse :init)))

(setf (get woosh_msgs::FollowCtlRequest :md5sum-) "11f809d80e616065ce721fceb2f99c9f")
(setf (get woosh_msgs::FollowCtlRequest :datatype-) "woosh_msgs/FollowCtlRequest")
(setf (get woosh_msgs::FollowCtlRequest :definition-)
      "int32 function
int32 command
string message
---
int32 status

")

(setf (get woosh_msgs::FollowCtlResponse :md5sum-) "11f809d80e616065ce721fceb2f99c9f")
(setf (get woosh_msgs::FollowCtlResponse :datatype-) "woosh_msgs/FollowCtlResponse")
(setf (get woosh_msgs::FollowCtlResponse :definition-)
      "int32 function
int32 command
string message
---
int32 status

")



(provide :woosh_msgs/FollowCtl "11f809d80e616065ce721fceb2f99c9f")


