;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::Information)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'Information (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::INFORMATION")
  (make-package "WOOSH_MSGS::INFORMATION"))

(in-package "ROS")
;;//! \htmlinclude Information.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass woosh_msgs::Information
  :super ros::object
  :slots (_header _hardwareVersion _softwareVersion _IAPSoftwareVersion _movebaseType _parameter ))

(defmethod woosh_msgs::Information
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:hardwareVersion __hardwareVersion) "")
    ((:softwareVersion __softwareVersion) "")
    ((:IAPSoftwareVersion __IAPSoftwareVersion) "")
    ((:movebaseType __movebaseType) "")
    ((:parameter __parameter) (instance woosh_msgs::Parameter :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _hardwareVersion (string __hardwareVersion))
   (setq _softwareVersion (string __softwareVersion))
   (setq _IAPSoftwareVersion (string __IAPSoftwareVersion))
   (setq _movebaseType (string __movebaseType))
   (setq _parameter __parameter)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:hardwareVersion
   (&optional __hardwareVersion)
   (if __hardwareVersion (setq _hardwareVersion __hardwareVersion)) _hardwareVersion)
  (:softwareVersion
   (&optional __softwareVersion)
   (if __softwareVersion (setq _softwareVersion __softwareVersion)) _softwareVersion)
  (:IAPSoftwareVersion
   (&optional __IAPSoftwareVersion)
   (if __IAPSoftwareVersion (setq _IAPSoftwareVersion __IAPSoftwareVersion)) _IAPSoftwareVersion)
  (:movebaseType
   (&optional __movebaseType)
   (if __movebaseType (setq _movebaseType __movebaseType)) _movebaseType)
  (:parameter
   (&rest __parameter)
   (if (keywordp (car __parameter))
       (send* _parameter __parameter)
     (progn
       (if __parameter (setq _parameter (car __parameter)))
       _parameter)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _hardwareVersion
    4 (length _hardwareVersion)
    ;; string _softwareVersion
    4 (length _softwareVersion)
    ;; string _IAPSoftwareVersion
    4 (length _IAPSoftwareVersion)
    ;; string _movebaseType
    4 (length _movebaseType)
    ;; woosh_msgs/Parameter _parameter
    (send _parameter :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _hardwareVersion
       (write-long (length _hardwareVersion) s) (princ _hardwareVersion s)
     ;; string _softwareVersion
       (write-long (length _softwareVersion) s) (princ _softwareVersion s)
     ;; string _IAPSoftwareVersion
       (write-long (length _IAPSoftwareVersion) s) (princ _IAPSoftwareVersion s)
     ;; string _movebaseType
       (write-long (length _movebaseType) s) (princ _movebaseType s)
     ;; woosh_msgs/Parameter _parameter
       (send _parameter :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _hardwareVersion
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hardwareVersion (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _softwareVersion
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _softwareVersion (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _IAPSoftwareVersion
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _IAPSoftwareVersion (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _movebaseType
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _movebaseType (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; woosh_msgs/Parameter _parameter
     (send _parameter :deserialize buf ptr-) (incf ptr- (send _parameter :serialization-length))
   ;;
   self)
  )

(setf (get woosh_msgs::Information :md5sum-) "0f0fb1764f6f87e8178f98663f3ce6a9")
(setf (get woosh_msgs::Information :datatype-) "woosh_msgs/Information")
(setf (get woosh_msgs::Information :definition-)
      "Header header
string hardwareVersion
string softwareVersion
string IAPSoftwareVersion
string movebaseType
Parameter parameter
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
MSG: woosh_msgs/Parameter
Header header
float32 wheelPerimeter
float32 wheelDistant
float32 ratioLeft
float32 ratioRight
uint32 pulsePerCircle
float32 maxRPM
float32 minSpeed
float32 maxLinear
float32 maxAngular
float32 joystickMaxLinear
float32 joystickMaxAngular
float32 maxSpeed

")



(provide :woosh_msgs/Information "0f0fb1764f6f87e8178f98663f3ce6a9")


