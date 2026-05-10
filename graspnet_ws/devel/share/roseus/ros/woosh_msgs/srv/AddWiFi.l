;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::AddWiFi)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'AddWiFi (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::ADDWIFI")
  (make-package "WOOSH_MSGS::ADDWIFI"))
(unless (find-package "WOOSH_MSGS::ADDWIFIREQUEST")
  (make-package "WOOSH_MSGS::ADDWIFIREQUEST"))
(unless (find-package "WOOSH_MSGS::ADDWIFIRESPONSE")
  (make-package "WOOSH_MSGS::ADDWIFIRESPONSE"))

(in-package "ROS")





(defclass woosh_msgs::AddWiFiRequest
  :super ros::object
  :slots (_wifi_parameter _connect_now ))

(defmethod woosh_msgs::AddWiFiRequest
  (:init
   (&key
    ((:wifi_parameter __wifi_parameter) "")
    ((:connect_now __connect_now) nil)
    )
   (send-super :init)
   (setq _wifi_parameter (string __wifi_parameter))
   (setq _connect_now __connect_now)
   self)
  (:wifi_parameter
   (&optional __wifi_parameter)
   (if __wifi_parameter (setq _wifi_parameter __wifi_parameter)) _wifi_parameter)
  (:connect_now
   (&optional (__connect_now :null))
   (if (not (eq __connect_now :null)) (setq _connect_now __connect_now)) _connect_now)
  (:serialization-length
   ()
   (+
    ;; string _wifi_parameter
    4 (length _wifi_parameter)
    ;; bool _connect_now
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _wifi_parameter
       (write-long (length _wifi_parameter) s) (princ _wifi_parameter s)
     ;; bool _connect_now
       (if _connect_now (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _wifi_parameter
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _wifi_parameter (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _connect_now
     (setq _connect_now (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass woosh_msgs::AddWiFiResponse
  :super ros::object
  :slots (_status _message ))

(defmethod woosh_msgs::AddWiFiResponse
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

(defclass woosh_msgs::AddWiFi
  :super ros::object
  :slots ())

(setf (get woosh_msgs::AddWiFi :md5sum-) "01216da3b47dc86d0d6d1f4a6238121c")
(setf (get woosh_msgs::AddWiFi :datatype-) "woosh_msgs/AddWiFi")
(setf (get woosh_msgs::AddWiFi :request) woosh_msgs::AddWiFiRequest)
(setf (get woosh_msgs::AddWiFi :response) woosh_msgs::AddWiFiResponse)

(defmethod woosh_msgs::AddWiFiRequest
  (:response () (instance woosh_msgs::AddWiFiResponse :init)))

(setf (get woosh_msgs::AddWiFiRequest :md5sum-) "01216da3b47dc86d0d6d1f4a6238121c")
(setf (get woosh_msgs::AddWiFiRequest :datatype-) "woosh_msgs/AddWiFiRequest")
(setf (get woosh_msgs::AddWiFiRequest :definition-)
      "string wifi_parameter
bool connect_now
---
int32 status
string message

")

(setf (get woosh_msgs::AddWiFiResponse :md5sum-) "01216da3b47dc86d0d6d1f4a6238121c")
(setf (get woosh_msgs::AddWiFiResponse :datatype-) "woosh_msgs/AddWiFiResponse")
(setf (get woosh_msgs::AddWiFiResponse :definition-)
      "string wifi_parameter
bool connect_now
---
int32 status
string message

")



(provide :woosh_msgs/AddWiFi "01216da3b47dc86d0d6d1f4a6238121c")


