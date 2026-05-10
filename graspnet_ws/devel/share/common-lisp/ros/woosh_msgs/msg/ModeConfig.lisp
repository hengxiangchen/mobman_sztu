; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude ModeConfig.msg.html

(cl:defclass <ModeConfig> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ModeConfig (<ModeConfig>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModeConfig>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModeConfig)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<ModeConfig> is deprecated: use woosh_msgs-msg:ModeConfig instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <ModeConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:mode-val is deprecated.  Use woosh_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ModeConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:status-val is deprecated.  Use woosh_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModeConfig>) ostream)
  "Serializes a message object of type '<ModeConfig>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModeConfig>) istream)
  "Deserializes a message object of type '<ModeConfig>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModeConfig>)))
  "Returns string type for a message object of type '<ModeConfig>"
  "woosh_msgs/ModeConfig")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModeConfig)))
  "Returns string type for a message object of type 'ModeConfig"
  "woosh_msgs/ModeConfig")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModeConfig>)))
  "Returns md5sum for a message object of type '<ModeConfig>"
  "31202a93cf12686e4f3edec877644512")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModeConfig)))
  "Returns md5sum for a message object of type 'ModeConfig"
  "31202a93cf12686e4f3edec877644512")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModeConfig>)))
  "Returns full string definition for message of type '<ModeConfig>"
  (cl:format cl:nil "uint8 mode~%uint8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModeConfig)))
  "Returns full string definition for message of type 'ModeConfig"
  (cl:format cl:nil "uint8 mode~%uint8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModeConfig>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModeConfig>))
  "Converts a ROS message object to a list"
  (cl:list 'ModeConfig
    (cl:cons ':mode (mode msg))
    (cl:cons ':status (status msg))
))
