;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::Magnetisms)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'Magnetisms (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::MAGNETISMS")
  (make-package "WOOSH_MSGS::MAGNETISMS"))

(in-package "ROS")
;;//! \htmlinclude Magnetisms.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass woosh_msgs::Magnetisms
  :super ros::object
  :slots (_header _magnetisms ))

(defmethod woosh_msgs::Magnetisms
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:magnetisms __magnetisms) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _magnetisms __magnetisms)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:magnetisms
   (&rest __magnetisms)
   (if (keywordp (car __magnetisms))
       (send* _magnetisms __magnetisms)
     (progn
       (if __magnetisms (setq _magnetisms (car __magnetisms)))
       _magnetisms)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; woosh_msgs/Magnetism[] _magnetisms
    (apply #'+ (send-all _magnetisms :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; woosh_msgs/Magnetism[] _magnetisms
     (write-long (length _magnetisms) s)
     (dolist (elem _magnetisms)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; woosh_msgs/Magnetism[] _magnetisms
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _magnetisms (let (r) (dotimes (i n) (push (instance woosh_msgs::Magnetism :init) r)) r))
     (dolist (elem- _magnetisms)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get woosh_msgs::Magnetisms :md5sum-) "92532dc1a0b2153d3ec5e22e240f9557")
(setf (get woosh_msgs::Magnetisms :datatype-) "woosh_msgs/Magnetisms")
(setf (get woosh_msgs::Magnetisms :definition-)
      "Header header
Magnetism[] magnetisms
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
MSG: woosh_msgs/Magnetism
Header header
uint8 submodule
uint8 pointNum
uint32 status
float32 bias
")



(provide :woosh_msgs/Magnetisms "92532dc1a0b2153d3ec5e22e240f9557")


