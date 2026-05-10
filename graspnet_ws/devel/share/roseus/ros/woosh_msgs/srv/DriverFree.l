;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::DriverFree)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'DriverFree (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::DRIVERFREE")
  (make-package "WOOSH_MSGS::DRIVERFREE"))
(unless (find-package "WOOSH_MSGS::DRIVERFREEREQUEST")
  (make-package "WOOSH_MSGS::DRIVERFREEREQUEST"))
(unless (find-package "WOOSH_MSGS::DRIVERFREERESPONSE")
  (make-package "WOOSH_MSGS::DRIVERFREERESPONSE"))

(in-package "ROS")





(defclass woosh_msgs::DriverFreeRequest
  :super ros::object
  :slots (_mode _status ))

(defmethod woosh_msgs::DriverFreeRequest
  (:init
   (&key
    ((:mode __mode) 0)
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _status __status)
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass woosh_msgs::DriverFreeResponse
  :super ros::object
  :slots (_status _success _message ))

(defmethod woosh_msgs::DriverFreeResponse
  (:init
   (&key
    ((:status __status) nil)
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _status __status)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass woosh_msgs::DriverFree
  :super ros::object
  :slots ())

(setf (get woosh_msgs::DriverFree :md5sum-) "a0ef03ec75775620626a8ace8290514a")
(setf (get woosh_msgs::DriverFree :datatype-) "woosh_msgs/DriverFree")
(setf (get woosh_msgs::DriverFree :request) woosh_msgs::DriverFreeRequest)
(setf (get woosh_msgs::DriverFree :response) woosh_msgs::DriverFreeResponse)

(defmethod woosh_msgs::DriverFreeRequest
  (:response () (instance woosh_msgs::DriverFreeResponse :init)))

(setf (get woosh_msgs::DriverFreeRequest :md5sum-) "a0ef03ec75775620626a8ace8290514a")
(setf (get woosh_msgs::DriverFreeRequest :datatype-) "woosh_msgs/DriverFreeRequest")
(setf (get woosh_msgs::DriverFreeRequest :definition-)
      "uint8 mode #0.查询 1.设置
bool status
---
bool status
bool success
string message
")

(setf (get woosh_msgs::DriverFreeResponse :md5sum-) "a0ef03ec75775620626a8ace8290514a")
(setf (get woosh_msgs::DriverFreeResponse :datatype-) "woosh_msgs/DriverFreeResponse")
(setf (get woosh_msgs::DriverFreeResponse :definition-)
      "uint8 mode #0.查询 1.设置
bool status
---
bool status
bool success
string message
")



(provide :woosh_msgs/DriverFree "a0ef03ec75775620626a8ace8290514a")


