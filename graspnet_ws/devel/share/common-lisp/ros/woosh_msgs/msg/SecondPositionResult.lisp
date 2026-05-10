; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude SecondPositionResult.msg.html

(cl:defclass <SecondPositionResult> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0)
   (executeMode
    :reader executeMode
    :initarg :executeMode
    :type cl:fixnum
    :initform 0)
   (rfid
    :reader rfid
    :initarg :rfid
    :type cl:fixnum
    :initform 0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass SecondPositionResult (<SecondPositionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SecondPositionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SecondPositionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<SecondPositionResult> is deprecated: use woosh_msgs-msg:SecondPositionResult instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SecondPositionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:result-val is deprecated.  Use woosh_msgs-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'executeMode-val :lambda-list '(m))
(cl:defmethod executeMode-val ((m <SecondPositionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:executeMode-val is deprecated.  Use woosh_msgs-msg:executeMode instead.")
  (executeMode m))

(cl:ensure-generic-function 'rfid-val :lambda-list '(m))
(cl:defmethod rfid-val ((m <SecondPositionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:rfid-val is deprecated.  Use woosh_msgs-msg:rfid instead.")
  (rfid m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <SecondPositionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:distance-val is deprecated.  Use woosh_msgs-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SecondPositionResult>) ostream)
  "Serializes a message object of type '<SecondPositionResult>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'executeMode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rfid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rfid)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SecondPositionResult>) istream)
  "Deserializes a message object of type '<SecondPositionResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'executeMode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rfid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rfid)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SecondPositionResult>)))
  "Returns string type for a message object of type '<SecondPositionResult>"
  "woosh_msgs/SecondPositionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SecondPositionResult)))
  "Returns string type for a message object of type 'SecondPositionResult"
  "woosh_msgs/SecondPositionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SecondPositionResult>)))
  "Returns md5sum for a message object of type '<SecondPositionResult>"
  "22f9023889607f03709a7d9307c04454")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SecondPositionResult)))
  "Returns md5sum for a message object of type 'SecondPositionResult"
  "22f9023889607f03709a7d9307c04454")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SecondPositionResult>)))
  "Returns full string definition for message of type '<SecondPositionResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int8 result #1表示执行成功，负值表示执行失败~%uint8 executeMode~%uint16 rfid~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SecondPositionResult)))
  "Returns full string definition for message of type 'SecondPositionResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int8 result #1表示执行成功，负值表示执行失败~%uint8 executeMode~%uint16 rfid~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SecondPositionResult>))
  (cl:+ 0
     1
     1
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SecondPositionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'SecondPositionResult
    (cl:cons ':result (result msg))
    (cl:cons ':executeMode (executeMode msg))
    (cl:cons ':rfid (rfid msg))
    (cl:cons ':distance (distance msg))
))
