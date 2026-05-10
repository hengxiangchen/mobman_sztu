; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude WheelConfig.msg.html

(cl:defclass <WheelConfig> (roslisp-msg-protocol:ros-message)
  ((wheelPerimeter
    :reader wheelPerimeter
    :initarg :wheelPerimeter
    :type cl:float
    :initform 0.0)
   (wheelDistant
    :reader wheelDistant
    :initarg :wheelDistant
    :type cl:float
    :initform 0.0))
)

(cl:defclass WheelConfig (<WheelConfig>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelConfig>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelConfig)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<WheelConfig> is deprecated: use woosh_msgs-msg:WheelConfig instead.")))

(cl:ensure-generic-function 'wheelPerimeter-val :lambda-list '(m))
(cl:defmethod wheelPerimeter-val ((m <WheelConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:wheelPerimeter-val is deprecated.  Use woosh_msgs-msg:wheelPerimeter instead.")
  (wheelPerimeter m))

(cl:ensure-generic-function 'wheelDistant-val :lambda-list '(m))
(cl:defmethod wheelDistant-val ((m <WheelConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:wheelDistant-val is deprecated.  Use woosh_msgs-msg:wheelDistant instead.")
  (wheelDistant m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelConfig>) ostream)
  "Serializes a message object of type '<WheelConfig>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheelPerimeter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheelDistant))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelConfig>) istream)
  "Deserializes a message object of type '<WheelConfig>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheelPerimeter) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheelDistant) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelConfig>)))
  "Returns string type for a message object of type '<WheelConfig>"
  "woosh_msgs/WheelConfig")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelConfig)))
  "Returns string type for a message object of type 'WheelConfig"
  "woosh_msgs/WheelConfig")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelConfig>)))
  "Returns md5sum for a message object of type '<WheelConfig>"
  "f53031119c87c0c3b85e13970f5569ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelConfig)))
  "Returns md5sum for a message object of type 'WheelConfig"
  "f53031119c87c0c3b85e13970f5569ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelConfig>)))
  "Returns full string definition for message of type '<WheelConfig>"
  (cl:format cl:nil "float32 wheelPerimeter~%float32 wheelDistant~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelConfig)))
  "Returns full string definition for message of type 'WheelConfig"
  (cl:format cl:nil "float32 wheelPerimeter~%float32 wheelDistant~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelConfig>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelConfig>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelConfig
    (cl:cons ':wheelPerimeter (wheelPerimeter msg))
    (cl:cons ':wheelDistant (wheelDistant msg))
))
