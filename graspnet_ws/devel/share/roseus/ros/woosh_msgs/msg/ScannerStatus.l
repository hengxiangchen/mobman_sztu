;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::ScannerStatus)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'ScannerStatus (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::SCANNERSTATUS")
  (make-package "WOOSH_MSGS::SCANNERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ScannerStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass woosh_msgs::ScannerStatus
  :super ros::object
  :slots (_header _seq _safety_case _cut_off_path _status ))

(defmethod woosh_msgs::ScannerStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:seq __seq) 0)
    ((:safety_case __safety_case) 0)
    ((:cut_off_path __cut_off_path) 0)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _seq (round __seq))
   (setq _safety_case (round __safety_case))
   (setq _cut_off_path (round __cut_off_path))
   (setq _status (round __status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:safety_case
   (&optional __safety_case)
   (if __safety_case (setq _safety_case __safety_case)) _safety_case)
  (:cut_off_path
   (&optional __cut_off_path)
   (if __cut_off_path (setq _cut_off_path __cut_off_path)) _cut_off_path)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _seq
    1
    ;; uint8 _safety_case
    1
    ;; uint8 _cut_off_path
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
     ;; uint8 _seq
       (write-byte _seq s)
     ;; uint8 _safety_case
       (write-byte _safety_case s)
     ;; uint8 _cut_off_path
       (write-byte _cut_off_path s)
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _seq
     (setq _seq (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _safety_case
     (setq _safety_case (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cut_off_path
     (setq _cut_off_path (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get woosh_msgs::ScannerStatus :md5sum-) "24491610ed538a5aa9d765595030c5a7")
(setf (get woosh_msgs::ScannerStatus :datatype-) "woosh_msgs/ScannerStatus")
(setf (get woosh_msgs::ScannerStatus :definition-)
      "Header header
uint8 seq
uint8 safety_case
uint8 cut_off_path
uint8 status

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



(provide :woosh_msgs/ScannerStatus "24491610ed538a5aa9d765595030c5a7")


