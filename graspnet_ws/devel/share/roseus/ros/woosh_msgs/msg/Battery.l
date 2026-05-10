;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::Battery)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'Battery (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::BATTERY")
  (make-package "WOOSH_MSGS::BATTERY"))

(in-package "ROS")
;;//! \htmlinclude Battery.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MANUALMODE*" (find-package "WOOSH_MSGS::BATTERY"))
(shadow '*MANUALMODE* (find-package "WOOSH_MSGS::BATTERY"))
(defconstant woosh_msgs::Battery::*MANUALMODE* 0)
(intern "*AUTOMODE*" (find-package "WOOSH_MSGS::BATTERY"))
(shadow '*AUTOMODE* (find-package "WOOSH_MSGS::BATTERY"))
(defconstant woosh_msgs::Battery::*AUTOMODE* 1)
(intern "*DISCHARGE*" (find-package "WOOSH_MSGS::BATTERY"))
(shadow '*DISCHARGE* (find-package "WOOSH_MSGS::BATTERY"))
(defconstant woosh_msgs::Battery::*DISCHARGE* 0)
(intern "*CHARGING*" (find-package "WOOSH_MSGS::BATTERY"))
(shadow '*CHARGING* (find-package "WOOSH_MSGS::BATTERY"))
(defconstant woosh_msgs::Battery::*CHARGING* 1)

(defun woosh_msgs::Battery-to-symbol (const)
  (cond
        ((= const 0) 'woosh_msgs::Battery::*manualMode*)
        ((= const 1) 'woosh_msgs::Battery::*autoMode*)
        ((= const 0) 'woosh_msgs::Battery::*discharge*)
        ((= const 1) 'woosh_msgs::Battery::*charging*)
        (t nil)))

(defclass woosh_msgs::Battery
  :super ros::object
  :slots (_header _submodule _batteryPercentage _chargeMode _chargeStatus _batteryVoltage _batteryCurrent _timeRemain _tempMax _tempMin _capacityRemain _capacityFull _capacityDesign _chargeCycle _batteryCycle _cellVoltageMax _cellVoltageMin _bmsStatus ))

(defmethod woosh_msgs::Battery
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:submodule __submodule) 0)
    ((:batteryPercentage __batteryPercentage) 0)
    ((:chargeMode __chargeMode) 0)
    ((:chargeStatus __chargeStatus) 0)
    ((:batteryVoltage __batteryVoltage) 0.0)
    ((:batteryCurrent __batteryCurrent) 0.0)
    ((:timeRemain __timeRemain) 0.0)
    ((:tempMax __tempMax) 0)
    ((:tempMin __tempMin) 0)
    ((:capacityRemain __capacityRemain) 0.0)
    ((:capacityFull __capacityFull) 0.0)
    ((:capacityDesign __capacityDesign) 0.0)
    ((:chargeCycle __chargeCycle) 0)
    ((:batteryCycle __batteryCycle) 0)
    ((:cellVoltageMax __cellVoltageMax) 0.0)
    ((:cellVoltageMin __cellVoltageMin) 0.0)
    ((:bmsStatus __bmsStatus) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _submodule (round __submodule))
   (setq _batteryPercentage (round __batteryPercentage))
   (setq _chargeMode (round __chargeMode))
   (setq _chargeStatus (round __chargeStatus))
   (setq _batteryVoltage (float __batteryVoltage))
   (setq _batteryCurrent (float __batteryCurrent))
   (setq _timeRemain (float __timeRemain))
   (setq _tempMax (round __tempMax))
   (setq _tempMin (round __tempMin))
   (setq _capacityRemain (float __capacityRemain))
   (setq _capacityFull (float __capacityFull))
   (setq _capacityDesign (float __capacityDesign))
   (setq _chargeCycle (round __chargeCycle))
   (setq _batteryCycle (round __batteryCycle))
   (setq _cellVoltageMax (float __cellVoltageMax))
   (setq _cellVoltageMin (float __cellVoltageMin))
   (setq _bmsStatus (round __bmsStatus))
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
  (:batteryPercentage
   (&optional __batteryPercentage)
   (if __batteryPercentage (setq _batteryPercentage __batteryPercentage)) _batteryPercentage)
  (:chargeMode
   (&optional __chargeMode)
   (if __chargeMode (setq _chargeMode __chargeMode)) _chargeMode)
  (:chargeStatus
   (&optional __chargeStatus)
   (if __chargeStatus (setq _chargeStatus __chargeStatus)) _chargeStatus)
  (:batteryVoltage
   (&optional __batteryVoltage)
   (if __batteryVoltage (setq _batteryVoltage __batteryVoltage)) _batteryVoltage)
  (:batteryCurrent
   (&optional __batteryCurrent)
   (if __batteryCurrent (setq _batteryCurrent __batteryCurrent)) _batteryCurrent)
  (:timeRemain
   (&optional __timeRemain)
   (if __timeRemain (setq _timeRemain __timeRemain)) _timeRemain)
  (:tempMax
   (&optional __tempMax)
   (if __tempMax (setq _tempMax __tempMax)) _tempMax)
  (:tempMin
   (&optional __tempMin)
   (if __tempMin (setq _tempMin __tempMin)) _tempMin)
  (:capacityRemain
   (&optional __capacityRemain)
   (if __capacityRemain (setq _capacityRemain __capacityRemain)) _capacityRemain)
  (:capacityFull
   (&optional __capacityFull)
   (if __capacityFull (setq _capacityFull __capacityFull)) _capacityFull)
  (:capacityDesign
   (&optional __capacityDesign)
   (if __capacityDesign (setq _capacityDesign __capacityDesign)) _capacityDesign)
  (:chargeCycle
   (&optional __chargeCycle)
   (if __chargeCycle (setq _chargeCycle __chargeCycle)) _chargeCycle)
  (:batteryCycle
   (&optional __batteryCycle)
   (if __batteryCycle (setq _batteryCycle __batteryCycle)) _batteryCycle)
  (:cellVoltageMax
   (&optional __cellVoltageMax)
   (if __cellVoltageMax (setq _cellVoltageMax __cellVoltageMax)) _cellVoltageMax)
  (:cellVoltageMin
   (&optional __cellVoltageMin)
   (if __cellVoltageMin (setq _cellVoltageMin __cellVoltageMin)) _cellVoltageMin)
  (:bmsStatus
   (&optional __bmsStatus)
   (if __bmsStatus (setq _bmsStatus __bmsStatus)) _bmsStatus)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _submodule
    1
    ;; uint8 _batteryPercentage
    1
    ;; uint8 _chargeMode
    1
    ;; uint8 _chargeStatus
    1
    ;; float32 _batteryVoltage
    4
    ;; float32 _batteryCurrent
    4
    ;; float32 _timeRemain
    4
    ;; int8 _tempMax
    1
    ;; int8 _tempMin
    1
    ;; float32 _capacityRemain
    4
    ;; float32 _capacityFull
    4
    ;; float32 _capacityDesign
    4
    ;; uint16 _chargeCycle
    2
    ;; uint16 _batteryCycle
    2
    ;; float32 _cellVoltageMax
    4
    ;; float32 _cellVoltageMin
    4
    ;; uint32 _bmsStatus
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
     ;; uint8 _batteryPercentage
       (write-byte _batteryPercentage s)
     ;; uint8 _chargeMode
       (write-byte _chargeMode s)
     ;; uint8 _chargeStatus
       (write-byte _chargeStatus s)
     ;; float32 _batteryVoltage
       (sys::poke _batteryVoltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _batteryCurrent
       (sys::poke _batteryCurrent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _timeRemain
       (sys::poke _timeRemain (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _tempMax
       (write-byte _tempMax s)
     ;; int8 _tempMin
       (write-byte _tempMin s)
     ;; float32 _capacityRemain
       (sys::poke _capacityRemain (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _capacityFull
       (sys::poke _capacityFull (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _capacityDesign
       (sys::poke _capacityDesign (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _chargeCycle
       (write-word _chargeCycle s)
     ;; uint16 _batteryCycle
       (write-word _batteryCycle s)
     ;; float32 _cellVoltageMax
       (sys::poke _cellVoltageMax (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cellVoltageMin
       (sys::poke _cellVoltageMin (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _bmsStatus
       (write-long _bmsStatus s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _submodule
     (setq _submodule (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _batteryPercentage
     (setq _batteryPercentage (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _chargeMode
     (setq _chargeMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _chargeStatus
     (setq _chargeStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _batteryVoltage
     (setq _batteryVoltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _batteryCurrent
     (setq _batteryCurrent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _timeRemain
     (setq _timeRemain (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _tempMax
     (setq _tempMax (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _tempMax 127) (setq _tempMax (- _tempMax 256)))
   ;; int8 _tempMin
     (setq _tempMin (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _tempMin 127) (setq _tempMin (- _tempMin 256)))
   ;; float32 _capacityRemain
     (setq _capacityRemain (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _capacityFull
     (setq _capacityFull (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _capacityDesign
     (setq _capacityDesign (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _chargeCycle
     (setq _chargeCycle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _batteryCycle
     (setq _batteryCycle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _cellVoltageMax
     (setq _cellVoltageMax (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cellVoltageMin
     (setq _cellVoltageMin (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _bmsStatus
     (setq _bmsStatus (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get woosh_msgs::Battery :md5sum-) "6e54ab8d3948bb7be2bfe95e3981bcd0")
(setf (get woosh_msgs::Battery :datatype-) "woosh_msgs/Battery")
(setf (get woosh_msgs::Battery :definition-)
      "Header header
uint8 submodule
uint8 batteryPercentage
uint8 chargeMode
uint8 chargeStatus
float32 batteryVoltage
float32 batteryCurrent
float32 timeRemain
int8 tempMax
int8 tempMin
float32 capacityRemain
float32 capacityFull
float32 capacityDesign
uint16 chargeCycle
uint16 batteryCycle
float32 cellVoltageMax
float32 cellVoltageMin
uint32 bmsStatus

#chargeMode
uint8 manualMode = 0
uint8 autoMode = 1

#chargeStatus
uint8 discharge = 0
uint8 charging = 1

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



(provide :woosh_msgs/Battery "6e54ab8d3948bb7be2bfe95e3981bcd0")


