;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::EnableHotSpot)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'EnableHotSpot (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::ENABLEHOTSPOT")
  (make-package "WOOSH_MSGS::ENABLEHOTSPOT"))
(unless (find-package "WOOSH_MSGS::ENABLEHOTSPOTREQUEST")
  (make-package "WOOSH_MSGS::ENABLEHOTSPOTREQUEST"))
(unless (find-package "WOOSH_MSGS::ENABLEHOTSPOTRESPONSE")
  (make-package "WOOSH_MSGS::ENABLEHOTSPOTRESPONSE"))

(in-package "ROS")





(defclass woosh_msgs::EnableHotSpotRequest
  :super ros::object
  :slots ())

(defmethod woosh_msgs::EnableHotSpotRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass woosh_msgs::EnableHotSpotResponse
  :super ros::object
  :slots (_status _message ))

(defmethod woosh_msgs::EnableHotSpotResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass woosh_msgs::EnableHotSpot
  :super ros::object
  :slots ())

(setf (get woosh_msgs::EnableHotSpot :md5sum-) "2c1d00fb8b4e78420f43d93d5292a429")
(setf (get woosh_msgs::EnableHotSpot :datatype-) "woosh_msgs/EnableHotSpot")
(setf (get woosh_msgs::EnableHotSpot :request) woosh_msgs::EnableHotSpotRequest)
(setf (get woosh_msgs::EnableHotSpot :response) woosh_msgs::EnableHotSpotResponse)

(defmethod woosh_msgs::EnableHotSpotRequest
  (:response () (instance woosh_msgs::EnableHotSpotResponse :init)))

(setf (get woosh_msgs::EnableHotSpotRequest :md5sum-) "2c1d00fb8b4e78420f43d93d5292a429")
(setf (get woosh_msgs::EnableHotSpotRequest :datatype-) "woosh_msgs/EnableHotSpotRequest")
(setf (get woosh_msgs::EnableHotSpotRequest :definition-)
      "---
int32 status
string message

")

(setf (get woosh_msgs::EnableHotSpotResponse :md5sum-) "2c1d00fb8b4e78420f43d93d5292a429")
(setf (get woosh_msgs::EnableHotSpotResponse :datatype-) "woosh_msgs/EnableHotSpotResponse")
(setf (get woosh_msgs::EnableHotSpotResponse :definition-)
      "---
int32 status
string message

")



(provide :woosh_msgs/EnableHotSpot "2c1d00fb8b4e78420f43d93d5292a429")


