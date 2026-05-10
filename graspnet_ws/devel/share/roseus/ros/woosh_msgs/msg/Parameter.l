;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::Parameter)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'Parameter (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::PARAMETER")
  (make-package "WOOSH_MSGS::PARAMETER"))

(in-package "ROS")
;;//! \htmlinclude Parameter.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass woosh_msgs::Parameter
  :super ros::object
  :slots (_header _wheelPerimeter _wheelDistant _ratioLeft _ratioRight _pulsePerCircle _maxRPM _minSpeed _maxLinear _maxAngular _joystickMaxLinear _joystickMaxAngular _maxSpeed ))

(defmethod woosh_msgs::Parameter
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:wheelPerimeter __wheelPerimeter) 0.0)
    ((:wheelDistant __wheelDistant) 0.0)
    ((:ratioLeft __ratioLeft) 0.0)
    ((:ratioRight __ratioRight) 0.0)
    ((:pulsePerCircle __pulsePerCircle) 0)
    ((:maxRPM __maxRPM) 0.0)
    ((:minSpeed __minSpeed) 0.0)
    ((:maxLinear __maxLinear) 0.0)
    ((:maxAngular __maxAngular) 0.0)
    ((:joystickMaxLinear __joystickMaxLinear) 0.0)
    ((:joystickMaxAngular __joystickMaxAngular) 0.0)
    ((:maxSpeed __maxSpeed) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _wheelPerimeter (float __wheelPerimeter))
   (setq _wheelDistant (float __wheelDistant))
   (setq _ratioLeft (float __ratioLeft))
   (setq _ratioRight (float __ratioRight))
   (setq _pulsePerCircle (round __pulsePerCircle))
   (setq _maxRPM (float __maxRPM))
   (setq _minSpeed (float __minSpeed))
   (setq _maxLinear (float __maxLinear))
   (setq _maxAngular (float __maxAngular))
   (setq _joystickMaxLinear (float __joystickMaxLinear))
   (setq _joystickMaxAngular (float __joystickMaxAngular))
   (setq _maxSpeed (float __maxSpeed))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:wheelPerimeter
   (&optional __wheelPerimeter)
   (if __wheelPerimeter (setq _wheelPerimeter __wheelPerimeter)) _wheelPerimeter)
  (:wheelDistant
   (&optional __wheelDistant)
   (if __wheelDistant (setq _wheelDistant __wheelDistant)) _wheelDistant)
  (:ratioLeft
   (&optional __ratioLeft)
   (if __ratioLeft (setq _ratioLeft __ratioLeft)) _ratioLeft)
  (:ratioRight
   (&optional __ratioRight)
   (if __ratioRight (setq _ratioRight __ratioRight)) _ratioRight)
  (:pulsePerCircle
   (&optional __pulsePerCircle)
   (if __pulsePerCircle (setq _pulsePerCircle __pulsePerCircle)) _pulsePerCircle)
  (:maxRPM
   (&optional __maxRPM)
   (if __maxRPM (setq _maxRPM __maxRPM)) _maxRPM)
  (:minSpeed
   (&optional __minSpeed)
   (if __minSpeed (setq _minSpeed __minSpeed)) _minSpeed)
  (:maxLinear
   (&optional __maxLinear)
   (if __maxLinear (setq _maxLinear __maxLinear)) _maxLinear)
  (:maxAngular
   (&optional __maxAngular)
   (if __maxAngular (setq _maxAngular __maxAngular)) _maxAngular)
  (:joystickMaxLinear
   (&optional __joystickMaxLinear)
   (if __joystickMaxLinear (setq _joystickMaxLinear __joystickMaxLinear)) _joystickMaxLinear)
  (:joystickMaxAngular
   (&optional __joystickMaxAngular)
   (if __joystickMaxAngular (setq _joystickMaxAngular __joystickMaxAngular)) _joystickMaxAngular)
  (:maxSpeed
   (&optional __maxSpeed)
   (if __maxSpeed (setq _maxSpeed __maxSpeed)) _maxSpeed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _wheelPerimeter
    4
    ;; float32 _wheelDistant
    4
    ;; float32 _ratioLeft
    4
    ;; float32 _ratioRight
    4
    ;; uint32 _pulsePerCircle
    4
    ;; float32 _maxRPM
    4
    ;; float32 _minSpeed
    4
    ;; float32 _maxLinear
    4
    ;; float32 _maxAngular
    4
    ;; float32 _joystickMaxLinear
    4
    ;; float32 _joystickMaxAngular
    4
    ;; float32 _maxSpeed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _wheelPerimeter
       (sys::poke _wheelPerimeter (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wheelDistant
       (sys::poke _wheelDistant (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ratioLeft
       (sys::poke _ratioLeft (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ratioRight
       (sys::poke _ratioRight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _pulsePerCircle
       (write-long _pulsePerCircle s)
     ;; float32 _maxRPM
       (sys::poke _maxRPM (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _minSpeed
       (sys::poke _minSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _maxLinear
       (sys::poke _maxLinear (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _maxAngular
       (sys::poke _maxAngular (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joystickMaxLinear
       (sys::poke _joystickMaxLinear (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joystickMaxAngular
       (sys::poke _joystickMaxAngular (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _maxSpeed
       (sys::poke _maxSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _wheelPerimeter
     (setq _wheelPerimeter (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wheelDistant
     (setq _wheelDistant (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ratioLeft
     (setq _ratioLeft (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ratioRight
     (setq _ratioRight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _pulsePerCircle
     (setq _pulsePerCircle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _maxRPM
     (setq _maxRPM (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _minSpeed
     (setq _minSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _maxLinear
     (setq _maxLinear (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _maxAngular
     (setq _maxAngular (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joystickMaxLinear
     (setq _joystickMaxLinear (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joystickMaxAngular
     (setq _joystickMaxAngular (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _maxSpeed
     (setq _maxSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get woosh_msgs::Parameter :md5sum-) "2433376ffe16488ef10a6bb56ed7b4a1")
(setf (get woosh_msgs::Parameter :datatype-) "woosh_msgs/Parameter")
(setf (get woosh_msgs::Parameter :definition-)
      "Header header
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



(provide :woosh_msgs/Parameter "2433376ffe16488ef10a6bb56ed7b4a1")


