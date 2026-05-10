;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::BMS)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'BMS (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::BMS")
  (make-package "WOOSH_MSGS::BMS"))

(in-package "ROS")
;;//! \htmlinclude BMS.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass woosh_msgs::BMS
  :super ros::object
  :slots (_header _BMSStatus _current _voltageMax _voltageMin _voltageTotal _temperatureMax _temperatureMin _chargeCycle _capacityResidue _capacityTotal _switchStatus ))

(defmethod woosh_msgs::BMS
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:BMSStatus __BMSStatus) 0)
    ((:current __current) 0.0)
    ((:voltageMax __voltageMax) 0.0)
    ((:voltageMin __voltageMin) 0.0)
    ((:voltageTotal __voltageTotal) 0.0)
    ((:temperatureMax __temperatureMax) 0.0)
    ((:temperatureMin __temperatureMin) 0.0)
    ((:chargeCycle __chargeCycle) 0)
    ((:capacityResidue __capacityResidue) 0.0)
    ((:capacityTotal __capacityTotal) 0.0)
    ((:switchStatus __switchStatus) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _BMSStatus (round __BMSStatus))
   (setq _current (float __current))
   (setq _voltageMax (float __voltageMax))
   (setq _voltageMin (float __voltageMin))
   (setq _voltageTotal (float __voltageTotal))
   (setq _temperatureMax (float __temperatureMax))
   (setq _temperatureMin (float __temperatureMin))
   (setq _chargeCycle (round __chargeCycle))
   (setq _capacityResidue (float __capacityResidue))
   (setq _capacityTotal (float __capacityTotal))
   (setq _switchStatus (round __switchStatus))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:BMSStatus
   (&optional __BMSStatus)
   (if __BMSStatus (setq _BMSStatus __BMSStatus)) _BMSStatus)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:voltageMax
   (&optional __voltageMax)
   (if __voltageMax (setq _voltageMax __voltageMax)) _voltageMax)
  (:voltageMin
   (&optional __voltageMin)
   (if __voltageMin (setq _voltageMin __voltageMin)) _voltageMin)
  (:voltageTotal
   (&optional __voltageTotal)
   (if __voltageTotal (setq _voltageTotal __voltageTotal)) _voltageTotal)
  (:temperatureMax
   (&optional __temperatureMax)
   (if __temperatureMax (setq _temperatureMax __temperatureMax)) _temperatureMax)
  (:temperatureMin
   (&optional __temperatureMin)
   (if __temperatureMin (setq _temperatureMin __temperatureMin)) _temperatureMin)
  (:chargeCycle
   (&optional __chargeCycle)
   (if __chargeCycle (setq _chargeCycle __chargeCycle)) _chargeCycle)
  (:capacityResidue
   (&optional __capacityResidue)
   (if __capacityResidue (setq _capacityResidue __capacityResidue)) _capacityResidue)
  (:capacityTotal
   (&optional __capacityTotal)
   (if __capacityTotal (setq _capacityTotal __capacityTotal)) _capacityTotal)
  (:switchStatus
   (&optional __switchStatus)
   (if __switchStatus (setq _switchStatus __switchStatus)) _switchStatus)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _BMSStatus
    4
    ;; float32 _current
    4
    ;; float32 _voltageMax
    4
    ;; float32 _voltageMin
    4
    ;; float32 _voltageTotal
    4
    ;; float32 _temperatureMax
    4
    ;; float32 _temperatureMin
    4
    ;; uint16 _chargeCycle
    2
    ;; float32 _capacityResidue
    4
    ;; float32 _capacityTotal
    4
    ;; uint8 _switchStatus
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _BMSStatus
       (write-long _BMSStatus s)
     ;; float32 _current
       (sys::poke _current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _voltageMax
       (sys::poke _voltageMax (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _voltageMin
       (sys::poke _voltageMin (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _voltageTotal
       (sys::poke _voltageTotal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temperatureMax
       (sys::poke _temperatureMax (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temperatureMin
       (sys::poke _temperatureMin (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _chargeCycle
       (write-word _chargeCycle s)
     ;; float32 _capacityResidue
       (sys::poke _capacityResidue (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _capacityTotal
       (sys::poke _capacityTotal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _switchStatus
       (write-byte _switchStatus s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _BMSStatus
     (setq _BMSStatus (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _current
     (setq _current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _voltageMax
     (setq _voltageMax (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _voltageMin
     (setq _voltageMin (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _voltageTotal
     (setq _voltageTotal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temperatureMax
     (setq _temperatureMax (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temperatureMin
     (setq _temperatureMin (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _chargeCycle
     (setq _chargeCycle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _capacityResidue
     (setq _capacityResidue (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _capacityTotal
     (setq _capacityTotal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _switchStatus
     (setq _switchStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get woosh_msgs::BMS :md5sum-) "90dcbb86327a728ae02a9e6f441bea51")
(setf (get woosh_msgs::BMS :datatype-) "woosh_msgs/BMS")
(setf (get woosh_msgs::BMS :definition-)
      "Header header
uint32 BMSStatus
float32 current
float32 voltageMax
float32 voltageMin
float32 voltageTotal
float32 temperatureMax
float32 temperatureMin
uint16 chargeCycle
float32 capacityResidue
float32 capacityTotal
uint8 switchStatus

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



(provide :woosh_msgs/BMS "90dcbb86327a728ae02a9e6f441bea51")


