; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude ArTrackChargeResult.msg.html

(cl:defclass <ArTrackChargeResult> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (enter_distance
    :reader enter_distance
    :initarg :enter_distance
    :type cl:float
    :initform 0.0)
   (statusCode
    :reader statusCode
    :initarg :statusCode
    :type cl:integer
    :initform 0))
)

(cl:defclass ArTrackChargeResult (<ArTrackChargeResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArTrackChargeResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArTrackChargeResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<ArTrackChargeResult> is deprecated: use woosh_msgs-msg:ArTrackChargeResult instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ArTrackChargeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:result-val is deprecated.  Use woosh_msgs-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'enter_distance-val :lambda-list '(m))
(cl:defmethod enter_distance-val ((m <ArTrackChargeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:enter_distance-val is deprecated.  Use woosh_msgs-msg:enter_distance instead.")
  (enter_distance m))

(cl:ensure-generic-function 'statusCode-val :lambda-list '(m))
(cl:defmethod statusCode-val ((m <ArTrackChargeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:statusCode-val is deprecated.  Use woosh_msgs-msg:statusCode instead.")
  (statusCode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ArTrackChargeResult>)))
    "Constants for message type '<ArTrackChargeResult>"
  '((:SUCCESS . 0)
    (:FAIL . 1)
    (:CANCEL . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ArTrackChargeResult)))
    "Constants for message type 'ArTrackChargeResult"
  '((:SUCCESS . 0)
    (:FAIL . 1)
    (:CANCEL . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArTrackChargeResult>) ostream)
  "Serializes a message object of type '<ArTrackChargeResult>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'enter_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'statusCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'statusCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'statusCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'statusCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'statusCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'statusCode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArTrackChargeResult>) istream)
  "Deserializes a message object of type '<ArTrackChargeResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'enter_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'statusCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'statusCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'statusCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'statusCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'statusCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'statusCode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArTrackChargeResult>)))
  "Returns string type for a message object of type '<ArTrackChargeResult>"
  "woosh_msgs/ArTrackChargeResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArTrackChargeResult)))
  "Returns string type for a message object of type 'ArTrackChargeResult"
  "woosh_msgs/ArTrackChargeResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArTrackChargeResult>)))
  "Returns md5sum for a message object of type '<ArTrackChargeResult>"
  "c14fa0f7091300d45c32ec2a0ff8d569")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArTrackChargeResult)))
  "Returns md5sum for a message object of type 'ArTrackChargeResult"
  "c14fa0f7091300d45c32ec2a0ff8d569")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArTrackChargeResult>)))
  "Returns full string definition for message of type '<ArTrackChargeResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%int32 result~%int32 SUCCESS = 0 #成功~%int32 FAIL = 1  #失败~%int32 CANCEL = 2 #取消~%float32 enter_distance~%uint64 statusCode #状态码~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArTrackChargeResult)))
  "Returns full string definition for message of type 'ArTrackChargeResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%int32 result~%int32 SUCCESS = 0 #成功~%int32 FAIL = 1  #失败~%int32 CANCEL = 2 #取消~%float32 enter_distance~%uint64 statusCode #状态码~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArTrackChargeResult>))
  (cl:+ 0
     4
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArTrackChargeResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ArTrackChargeResult
    (cl:cons ':result (result msg))
    (cl:cons ':enter_distance (enter_distance msg))
    (cl:cons ':statusCode (statusCode msg))
))
