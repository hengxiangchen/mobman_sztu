;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::RfRemoteController)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'RfRemoteController (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::RFREMOTECONTROLLER")
  (make-package "WOOSH_MSGS::RFREMOTECONTROLLER"))

(in-package "ROS")
;;//! \htmlinclude RfRemoteController.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass woosh_msgs::RfRemoteController
  :super ros::object
  :slots (_header _address _keys ))

(defmethod woosh_msgs::RfRemoteController
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:address __address) 0)
    ((:keys __keys) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _address (round __address))
   (setq _keys (round __keys))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:address
   (&optional __address)
   (if __address (setq _address __address)) _address)
  (:keys
   (&optional __keys)
   (if __keys (setq _keys __keys)) _keys)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _address
    4
    ;; uint8 _keys
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _address
       (write-long _address s)
     ;; uint8 _keys
       (write-byte _keys s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _address
     (setq _address (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _keys
     (setq _keys (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get woosh_msgs::RfRemoteController :md5sum-) "d0bb9831bfdb4ac298154bf7de9a750f")
(setf (get woosh_msgs::RfRemoteController :datatype-) "woosh_msgs/RfRemoteController")
(setf (get woosh_msgs::RfRemoteController :definition-)
      "Header header
uint32 address
uint8 keys


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



(provide :woosh_msgs/RfRemoteController "d0bb9831bfdb4ac298154bf7de9a750f")


