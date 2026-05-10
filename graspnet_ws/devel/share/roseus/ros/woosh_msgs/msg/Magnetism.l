;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::Magnetism)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'Magnetism (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::MAGNETISM")
  (make-package "WOOSH_MSGS::MAGNETISM"))

(in-package "ROS")
;;//! \htmlinclude Magnetism.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass woosh_msgs::Magnetism
  :super ros::object
  :slots (_header _submodule _pointNum _status _bias ))

(defmethod woosh_msgs::Magnetism
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:submodule __submodule) 0)
    ((:pointNum __pointNum) 0)
    ((:status __status) 0)
    ((:bias __bias) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _submodule (round __submodule))
   (setq _pointNum (round __pointNum))
   (setq _status (round __status))
   (setq _bias (float __bias))
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
  (:pointNum
   (&optional __pointNum)
   (if __pointNum (setq _pointNum __pointNum)) _pointNum)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:bias
   (&optional __bias)
   (if __bias (setq _bias __bias)) _bias)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _submodule
    1
    ;; uint8 _pointNum
    1
    ;; uint32 _status
    4
    ;; float32 _bias
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _submodule
       (write-byte _submodule s)
     ;; uint8 _pointNum
       (write-byte _pointNum s)
     ;; uint32 _status
       (write-long _status s)
     ;; float32 _bias
       (sys::poke _bias (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _submodule
     (setq _submodule (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _pointNum
     (setq _pointNum (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _bias
     (setq _bias (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get woosh_msgs::Magnetism :md5sum-) "5bdc7be6f13606547818ddcf8b28f617")
(setf (get woosh_msgs::Magnetism :datatype-) "woosh_msgs/Magnetism")
(setf (get woosh_msgs::Magnetism :definition-)
      "Header header
uint8 submodule
uint8 pointNum
uint32 status
float32 bias
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



(provide :woosh_msgs/Magnetism "5bdc7be6f13606547818ddcf8b28f617")


