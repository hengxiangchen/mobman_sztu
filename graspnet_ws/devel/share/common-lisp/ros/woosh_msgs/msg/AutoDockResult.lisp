; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude AutoDockResult.msg.html

(cl:defclass <AutoDockResult> (roslisp-msg-protocol:ros-message)
  ((err_msg
    :reader err_msg
    :initarg :err_msg
    :type cl:integer
    :initform 0)
   (result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (roller_direction
    :reader roller_direction
    :initarg :roller_direction
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AutoDockResult (<AutoDockResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoDockResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoDockResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<AutoDockResult> is deprecated: use woosh_msgs-msg:AutoDockResult instead.")))

(cl:ensure-generic-function 'err_msg-val :lambda-list '(m))
(cl:defmethod err_msg-val ((m <AutoDockResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:err_msg-val is deprecated.  Use woosh_msgs-msg:err_msg instead.")
  (err_msg m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <AutoDockResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:result-val is deprecated.  Use woosh_msgs-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'roller_direction-val :lambda-list '(m))
(cl:defmethod roller_direction-val ((m <AutoDockResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:roller_direction-val is deprecated.  Use woosh_msgs-msg:roller_direction instead.")
  (roller_direction m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AutoDockResult>)))
    "Constants for message type '<AutoDockResult>"
  '((:CANCLE . 1)
    (:SUCCESS . 2)
    (:FAILED . 3)
    (:LEFT . 11)
    (:RIGHT . 12)
    (:FRONT . 13)
    (:BACK . 14))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AutoDockResult)))
    "Constants for message type 'AutoDockResult"
  '((:CANCLE . 1)
    (:SUCCESS . 2)
    (:FAILED . 3)
    (:LEFT . 11)
    (:RIGHT . 12)
    (:FRONT . 13)
    (:BACK . 14))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoDockResult>) ostream)
  "Serializes a message object of type '<AutoDockResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'err_msg)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'roller_direction)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoDockResult>) istream)
  "Deserializes a message object of type '<AutoDockResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'err_msg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'err_msg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'err_msg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'err_msg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'err_msg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'err_msg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'err_msg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'err_msg)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'roller_direction)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoDockResult>)))
  "Returns string type for a message object of type '<AutoDockResult>"
  "woosh_msgs/AutoDockResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoDockResult)))
  "Returns string type for a message object of type 'AutoDockResult"
  "woosh_msgs/AutoDockResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoDockResult>)))
  "Returns md5sum for a message object of type '<AutoDockResult>"
  "d8ec9fafe10e6a566804e6743191ffd0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoDockResult)))
  "Returns md5sum for a message object of type 'AutoDockResult"
  "d8ec9fafe10e6a566804e6743191ffd0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoDockResult>)))
  "Returns full string definition for message of type '<AutoDockResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint64  err_msg~%~%int32   result~%int32   CANCLE = 1~%int32   SUCCESS = 2~%int32   FAILED = 3~%~%uint8   roller_direction~%uint8   LEFT = 11~%uint8   RIGHT = 12~%uint8   FRONT = 13~%uint8   BACK = 14~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoDockResult)))
  "Returns full string definition for message of type 'AutoDockResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint64  err_msg~%~%int32   result~%int32   CANCLE = 1~%int32   SUCCESS = 2~%int32   FAILED = 3~%~%uint8   roller_direction~%uint8   LEFT = 11~%uint8   RIGHT = 12~%uint8   FRONT = 13~%uint8   BACK = 14~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoDockResult>))
  (cl:+ 0
     8
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoDockResult>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoDockResult
    (cl:cons ':err_msg (err_msg msg))
    (cl:cons ':result (result msg))
    (cl:cons ':roller_direction (roller_direction msg))
))
