;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::IOModule)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'IOModule (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::IOMODULE")
  (make-package "WOOSH_MSGS::IOMODULE"))

(in-package "ROS")
;;//! \htmlinclude IOModule.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass woosh_msgs::IOModule
  :super ros::object
  :slots (_header _module _submodule _num _status ))

(defmethod woosh_msgs::IOModule
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:module __module) 0)
    ((:submodule __submodule) 0)
    ((:num __num) 0)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _module (round __module))
   (setq _submodule (round __submodule))
   (setq _num (round __num))
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
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
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
    ;; uint8 _num
    1
    ;; uint32 _status
    4
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
     ;; uint8 _num
       (write-byte _num s)
     ;; uint32 _status
       (write-long _status s)
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
   ;; uint8 _num
     (setq _num (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get woosh_msgs::IOModule :md5sum-) "57d5d3fa08644f735300b724008a2b8e")
(setf (get woosh_msgs::IOModule :datatype-) "woosh_msgs/IOModule")
(setf (get woosh_msgs::IOModule :definition-)
      "Header header
uint8 module
uint8 submodule
uint8 num
uint32 status

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



(provide :woosh_msgs/IOModule "57d5d3fa08644f735300b724008a2b8e")


