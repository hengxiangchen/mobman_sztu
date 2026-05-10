;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::IOs)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'IOs (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::IOS")
  (make-package "WOOSH_MSGS::IOS"))

(in-package "ROS")
;;//! \htmlinclude IOs.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass woosh_msgs::IOs
  :super ros::object
  :slots (_header _IOs ))

(defmethod woosh_msgs::IOs
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:IOs __IOs) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _IOs __IOs)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:IOs
   (&rest __IOs)
   (if (keywordp (car __IOs))
       (send* _IOs __IOs)
     (progn
       (if __IOs (setq _IOs (car __IOs)))
       _IOs)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; woosh_msgs/IO[] _IOs
    (apply #'+ (send-all _IOs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; woosh_msgs/IO[] _IOs
     (write-long (length _IOs) s)
     (dolist (elem _IOs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; woosh_msgs/IO[] _IOs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _IOs (let (r) (dotimes (i n) (push (instance woosh_msgs::IO :init) r)) r))
     (dolist (elem- _IOs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get woosh_msgs::IOs :md5sum-) "5f7e2f12a8fa7c08c84c3dca127e2b59")
(setf (get woosh_msgs::IOs :datatype-) "woosh_msgs/IOs")
(setf (get woosh_msgs::IOs :definition-)
      "Header header
IO[] IOs

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

================================================================================
MSG: woosh_msgs/IO
Header header
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

")



(provide :woosh_msgs/IOs "5f7e2f12a8fa7c08c84c3dca127e2b59")


