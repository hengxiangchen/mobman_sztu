; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude JoystickConfig.msg.html

(cl:defclass <JoystickConfig> (roslisp-msg-protocol:ros-message)
  ((maxLinear
    :reader maxLinear
    :initarg :maxLinear
    :type cl:float
    :initform 0.0)
   (maxAngular
    :reader maxAngular
    :initarg :maxAngular
    :type cl:float
    :initform 0.0))
)

(cl:defclass JoystickConfig (<JoystickConfig>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JoystickConfig>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JoystickConfig)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<JoystickConfig> is deprecated: use woosh_msgs-msg:JoystickConfig instead.")))

(cl:ensure-generic-function 'maxLinear-val :lambda-list '(m))
(cl:defmethod maxLinear-val ((m <JoystickConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:maxLinear-val is deprecated.  Use woosh_msgs-msg:maxLinear instead.")
  (maxLinear m))

(cl:ensure-generic-function 'maxAngular-val :lambda-list '(m))
(cl:defmethod maxAngular-val ((m <JoystickConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:maxAngular-val is deprecated.  Use woosh_msgs-msg:maxAngular instead.")
  (maxAngular m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JoystickConfig>) ostream)
  "Serializes a message object of type '<JoystickConfig>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'maxLinear))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'maxAngular))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JoystickConfig>) istream)
  "Deserializes a message object of type '<JoystickConfig>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxLinear) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxAngular) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JoystickConfig>)))
  "Returns string type for a message object of type '<JoystickConfig>"
  "woosh_msgs/JoystickConfig")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JoystickConfig)))
  "Returns string type for a message object of type 'JoystickConfig"
  "woosh_msgs/JoystickConfig")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JoystickConfig>)))
  "Returns md5sum for a message object of type '<JoystickConfig>"
  "7b4bec2a79f3f32272b58c3fa7b2518a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JoystickConfig)))
  "Returns md5sum for a message object of type 'JoystickConfig"
  "7b4bec2a79f3f32272b58c3fa7b2518a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JoystickConfig>)))
  "Returns full string definition for message of type '<JoystickConfig>"
  (cl:format cl:nil "float32 maxLinear~%float32 maxAngular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JoystickConfig)))
  "Returns full string definition for message of type 'JoystickConfig"
  (cl:format cl:nil "float32 maxLinear~%float32 maxAngular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JoystickConfig>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JoystickConfig>))
  "Converts a ROS message object to a list"
  (cl:list 'JoystickConfig
    (cl:cons ':maxLinear (maxLinear msg))
    (cl:cons ':maxAngular (maxAngular msg))
))
