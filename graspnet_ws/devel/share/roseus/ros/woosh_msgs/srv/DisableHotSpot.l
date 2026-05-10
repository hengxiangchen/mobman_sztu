;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::DisableHotSpot)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'DisableHotSpot (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::DISABLEHOTSPOT")
  (make-package "WOOSH_MSGS::DISABLEHOTSPOT"))
(unless (find-package "WOOSH_MSGS::DISABLEHOTSPOTREQUEST")
  (make-package "WOOSH_MSGS::DISABLEHOTSPOTREQUEST"))
(unless (find-package "WOOSH_MSGS::DISABLEHOTSPOTRESPONSE")
  (make-package "WOOSH_MSGS::DISABLEHOTSPOTRESPONSE"))

(in-package "ROS")





(defclass woosh_msgs::DisableHotSpotRequest
  :super ros::object
  :slots ())

(defmethod woosh_msgs::DisableHotSpotRequest
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

(defclass woosh_msgs::DisableHotSpotResponse
  :super ros::object
  :slots (_status _message ))

(defmethod woosh_msgs::DisableHotSpotResponse
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

(defclass woosh_msgs::DisableHotSpot
  :super ros::object
  :slots ())

(setf (get woosh_msgs::DisableHotSpot :md5sum-) "2c1d00fb8b4e78420f43d93d5292a429")
(setf (get woosh_msgs::DisableHotSpot :datatype-) "woosh_msgs/DisableHotSpot")
(setf (get woosh_msgs::DisableHotSpot :request) woosh_msgs::DisableHotSpotRequest)
(setf (get woosh_msgs::DisableHotSpot :response) woosh_msgs::DisableHotSpotResponse)

(defmethod woosh_msgs::DisableHotSpotRequest
  (:response () (instance woosh_msgs::DisableHotSpotResponse :init)))

(setf (get woosh_msgs::DisableHotSpotRequest :md5sum-) "2c1d00fb8b4e78420f43d93d5292a429")
(setf (get woosh_msgs::DisableHotSpotRequest :datatype-) "woosh_msgs/DisableHotSpotRequest")
(setf (get woosh_msgs::DisableHotSpotRequest :definition-)
      "---
int32 status
string message

")

(setf (get woosh_msgs::DisableHotSpotResponse :md5sum-) "2c1d00fb8b4e78420f43d93d5292a429")
(setf (get woosh_msgs::DisableHotSpotResponse :datatype-) "woosh_msgs/DisableHotSpotResponse")
(setf (get woosh_msgs::DisableHotSpotResponse :definition-)
      "---
int32 status
string message

")



(provide :woosh_msgs/DisableHotSpot "2c1d00fb8b4e78420f43d93d5292a429")


