; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude BMS.msg.html

(cl:defclass <BMS> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (BMSStatus
    :reader BMSStatus
    :initarg :BMSStatus
    :type cl:integer
    :initform 0)
   (current
    :reader current
    :initarg :current
    :type cl:float
    :initform 0.0)
   (voltageMax
    :reader voltageMax
    :initarg :voltageMax
    :type cl:float
    :initform 0.0)
   (voltageMin
    :reader voltageMin
    :initarg :voltageMin
    :type cl:float
    :initform 0.0)
   (voltageTotal
    :reader voltageTotal
    :initarg :voltageTotal
    :type cl:float
    :initform 0.0)
   (temperatureMax
    :reader temperatureMax
    :initarg :temperatureMax
    :type cl:float
    :initform 0.0)
   (temperatureMin
    :reader temperatureMin
    :initarg :temperatureMin
    :type cl:float
    :initform 0.0)
   (chargeCycle
    :reader chargeCycle
    :initarg :chargeCycle
    :type cl:fixnum
    :initform 0)
   (capacityResidue
    :reader capacityResidue
    :initarg :capacityResidue
    :type cl:float
    :initform 0.0)
   (capacityTotal
    :reader capacityTotal
    :initarg :capacityTotal
    :type cl:float
    :initform 0.0)
   (switchStatus
    :reader switchStatus
    :initarg :switchStatus
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BMS (<BMS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BMS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BMS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<BMS> is deprecated: use woosh_msgs-msg:BMS instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BMS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:header-val is deprecated.  Use woosh_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'BMSStatus-val :lambda-list '(m))
(cl:defmethod BMSStatus-val ((m <BMS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:BMSStatus-val is deprecated.  Use woosh_msgs-msg:BMSStatus instead.")
  (BMSStatus m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <BMS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:current-val is deprecated.  Use woosh_msgs-msg:current instead.")
  (current m))

(cl:ensure-generic-function 'voltageMax-val :lambda-list '(m))
(cl:defmethod voltageMax-val ((m <BMS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:voltageMax-val is deprecated.  Use woosh_msgs-msg:voltageMax instead.")
  (voltageMax m))

(cl:ensure-generic-function 'voltageMin-val :lambda-list '(m))
(cl:defmethod voltageMin-val ((m <BMS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:voltageMin-val is deprecated.  Use woosh_msgs-msg:voltageMin instead.")
  (voltageMin m))

(cl:ensure-generic-function 'voltageTotal-val :lambda-list '(m))
(cl:defmethod voltageTotal-val ((m <BMS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:voltageTotal-val is deprecated.  Use woosh_msgs-msg:voltageTotal instead.")
  (voltageTotal m))

(cl:ensure-generic-function 'temperatureMax-val :lambda-list '(m))
(cl:defmethod temperatureMax-val ((m <BMS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:temperatureMax-val is deprecated.  Use woosh_msgs-msg:temperatureMax instead.")
  (temperatureMax m))

(cl:ensure-generic-function 'temperatureMin-val :lambda-list '(m))
(cl:defmethod temperatureMin-val ((m <BMS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:temperatureMin-val is deprecated.  Use woosh_msgs-msg:temperatureMin instead.")
  (temperatureMin m))

(cl:ensure-generic-function 'chargeCycle-val :lambda-list '(m))
(cl:defmethod chargeCycle-val ((m <BMS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:chargeCycle-val is deprecated.  Use woosh_msgs-msg:chargeCycle instead.")
  (chargeCycle m))

(cl:ensure-generic-function 'capacityResidue-val :lambda-list '(m))
(cl:defmethod capacityResidue-val ((m <BMS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:capacityResidue-val is deprecated.  Use woosh_msgs-msg:capacityResidue instead.")
  (capacityResidue m))

(cl:ensure-generic-function 'capacityTotal-val :lambda-list '(m))
(cl:defmethod capacityTotal-val ((m <BMS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:capacityTotal-val is deprecated.  Use woosh_msgs-msg:capacityTotal instead.")
  (capacityTotal m))

(cl:ensure-generic-function 'switchStatus-val :lambda-list '(m))
(cl:defmethod switchStatus-val ((m <BMS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:switchStatus-val is deprecated.  Use woosh_msgs-msg:switchStatus instead.")
  (switchStatus m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BMS>) ostream)
  "Serializes a message object of type '<BMS>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BMSStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'BMSStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'BMSStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'BMSStatus)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'voltageMax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'voltageMin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'voltageTotal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperatureMax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperatureMin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chargeCycle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'chargeCycle)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'capacityResidue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'capacityTotal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'switchStatus)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BMS>) istream)
  "Deserializes a message object of type '<BMS>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BMSStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'BMSStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'BMSStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'BMSStatus)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltageMax) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltageMin) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltageTotal) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperatureMax) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperatureMin) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chargeCycle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'chargeCycle)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'capacityResidue) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'capacityTotal) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'switchStatus)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BMS>)))
  "Returns string type for a message object of type '<BMS>"
  "woosh_msgs/BMS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BMS)))
  "Returns string type for a message object of type 'BMS"
  "woosh_msgs/BMS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BMS>)))
  "Returns md5sum for a message object of type '<BMS>"
  "90dcbb86327a728ae02a9e6f441bea51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BMS)))
  "Returns md5sum for a message object of type 'BMS"
  "90dcbb86327a728ae02a9e6f441bea51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BMS>)))
  "Returns full string definition for message of type '<BMS>"
  (cl:format cl:nil "Header header~%uint32 BMSStatus~%float32 current~%float32 voltageMax~%float32 voltageMin~%float32 voltageTotal~%float32 temperatureMax~%float32 temperatureMin~%uint16 chargeCycle~%float32 capacityResidue~%float32 capacityTotal~%uint8 switchStatus~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BMS)))
  "Returns full string definition for message of type 'BMS"
  (cl:format cl:nil "Header header~%uint32 BMSStatus~%float32 current~%float32 voltageMax~%float32 voltageMin~%float32 voltageTotal~%float32 temperatureMax~%float32 temperatureMin~%uint16 chargeCycle~%float32 capacityResidue~%float32 capacityTotal~%uint8 switchStatus~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BMS>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
     2
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BMS>))
  "Converts a ROS message object to a list"
  (cl:list 'BMS
    (cl:cons ':header (header msg))
    (cl:cons ':BMSStatus (BMSStatus msg))
    (cl:cons ':current (current msg))
    (cl:cons ':voltageMax (voltageMax msg))
    (cl:cons ':voltageMin (voltageMin msg))
    (cl:cons ':voltageTotal (voltageTotal msg))
    (cl:cons ':temperatureMax (temperatureMax msg))
    (cl:cons ':temperatureMin (temperatureMin msg))
    (cl:cons ':chargeCycle (chargeCycle msg))
    (cl:cons ':capacityResidue (capacityResidue msg))
    (cl:cons ':capacityTotal (capacityTotal msg))
    (cl:cons ':switchStatus (switchStatus msg))
))
