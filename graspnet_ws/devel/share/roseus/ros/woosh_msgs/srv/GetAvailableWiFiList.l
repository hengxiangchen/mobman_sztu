;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::GetAvailableWiFiList)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'GetAvailableWiFiList (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::GETAVAILABLEWIFILIST")
  (make-package "WOOSH_MSGS::GETAVAILABLEWIFILIST"))
(unless (find-package "WOOSH_MSGS::GETAVAILABLEWIFILISTREQUEST")
  (make-package "WOOSH_MSGS::GETAVAILABLEWIFILISTREQUEST"))
(unless (find-package "WOOSH_MSGS::GETAVAILABLEWIFILISTRESPONSE")
  (make-package "WOOSH_MSGS::GETAVAILABLEWIFILISTRESPONSE"))

(in-package "ROS")





(defclass woosh_msgs::GetAvailableWiFiListRequest
  :super ros::object
  :slots (_timeout ))

(defmethod woosh_msgs::GetAvailableWiFiListRequest
  (:init
   (&key
    ((:timeout __timeout) 0)
    )
   (send-super :init)
   (setq _timeout (round __timeout))
   self)
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:serialization-length
   ()
   (+
    ;; int32 _timeout
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _timeout
       (write-long _timeout s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _timeout
     (setq _timeout (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass woosh_msgs::GetAvailableWiFiListResponse
  :super ros::object
  :slots (_status _message _wifi_list ))

(defmethod woosh_msgs::GetAvailableWiFiListResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:wifi_list __wifi_list) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _wifi_list (string __wifi_list))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:wifi_list
   (&optional __wifi_list)
   (if __wifi_list (setq _wifi_list __wifi_list)) _wifi_list)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; string _wifi_list
    4 (length _wifi_list)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; string _wifi_list
       (write-long (length _wifi_list) s) (princ _wifi_list s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _wifi_list
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _wifi_list (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass woosh_msgs::GetAvailableWiFiList
  :super ros::object
  :slots ())

(setf (get woosh_msgs::GetAvailableWiFiList :md5sum-) "f05424b77a66a214dd3a93c8ea8e16bb")
(setf (get woosh_msgs::GetAvailableWiFiList :datatype-) "woosh_msgs/GetAvailableWiFiList")
(setf (get woosh_msgs::GetAvailableWiFiList :request) woosh_msgs::GetAvailableWiFiListRequest)
(setf (get woosh_msgs::GetAvailableWiFiList :response) woosh_msgs::GetAvailableWiFiListResponse)

(defmethod woosh_msgs::GetAvailableWiFiListRequest
  (:response () (instance woosh_msgs::GetAvailableWiFiListResponse :init)))

(setf (get woosh_msgs::GetAvailableWiFiListRequest :md5sum-) "f05424b77a66a214dd3a93c8ea8e16bb")
(setf (get woosh_msgs::GetAvailableWiFiListRequest :datatype-) "woosh_msgs/GetAvailableWiFiListRequest")
(setf (get woosh_msgs::GetAvailableWiFiListRequest :definition-)
      "int32 timeout
---
int32 status
string message
string wifi_list

")

(setf (get woosh_msgs::GetAvailableWiFiListResponse :md5sum-) "f05424b77a66a214dd3a93c8ea8e16bb")
(setf (get woosh_msgs::GetAvailableWiFiListResponse :datatype-) "woosh_msgs/GetAvailableWiFiListResponse")
(setf (get woosh_msgs::GetAvailableWiFiListResponse :definition-)
      "int32 timeout
---
int32 status
string message
string wifi_list

")



(provide :woosh_msgs/GetAvailableWiFiList "f05424b77a66a214dd3a93c8ea8e16bb")


