;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::ForgetWiFi)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'ForgetWiFi (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::FORGETWIFI")
  (make-package "WOOSH_MSGS::FORGETWIFI"))
(unless (find-package "WOOSH_MSGS::FORGETWIFIREQUEST")
  (make-package "WOOSH_MSGS::FORGETWIFIREQUEST"))
(unless (find-package "WOOSH_MSGS::FORGETWIFIRESPONSE")
  (make-package "WOOSH_MSGS::FORGETWIFIRESPONSE"))

(in-package "ROS")





(defclass woosh_msgs::ForgetWiFiRequest
  :super ros::object
  :slots (_ssid ))

(defmethod woosh_msgs::ForgetWiFiRequest
  (:init
   (&key
    ((:ssid __ssid) "")
    )
   (send-super :init)
   (setq _ssid (string __ssid))
   self)
  (:ssid
   (&optional __ssid)
   (if __ssid (setq _ssid __ssid)) _ssid)
  (:serialization-length
   ()
   (+
    ;; string _ssid
    4 (length _ssid)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ssid
       (write-long (length _ssid) s) (princ _ssid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ssid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ssid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass woosh_msgs::ForgetWiFiResponse
  :super ros::object
  :slots (_status _message ))

(defmethod woosh_msgs::ForgetWiFiResponse
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

(defclass woosh_msgs::ForgetWiFi
  :super ros::object
  :slots ())

(setf (get woosh_msgs::ForgetWiFi :md5sum-) "64e231485c28313a3ae54ffe3dc3780a")
(setf (get woosh_msgs::ForgetWiFi :datatype-) "woosh_msgs/ForgetWiFi")
(setf (get woosh_msgs::ForgetWiFi :request) woosh_msgs::ForgetWiFiRequest)
(setf (get woosh_msgs::ForgetWiFi :response) woosh_msgs::ForgetWiFiResponse)

(defmethod woosh_msgs::ForgetWiFiRequest
  (:response () (instance woosh_msgs::ForgetWiFiResponse :init)))

(setf (get woosh_msgs::ForgetWiFiRequest :md5sum-) "64e231485c28313a3ae54ffe3dc3780a")
(setf (get woosh_msgs::ForgetWiFiRequest :datatype-) "woosh_msgs/ForgetWiFiRequest")
(setf (get woosh_msgs::ForgetWiFiRequest :definition-)
      "string ssid
---
int32 status
string message

")

(setf (get woosh_msgs::ForgetWiFiResponse :md5sum-) "64e231485c28313a3ae54ffe3dc3780a")
(setf (get woosh_msgs::ForgetWiFiResponse :datatype-) "woosh_msgs/ForgetWiFiResponse")
(setf (get woosh_msgs::ForgetWiFiResponse :definition-)
      "string ssid
---
int32 status
string message

")



(provide :woosh_msgs/ForgetWiFi "64e231485c28313a3ae54ffe3dc3780a")


