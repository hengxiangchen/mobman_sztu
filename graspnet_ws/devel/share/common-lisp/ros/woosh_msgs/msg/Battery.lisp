; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude Battery.msg.html

(cl:defclass <Battery> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (submodule
    :reader submodule
    :initarg :submodule
    :type cl:fixnum
    :initform 0)
   (batteryPercentage
    :reader batteryPercentage
    :initarg :batteryPercentage
    :type cl:fixnum
    :initform 0)
   (chargeMode
    :reader chargeMode
    :initarg :chargeMode
    :type cl:fixnum
    :initform 0)
   (chargeStatus
    :reader chargeStatus
    :initarg :chargeStatus
    :type cl:fixnum
    :initform 0)
   (batteryVoltage
    :reader batteryVoltage
    :initarg :batteryVoltage
    :type cl:float
    :initform 0.0)
   (batteryCurrent
    :reader batteryCurrent
    :initarg :batteryCurrent
    :type cl:float
    :initform 0.0)
   (timeRemain
    :reader timeRemain
    :initarg :timeRemain
    :type cl:float
    :initform 0.0)
   (tempMax
    :reader tempMax
    :initarg :tempMax
    :type cl:fixnum
    :initform 0)
   (tempMin
    :reader tempMin
    :initarg :tempMin
    :type cl:fixnum
    :initform 0)
   (capacityRemain
    :reader capacityRemain
    :initarg :capacityRemain
    :type cl:float
    :initform 0.0)
   (capacityFull
    :reader capacityFull
    :initarg :capacityFull
    :type cl:float
    :initform 0.0)
   (capacityDesign
    :reader capacityDesign
    :initarg :capacityDesign
    :type cl:float
    :initform 0.0)
   (chargeCycle
    :reader chargeCycle
    :initarg :chargeCycle
    :type cl:fixnum
    :initform 0)
   (batteryCycle
    :reader batteryCycle
    :initarg :batteryCycle
    :type cl:fixnum
    :initform 0)
   (cellVoltageMax
    :reader cellVoltageMax
    :initarg :cellVoltageMax
    :type cl:float
    :initform 0.0)
   (cellVoltageMin
    :reader cellVoltageMin
    :initarg :cellVoltageMin
    :type cl:float
    :initform 0.0)
   (bmsStatus
    :reader bmsStatus
    :initarg :bmsStatus
    :type cl:integer
    :initform 0))
)

(cl:defclass Battery (<Battery>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Battery>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Battery)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<Battery> is deprecated: use woosh_msgs-msg:Battery instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:header-val is deprecated.  Use woosh_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'submodule-val :lambda-list '(m))
(cl:defmethod submodule-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:submodule-val is deprecated.  Use woosh_msgs-msg:submodule instead.")
  (submodule m))

(cl:ensure-generic-function 'batteryPercentage-val :lambda-list '(m))
(cl:defmethod batteryPercentage-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:batteryPercentage-val is deprecated.  Use woosh_msgs-msg:batteryPercentage instead.")
  (batteryPercentage m))

(cl:ensure-generic-function 'chargeMode-val :lambda-list '(m))
(cl:defmethod chargeMode-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:chargeMode-val is deprecated.  Use woosh_msgs-msg:chargeMode instead.")
  (chargeMode m))

(cl:ensure-generic-function 'chargeStatus-val :lambda-list '(m))
(cl:defmethod chargeStatus-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:chargeStatus-val is deprecated.  Use woosh_msgs-msg:chargeStatus instead.")
  (chargeStatus m))

(cl:ensure-generic-function 'batteryVoltage-val :lambda-list '(m))
(cl:defmethod batteryVoltage-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:batteryVoltage-val is deprecated.  Use woosh_msgs-msg:batteryVoltage instead.")
  (batteryVoltage m))

(cl:ensure-generic-function 'batteryCurrent-val :lambda-list '(m))
(cl:defmethod batteryCurrent-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:batteryCurrent-val is deprecated.  Use woosh_msgs-msg:batteryCurrent instead.")
  (batteryCurrent m))

(cl:ensure-generic-function 'timeRemain-val :lambda-list '(m))
(cl:defmethod timeRemain-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:timeRemain-val is deprecated.  Use woosh_msgs-msg:timeRemain instead.")
  (timeRemain m))

(cl:ensure-generic-function 'tempMax-val :lambda-list '(m))
(cl:defmethod tempMax-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:tempMax-val is deprecated.  Use woosh_msgs-msg:tempMax instead.")
  (tempMax m))

(cl:ensure-generic-function 'tempMin-val :lambda-list '(m))
(cl:defmethod tempMin-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:tempMin-val is deprecated.  Use woosh_msgs-msg:tempMin instead.")
  (tempMin m))

(cl:ensure-generic-function 'capacityRemain-val :lambda-list '(m))
(cl:defmethod capacityRemain-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:capacityRemain-val is deprecated.  Use woosh_msgs-msg:capacityRemain instead.")
  (capacityRemain m))

(cl:ensure-generic-function 'capacityFull-val :lambda-list '(m))
(cl:defmethod capacityFull-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:capacityFull-val is deprecated.  Use woosh_msgs-msg:capacityFull instead.")
  (capacityFull m))

(cl:ensure-generic-function 'capacityDesign-val :lambda-list '(m))
(cl:defmethod capacityDesign-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:capacityDesign-val is deprecated.  Use woosh_msgs-msg:capacityDesign instead.")
  (capacityDesign m))

(cl:ensure-generic-function 'chargeCycle-val :lambda-list '(m))
(cl:defmethod chargeCycle-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:chargeCycle-val is deprecated.  Use woosh_msgs-msg:chargeCycle instead.")
  (chargeCycle m))

(cl:ensure-generic-function 'batteryCycle-val :lambda-list '(m))
(cl:defmethod batteryCycle-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:batteryCycle-val is deprecated.  Use woosh_msgs-msg:batteryCycle instead.")
  (batteryCycle m))

(cl:ensure-generic-function 'cellVoltageMax-val :lambda-list '(m))
(cl:defmethod cellVoltageMax-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:cellVoltageMax-val is deprecated.  Use woosh_msgs-msg:cellVoltageMax instead.")
  (cellVoltageMax m))

(cl:ensure-generic-function 'cellVoltageMin-val :lambda-list '(m))
(cl:defmethod cellVoltageMin-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:cellVoltageMin-val is deprecated.  Use woosh_msgs-msg:cellVoltageMin instead.")
  (cellVoltageMin m))

(cl:ensure-generic-function 'bmsStatus-val :lambda-list '(m))
(cl:defmethod bmsStatus-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:bmsStatus-val is deprecated.  Use woosh_msgs-msg:bmsStatus instead.")
  (bmsStatus m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Battery>)))
    "Constants for message type '<Battery>"
  '((:MANUALMODE . 0)
    (:AUTOMODE . 1)
    (:DISCHARGE . 0)
    (:CHARGING . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Battery)))
    "Constants for message type 'Battery"
  '((:MANUALMODE . 0)
    (:AUTOMODE . 1)
    (:DISCHARGE . 0)
    (:CHARGING . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Battery>) ostream)
  "Serializes a message object of type '<Battery>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'submodule)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batteryPercentage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chargeMode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chargeStatus)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'batteryVoltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'batteryCurrent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'timeRemain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'tempMax)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'tempMin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'capacityRemain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'capacityFull))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'capacityDesign))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chargeCycle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'chargeCycle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batteryCycle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'batteryCycle)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cellVoltageMax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cellVoltageMin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bmsStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bmsStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bmsStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bmsStatus)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Battery>) istream)
  "Deserializes a message object of type '<Battery>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'submodule)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batteryPercentage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chargeMode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chargeStatus)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'batteryVoltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'batteryCurrent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeRemain) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tempMax) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tempMin) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'capacityRemain) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'capacityFull) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'capacityDesign) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chargeCycle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'chargeCycle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batteryCycle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'batteryCycle)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cellVoltageMax) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cellVoltageMin) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bmsStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bmsStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bmsStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bmsStatus)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Battery>)))
  "Returns string type for a message object of type '<Battery>"
  "woosh_msgs/Battery")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Battery)))
  "Returns string type for a message object of type 'Battery"
  "woosh_msgs/Battery")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Battery>)))
  "Returns md5sum for a message object of type '<Battery>"
  "6e54ab8d3948bb7be2bfe95e3981bcd0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Battery)))
  "Returns md5sum for a message object of type 'Battery"
  "6e54ab8d3948bb7be2bfe95e3981bcd0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Battery>)))
  "Returns full string definition for message of type '<Battery>"
  (cl:format cl:nil "Header header~%uint8 submodule~%uint8 batteryPercentage~%uint8 chargeMode~%uint8 chargeStatus~%float32 batteryVoltage~%float32 batteryCurrent~%float32 timeRemain~%int8 tempMax~%int8 tempMin~%float32 capacityRemain~%float32 capacityFull~%float32 capacityDesign~%uint16 chargeCycle~%uint16 batteryCycle~%float32 cellVoltageMax~%float32 cellVoltageMin~%uint32 bmsStatus~%~%#chargeMode~%uint8 manualMode = 0~%uint8 autoMode = 1~%~%#chargeStatus~%uint8 discharge = 0~%uint8 charging = 1~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Battery)))
  "Returns full string definition for message of type 'Battery"
  (cl:format cl:nil "Header header~%uint8 submodule~%uint8 batteryPercentage~%uint8 chargeMode~%uint8 chargeStatus~%float32 batteryVoltage~%float32 batteryCurrent~%float32 timeRemain~%int8 tempMax~%int8 tempMin~%float32 capacityRemain~%float32 capacityFull~%float32 capacityDesign~%uint16 chargeCycle~%uint16 batteryCycle~%float32 cellVoltageMax~%float32 cellVoltageMin~%uint32 bmsStatus~%~%#chargeMode~%uint8 manualMode = 0~%uint8 autoMode = 1~%~%#chargeStatus~%uint8 discharge = 0~%uint8 charging = 1~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Battery>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     4
     4
     4
     1
     1
     4
     4
     4
     2
     2
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Battery>))
  "Converts a ROS message object to a list"
  (cl:list 'Battery
    (cl:cons ':header (header msg))
    (cl:cons ':submodule (submodule msg))
    (cl:cons ':batteryPercentage (batteryPercentage msg))
    (cl:cons ':chargeMode (chargeMode msg))
    (cl:cons ':chargeStatus (chargeStatus msg))
    (cl:cons ':batteryVoltage (batteryVoltage msg))
    (cl:cons ':batteryCurrent (batteryCurrent msg))
    (cl:cons ':timeRemain (timeRemain msg))
    (cl:cons ':tempMax (tempMax msg))
    (cl:cons ':tempMin (tempMin msg))
    (cl:cons ':capacityRemain (capacityRemain msg))
    (cl:cons ':capacityFull (capacityFull msg))
    (cl:cons ':capacityDesign (capacityDesign msg))
    (cl:cons ':chargeCycle (chargeCycle msg))
    (cl:cons ':batteryCycle (batteryCycle msg))
    (cl:cons ':cellVoltageMax (cellVoltageMax msg))
    (cl:cons ':cellVoltageMin (cellVoltageMin msg))
    (cl:cons ':bmsStatus (bmsStatus msg))
))
