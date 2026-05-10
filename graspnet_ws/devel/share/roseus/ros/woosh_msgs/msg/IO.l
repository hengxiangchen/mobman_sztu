;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::IO)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'IO (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::IO")
  (make-package "WOOSH_MSGS::IO"))

(in-package "ROS")
;;//! \htmlinclude IO.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass woosh_msgs::IO
  :super ros::object
  :slots (_header _module _submodule _id _status ))

(defmethod woosh_msgs::IO
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:module __module) 0)
    ((:submodule __submodule) 0)
    ((:id __id) 0)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _module (round __module))
   (setq _submodule (round __submodule))
   (setq _id (round __id))
   (setq _status (round __status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:module
   (&optional __module)
   (if __module (setq _module __module)) _module)
  (:submodule
   (&optional __submodule)
   (if __submodule (setq _submodule __submodule)) _submodule)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _module
    1
    ;; uint8 _submodule
    1
    ;; uint8 _id
    1
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _module
       (write-byte _module s)
     ;; uint8 _submodule
       (write-byte _submodule s)
     ;; uint8 _id
       (write-byte _id s)
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _module
     (setq _module (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _submodule
     (setq _submodule (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get woosh_msgs::IO :md5sum-) "fe404ac7c7eb28cb42b5db91b2ae3963")
(setf (get woosh_msgs::IO :datatype-) "woosh_msgs/IO")
(setf (get woosh_msgs::IO :definition-)
      "Header header
uint8 module
uint8 submodule
uint8 id
uint8 status

#channel and IO
#0x01 movebase key
#0x02 motor
#0x03 alarm  0.Beep 1.red 2.yellow 3.green 4.laser
#0x81 photoelec

#status
#0 default
#1 trigger
#2 stop

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



(provide :woosh_msgs/IO "fe404ac7c7eb28cb42b5db91b2ae3963")


