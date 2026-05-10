;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::RFID)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'RFID (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::RFID")
  (make-package "WOOSH_MSGS::RFID"))

(in-package "ROS")
;;//! \htmlinclude RFID.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass woosh_msgs::RFID
  :super ros::object
  :slots (_header _submodule _rfidType _rfid _flag _signal ))

(defmethod woosh_msgs::RFID
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:submodule __submodule) 0)
    ((:rfidType __rfidType) 0)
    ((:rfid __rfid) 0)
    ((:flag __flag) 0)
    ((:signal __signal) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _submodule (round __submodule))
   (setq _rfidType (round __rfidType))
   (setq _rfid (round __rfid))
   (setq _flag (round __flag))
   (setq _signal (round __signal))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:submodule
   (&optional __submodule)
   (if __submodule (setq _submodule __submodule)) _submodule)
  (:rfidType
   (&optional __rfidType)
   (if __rfidType (setq _rfidType __rfidType)) _rfidType)
  (:rfid
   (&optional __rfid)
   (if __rfid (setq _rfid __rfid)) _rfid)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:signal
   (&optional __signal)
   (if __signal (setq _signal __signal)) _signal)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _submodule
    1
    ;; uint16 _rfidType
    2
    ;; uint16 _rfid
    2
    ;; uint8 _flag
    1
    ;; uint8 _signal
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _submodule
       (write-byte _submodule s)
     ;; uint16 _rfidType
       (write-word _rfidType s)
     ;; uint16 _rfid
       (write-word _rfid s)
     ;; uint8 _flag
       (write-byte _flag s)
     ;; uint8 _signal
       (write-byte _signal s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _submodule
     (setq _submodule (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _rfidType
     (setq _rfidType (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _rfid
     (setq _rfid (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _flag
     (setq _flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _signal
     (setq _signal (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get woosh_msgs::RFID :md5sum-) "db8c502dc6e5f530e881175b0ae270e7")
(setf (get woosh_msgs::RFID :datatype-) "woosh_msgs/RFID")
(setf (get woosh_msgs::RFID :definition-)
      "Header header
uint8 submodule
uint16 rfidType
uint16 rfid
uint8 flag
uint8 signal
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

")



(provide :woosh_msgs/RFID "db8c502dc6e5f530e881175b0ae270e7")


