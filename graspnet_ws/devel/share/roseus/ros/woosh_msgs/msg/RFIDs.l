;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::RFIDs)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'RFIDs (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::RFIDS")
  (make-package "WOOSH_MSGS::RFIDS"))

(in-package "ROS")
;;//! \htmlinclude RFIDs.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass woosh_msgs::RFIDs
  :super ros::object
  :slots (_header _RFIDs ))

(defmethod woosh_msgs::RFIDs
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:RFIDs __RFIDs) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _RFIDs __RFIDs)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:RFIDs
   (&rest __RFIDs)
   (if (keywordp (car __RFIDs))
       (send* _RFIDs __RFIDs)
     (progn
       (if __RFIDs (setq _RFIDs (car __RFIDs)))
       _RFIDs)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; woosh_msgs/RFID[] _RFIDs
    (apply #'+ (send-all _RFIDs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; woosh_msgs/RFID[] _RFIDs
     (write-long (length _RFIDs) s)
     (dolist (elem _RFIDs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; woosh_msgs/RFID[] _RFIDs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _RFIDs (let (r) (dotimes (i n) (push (instance woosh_msgs::RFID :init) r)) r))
     (dolist (elem- _RFIDs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get woosh_msgs::RFIDs :md5sum-) "c8455bbcbfc144fa46bb2c3d0fed4433")
(setf (get woosh_msgs::RFIDs :datatype-) "woosh_msgs/RFIDs")
(setf (get woosh_msgs::RFIDs :definition-)
      "Header header
RFID[] RFIDs
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
MSG: woosh_msgs/RFID
Header header
uint8 submodule
uint16 rfidType
uint16 rfid
uint8 flag
uint8 signal
")



(provide :woosh_msgs/RFIDs "c8455bbcbfc144fa46bb2c3d0fed4433")


