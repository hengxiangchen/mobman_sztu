; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude Manekineko.msg.html

(cl:defclass <Manekineko> (roslisp-msg-protocol:ros-message)
  ((LeftMode
    :reader LeftMode
    :initarg :LeftMode
    :type cl:fixnum
    :initform 0)
   (LeftRadian
    :reader LeftRadian
    :initarg :LeftRadian
    :type cl:float
    :initform 0.0)
   (LeftAngularVelocity
    :reader LeftAngularVelocity
    :initarg :LeftAngularVelocity
    :type cl:float
    :initform 0.0)
   (RightMode
    :reader RightMode
    :initarg :RightMode
    :type cl:fixnum
    :initform 0)
   (RightRadian
    :reader RightRadian
    :initarg :RightRadian
    :type cl:float
    :initform 0.0)
   (RightAngularVelocity
    :reader RightAngularVelocity
    :initarg :RightAngularVelocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass Manekineko (<Manekineko>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Manekineko>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Manekineko)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<Manekineko> is deprecated: use woosh_msgs-msg:Manekineko instead.")))

(cl:ensure-generic-function 'LeftMode-val :lambda-list '(m))
(cl:defmethod LeftMode-val ((m <Manekineko>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:LeftMode-val is deprecated.  Use woosh_msgs-msg:LeftMode instead.")
  (LeftMode m))

(cl:ensure-generic-function 'LeftRadian-val :lambda-list '(m))
(cl:defmethod LeftRadian-val ((m <Manekineko>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:LeftRadian-val is deprecated.  Use woosh_msgs-msg:LeftRadian instead.")
  (LeftRadian m))

(cl:ensure-generic-function 'LeftAngularVelocity-val :lambda-list '(m))
(cl:defmethod LeftAngularVelocity-val ((m <Manekineko>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:LeftAngularVelocity-val is deprecated.  Use woosh_msgs-msg:LeftAngularVelocity instead.")
  (LeftAngularVelocity m))

(cl:ensure-generic-function 'RightMode-val :lambda-list '(m))
(cl:defmethod RightMode-val ((m <Manekineko>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:RightMode-val is deprecated.  Use woosh_msgs-msg:RightMode instead.")
  (RightMode m))

(cl:ensure-generic-function 'RightRadian-val :lambda-list '(m))
(cl:defmethod RightRadian-val ((m <Manekineko>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:RightRadian-val is deprecated.  Use woosh_msgs-msg:RightRadian instead.")
  (RightRadian m))

(cl:ensure-generic-function 'RightAngularVelocity-val :lambda-list '(m))
(cl:defmethod RightAngularVelocity-val ((m <Manekineko>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:RightAngularVelocity-val is deprecated.  Use woosh_msgs-msg:RightAngularVelocity instead.")
  (RightAngularVelocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Manekineko>) ostream)
  "Serializes a message object of type '<Manekineko>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftMode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LeftRadian))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LeftAngularVelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightMode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RightRadian))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RightAngularVelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Manekineko>) istream)
  "Deserializes a message object of type '<Manekineko>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftMode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LeftRadian) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LeftAngularVelocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightMode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RightRadian) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RightAngularVelocity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Manekineko>)))
  "Returns string type for a message object of type '<Manekineko>"
  "woosh_msgs/Manekineko")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Manekineko)))
  "Returns string type for a message object of type 'Manekineko"
  "woosh_msgs/Manekineko")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Manekineko>)))
  "Returns md5sum for a message object of type '<Manekineko>"
  "e93473ba02e79c4c770856e2b34478bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Manekineko)))
  "Returns md5sum for a message object of type 'Manekineko"
  "e93473ba02e79c4c770856e2b34478bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Manekineko>)))
  "Returns full string definition for message of type '<Manekineko>"
  (cl:format cl:nil "uint8 LeftMode~%float32 LeftRadian #unit: rad~%float32 LeftAngularVelocity #unit: rad/s~%uint8 RightMode~%float32 RightRadian #unit: rad~%float32 RightAngularVelocity #unit: rad/s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Manekineko)))
  "Returns full string definition for message of type 'Manekineko"
  (cl:format cl:nil "uint8 LeftMode~%float32 LeftRadian #unit: rad~%float32 LeftAngularVelocity #unit: rad/s~%uint8 RightMode~%float32 RightRadian #unit: rad~%float32 RightAngularVelocity #unit: rad/s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Manekineko>))
  (cl:+ 0
     1
     4
     4
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Manekineko>))
  "Converts a ROS message object to a list"
  (cl:list 'Manekineko
    (cl:cons ':LeftMode (LeftMode msg))
    (cl:cons ':LeftRadian (LeftRadian msg))
    (cl:cons ':LeftAngularVelocity (LeftAngularVelocity msg))
    (cl:cons ':RightMode (RightMode msg))
    (cl:cons ':RightRadian (RightRadian msg))
    (cl:cons ':RightAngularVelocity (RightAngularVelocity msg))
))
