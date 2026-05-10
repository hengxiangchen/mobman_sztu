;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::TriggerWiFiReconnect)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'TriggerWiFiReconnect (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::TRIGGERWIFIRECONNECT")
  (make-package "WOOSH_MSGS::TRIGGERWIFIRECONNECT"))
(unless (find-package "WOOSH_MSGS::TRIGGERWIFIRECONNECTREQUEST")
  (make-package "WOOSH_MSGS::TRIGGERWIFIRECONNECTREQUEST"))
(unless (find-package "WOOSH_MSGS::TRIGGERWIFIRECONNECTRESPONSE")
  (make-package "WOOSH_MSGS::TRIGGERWIFIRECONNECTRESPONSE"))

(in-package "ROS")





(defclass woosh_msgs::TriggerWiFiReconnectRequest
  :super ros::object
  :slots (_parameter ))

(defmethod woosh_msgs::TriggerWiFiReconnectRequest
  (:init
   (&key
    ((:parameter __parameter) "")
    )
   (send-super :init)
   (setq _parameter (string __parameter))
   self)
  (:parameter
   (&optional __parameter)
   (if __parameter (setq _parameter __parameter)) _parameter)
  (:serialization-length
   ()
   (+
    ;; string _parameter
    4 (length _parameter)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _parameter
       (write-long (length _parameter) s) (princ _parameter s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _parameter
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parameter (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass woosh_msgs::TriggerWiFiReconnectResponse
  :super ros::object
  :slots (_status _message ))

(defmethod woosh_msgs::TriggerWiFiReconnectResponse
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

(defclass woosh_msgs::TriggerWiFiReconnect
  :super ros::object
  :slots ())

(setf (get woosh_msgs::TriggerWiFiReconnect :md5sum-) "adeb7eac4f60ecb52de64e214c385171")
(setf (get woosh_msgs::TriggerWiFiReconnect :datatype-) "woosh_msgs/TriggerWiFiReconnect")
(setf (get woosh_msgs::TriggerWiFiReconnect :request) woosh_msgs::TriggerWiFiReconnectRequest)
(setf (get woosh_msgs::TriggerWiFiReconnect :response) woosh_msgs::TriggerWiFiReconnectResponse)

(defmethod woosh_msgs::TriggerWiFiReconnectRequest
  (:response () (instance woosh_msgs::TriggerWiFiReconnectResponse :init)))

(setf (get woosh_msgs::TriggerWiFiReconnectRequest :md5sum-) "adeb7eac4f60ecb52de64e214c385171")
(setf (get woosh_msgs::TriggerWiFiReconnectRequest :datatype-) "woosh_msgs/TriggerWiFiReconnectRequest")
(setf (get woosh_msgs::TriggerWiFiReconnectRequest :definition-)
      "string parameter
---
int32 status
string message

")

(setf (get woosh_msgs::TriggerWiFiReconnectResponse :md5sum-) "adeb7eac4f60ecb52de64e214c385171")
(setf (get woosh_msgs::TriggerWiFiReconnectResponse :datatype-) "woosh_msgs/TriggerWiFiReconnectResponse")
(setf (get woosh_msgs::TriggerWiFiReconnectResponse :definition-)
      "string parameter
---
int32 status
string message

")



(provide :woosh_msgs/TriggerWiFiReconnect "adeb7eac4f60ecb52de64e214c385171")


