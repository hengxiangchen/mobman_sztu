; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude NavMode.msg.html

(cl:defclass <NavMode> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (triggered_mode
    :reader triggered_mode
    :initarg :triggered_mode
    :type cl:fixnum
    :initform 0)
   (in
    :reader in
    :initarg :in
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (out
    :reader out
    :initarg :out
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass NavMode (<NavMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<NavMode> is deprecated: use woosh_msgs-msg:NavMode instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <NavMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:id-val is deprecated.  Use woosh_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <NavMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:type-val is deprecated.  Use woosh_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'triggered_mode-val :lambda-list '(m))
(cl:defmethod triggered_mode-val ((m <NavMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:triggered_mode-val is deprecated.  Use woosh_msgs-msg:triggered_mode instead.")
  (triggered_mode m))

(cl:ensure-generic-function 'in-val :lambda-list '(m))
(cl:defmethod in-val ((m <NavMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:in-val is deprecated.  Use woosh_msgs-msg:in instead.")
  (in m))

(cl:ensure-generic-function 'out-val :lambda-list '(m))
(cl:defmethod out-val ((m <NavMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:out-val is deprecated.  Use woosh_msgs-msg:out instead.")
  (out m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavMode>) ostream)
  "Serializes a message object of type '<NavMode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'triggered_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'in) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'out) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavMode>) istream)
  "Deserializes a message object of type '<NavMode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'triggered_mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'in) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'out) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavMode>)))
  "Returns string type for a message object of type '<NavMode>"
  "woosh_msgs/NavMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavMode)))
  "Returns string type for a message object of type 'NavMode"
  "woosh_msgs/NavMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavMode>)))
  "Returns md5sum for a message object of type '<NavMode>"
  "7cd910cf133377ea47a83949c11e5636")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavMode)))
  "Returns md5sum for a message object of type 'NavMode"
  "7cd910cf133377ea47a83949c11e5636")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavMode>)))
  "Returns full string definition for message of type '<NavMode>"
  (cl:format cl:nil "uint32 id                #通道id~%int32 type               #通道类型, 双行道=0,单行道=1,单向道=2,路口=3, 狭窄通道=4,定位域=5,爬坡域=6,Odom域=7,自动门域=8,限速域=9~%int8 triggered_mode      #触发模式  ，  进方域：0  ，  出方域：1    进圆域：2    出圆域：3~%geometry_msgs/Point in   #通道入点~%geometry_msgs/Point out  #通道出点~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavMode)))
  "Returns full string definition for message of type 'NavMode"
  (cl:format cl:nil "uint32 id                #通道id~%int32 type               #通道类型, 双行道=0,单行道=1,单向道=2,路口=3, 狭窄通道=4,定位域=5,爬坡域=6,Odom域=7,自动门域=8,限速域=9~%int8 triggered_mode      #触发模式  ，  进方域：0  ，  出方域：1    进圆域：2    出圆域：3~%geometry_msgs/Point in   #通道入点~%geometry_msgs/Point out  #通道出点~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavMode>))
  (cl:+ 0
     4
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'in))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'out))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavMode>))
  "Converts a ROS message object to a list"
  (cl:list 'NavMode
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':triggered_mode (triggered_mode msg))
    (cl:cons ':in (in msg))
    (cl:cons ':out (out msg))
))
