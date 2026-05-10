;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::Log)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'Log (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::LOG")
  (make-package "WOOSH_MSGS::LOG"))

(in-package "ROS")
;;//! \htmlinclude Log.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass woosh_msgs::Log
  :super ros::object
  :slots (_header _linearX _linearY _angularZ _odometryX _odometryY _odometryTheta _odometryImuTheta _odometryLinearX _odometryLinearY _odometryAngularZ _pwmLeft _pwmRight _rSpeedLeft _rSpeedRight _pulseLeft _pulseRight _errorType _errorStatus ))

(defmethod woosh_msgs::Log
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:linearX __linearX) 0.0)
    ((:linearY __linearY) 0.0)
    ((:angularZ __angularZ) 0.0)
    ((:odometryX __odometryX) 0.0)
    ((:odometryY __odometryY) 0.0)
    ((:odometryTheta __odometryTheta) 0.0)
    ((:odometryImuTheta __odometryImuTheta) 0.0)
    ((:odometryLinearX __odometryLinearX) 0.0)
    ((:odometryLinearY __odometryLinearY) 0.0)
    ((:odometryAngularZ __odometryAngularZ) 0.0)
    ((:pwmLeft __pwmLeft) 0.0)
    ((:pwmRight __pwmRight) 0.0)
    ((:rSpeedLeft __rSpeedLeft) 0.0)
    ((:rSpeedRight __rSpeedRight) 0.0)
    ((:pulseLeft __pulseLeft) 0)
    ((:pulseRight __pulseRight) 0)
    ((:errorType __errorType) 0)
    ((:errorStatus __errorStatus) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _linearX (float __linearX))
   (setq _linearY (float __linearY))
   (setq _angularZ (float __angularZ))
   (setq _odometryX (float __odometryX))
   (setq _odometryY (float __odometryY))
   (setq _odometryTheta (float __odometryTheta))
   (setq _odometryImuTheta (float __odometryImuTheta))
   (setq _odometryLinearX (float __odometryLinearX))
   (setq _odometryLinearY (float __odometryLinearY))
   (setq _odometryAngularZ (float __odometryAngularZ))
   (setq _pwmLeft (float __pwmLeft))
   (setq _pwmRight (float __pwmRight))
   (setq _rSpeedLeft (float __rSpeedLeft))
   (setq _rSpeedRight (float __rSpeedRight))
   (setq _pulseLeft (round __pulseLeft))
   (setq _pulseRight (round __pulseRight))
   (setq _errorType (round __errorType))
   (setq _errorStatus (round __errorStatus))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:linearX
   (&optional __linearX)
   (if __linearX (setq _linearX __linearX)) _linearX)
  (:linearY
   (&optional __linearY)
   (if __linearY (setq _linearY __linearY)) _linearY)
  (:angularZ
   (&optional __angularZ)
   (if __angularZ (setq _angularZ __angularZ)) _angularZ)
  (:odometryX
   (&optional __odometryX)
   (if __odometryX (setq _odometryX __odometryX)) _odometryX)
  (:odometryY
   (&optional __odometryY)
   (if __odometryY (setq _odometryY __odometryY)) _odometryY)
  (:odometryTheta
   (&optional __odometryTheta)
   (if __odometryTheta (setq _odometryTheta __odometryTheta)) _odometryTheta)
  (:odometryImuTheta
   (&optional __odometryImuTheta)
   (if __odometryImuTheta (setq _odometryImuTheta __odometryImuTheta)) _odometryImuTheta)
  (:odometryLinearX
   (&optional __odometryLinearX)
   (if __odometryLinearX (setq _odometryLinearX __odometryLinearX)) _odometryLinearX)
  (:odometryLinearY
   (&optional __odometryLinearY)
   (if __odometryLinearY (setq _odometryLinearY __odometryLinearY)) _odometryLinearY)
  (:odometryAngularZ
   (&optional __odometryAngularZ)
   (if __odometryAngularZ (setq _odometryAngularZ __odometryAngularZ)) _odometryAngularZ)
  (:pwmLeft
   (&optional __pwmLeft)
   (if __pwmLeft (setq _pwmLeft __pwmLeft)) _pwmLeft)
  (:pwmRight
   (&optional __pwmRight)
   (if __pwmRight (setq _pwmRight __pwmRight)) _pwmRight)
  (:rSpeedLeft
   (&optional __rSpeedLeft)
   (if __rSpeedLeft (setq _rSpeedLeft __rSpeedLeft)) _rSpeedLeft)
  (:rSpeedRight
   (&optional __rSpeedRight)
   (if __rSpeedRight (setq _rSpeedRight __rSpeedRight)) _rSpeedRight)
  (:pulseLeft
   (&optional __pulseLeft)
   (if __pulseLeft (setq _pulseLeft __pulseLeft)) _pulseLeft)
  (:pulseRight
   (&optional __pulseRight)
   (if __pulseRight (setq _pulseRight __pulseRight)) _pulseRight)
  (:errorType
   (&optional __errorType)
   (if __errorType (setq _errorType __errorType)) _errorType)
  (:errorStatus
   (&optional __errorStatus)
   (if __errorStatus (setq _errorStatus __errorStatus)) _errorStatus)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _linearX
    4
    ;; float32 _linearY
    4
    ;; float32 _angularZ
    4
    ;; float32 _odometryX
    4
    ;; float32 _odometryY
    4
    ;; float32 _odometryTheta
    4
    ;; float32 _odometryImuTheta
    4
    ;; float32 _odometryLinearX
    4
    ;; float32 _odometryLinearY
    4
    ;; float32 _odometryAngularZ
    4
    ;; float32 _pwmLeft
    4
    ;; float32 _pwmRight
    4
    ;; float32 _rSpeedLeft
    4
    ;; float32 _rSpeedRight
    4
    ;; int64 _pulseLeft
    8
    ;; int64 _pulseRight
    8
    ;; uint8 _errorType
    1
    ;; uint8 _errorStatus
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _linearX
       (sys::poke _linearX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _linearY
       (sys::poke _linearY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angularZ
       (sys::poke _angularZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _odometryX
       (sys::poke _odometryX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _odometryY
       (sys::poke _odometryY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _odometryTheta
       (sys::poke _odometryTheta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _odometryImuTheta
       (sys::poke _odometryImuTheta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _odometryLinearX
       (sys::poke _odometryLinearX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _odometryLinearY
       (sys::poke _odometryLinearY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _odometryAngularZ
       (sys::poke _odometryAngularZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pwmLeft
       (sys::poke _pwmLeft (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pwmRight
       (sys::poke _pwmRight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rSpeedLeft
       (sys::poke _rSpeedLeft (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rSpeedRight
       (sys::poke _rSpeedRight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int64 _pulseLeft
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _pulseLeft (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _pulseLeft) (= (length (_pulseLeft . bv)) 2)) ;; bignum
              (write-long (ash (elt (_pulseLeft . bv) 0) 0) s)
              (write-long (ash (elt (_pulseLeft . bv) 1) -1) s))
             ((and (class _pulseLeft) (= (length (_pulseLeft . bv)) 1)) ;; big1
              (write-long (elt (_pulseLeft . bv) 0) s)
              (write-long (if (>= _pulseLeft 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _pulseLeft s)(write-long (if (>= _pulseLeft 0) 0 #xffffffff) s)))
     ;; int64 _pulseRight
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _pulseRight (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _pulseRight) (= (length (_pulseRight . bv)) 2)) ;; bignum
              (write-long (ash (elt (_pulseRight . bv) 0) 0) s)
              (write-long (ash (elt (_pulseRight . bv) 1) -1) s))
             ((and (class _pulseRight) (= (length (_pulseRight . bv)) 1)) ;; big1
              (write-long (elt (_pulseRight . bv) 0) s)
              (write-long (if (>= _pulseRight 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _pulseRight s)(write-long (if (>= _pulseRight 0) 0 #xffffffff) s)))
     ;; uint8 _errorType
       (write-byte _errorType s)
     ;; uint8 _errorStatus
       (write-byte _errorStatus s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _linearX
     (setq _linearX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _linearY
     (setq _linearY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angularZ
     (setq _angularZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _odometryX
     (setq _odometryX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _odometryY
     (setq _odometryY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _odometryTheta
     (setq _odometryTheta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _odometryImuTheta
     (setq _odometryImuTheta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _odometryLinearX
     (setq _odometryLinearX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _odometryLinearY
     (setq _odometryLinearY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _odometryAngularZ
     (setq _odometryAngularZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pwmLeft
     (setq _pwmLeft (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pwmRight
     (setq _pwmRight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rSpeedLeft
     (setq _rSpeedLeft (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rSpeedRight
     (setq _rSpeedRight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int64 _pulseLeft
#+(or :alpha :irix6 :x86_64)
      (setf _pulseLeft (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _pulseLeft (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _pulseRight
#+(or :alpha :irix6 :x86_64)
      (setf _pulseRight (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _pulseRight (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint8 _errorType
     (setq _errorType (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _errorStatus
     (setq _errorStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get woosh_msgs::Log :md5sum-) "400a739358edc0a0d82f935b706445f1")
(setf (get woosh_msgs::Log :datatype-) "woosh_msgs/Log")
(setf (get woosh_msgs::Log :definition-)
      "Header header
float32 linearX
float32 linearY
float32 angularZ
float32 odometryX
float32 odometryY
float32 odometryTheta
float32 odometryImuTheta
float32 odometryLinearX
float32 odometryLinearY
float32 odometryAngularZ
float32 pwmLeft
float32 pwmRight
float32 rSpeedLeft
float32 rSpeedRight
int64 pulseLeft
int64 pulseRight
uint8 errorType
uint8 errorStatus

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



(provide :woosh_msgs/Log "400a739358edc0a0d82f935b706445f1")


