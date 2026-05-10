; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude AutoDockFeedback.msg.html

(cl:defclass <AutoDockFeedback> (roslisp-msg-protocol:ros-message)
  ((err_msg
    :reader err_msg
    :initarg :err_msg
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (feedback
    :reader feedback
    :initarg :feedback
    :type cl:integer
    :initform 0))
)

(cl:defclass AutoDockFeedback (<AutoDockFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoDockFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoDockFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<AutoDockFeedback> is deprecated: use woosh_msgs-msg:AutoDockFeedback instead.")))

(cl:ensure-generic-function 'err_msg-val :lambda-list '(m))
(cl:defmethod err_msg-val ((m <AutoDockFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:err_msg-val is deprecated.  Use woosh_msgs-msg:err_msg instead.")
  (err_msg m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <AutoDockFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:status-val is deprecated.  Use woosh_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <AutoDockFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:feedback-val is deprecated.  Use woosh_msgs-msg:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AutoDockFeedback>)))
    "Constants for message type '<AutoDockFeedback>"
  '((:EXECUTING . 1)
    (:PAUSE . 2)
    (:ILLEGAL_GOAL . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AutoDockFeedback)))
    "Constants for message type 'AutoDockFeedback"
  '((:EXECUTING . 1)
    (:PAUSE . 2)
    (:ILLEGAL_GOAL . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoDockFeedback>) ostream)
  "Serializes a message object of type '<AutoDockFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'err_msg)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'feedback)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoDockFeedback>) istream)
  "Deserializes a message object of type '<AutoDockFeedback>"
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
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'feedback) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoDockFeedback>)))
  "Returns string type for a message object of type '<AutoDockFeedback>"
  "woosh_msgs/AutoDockFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoDockFeedback)))
  "Returns string type for a message object of type 'AutoDockFeedback"
  "woosh_msgs/AutoDockFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoDockFeedback>)))
  "Returns md5sum for a message object of type '<AutoDockFeedback>"
  "24cd0d7d4296b48e8981796a3b9bd16e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoDockFeedback)))
  "Returns md5sum for a message object of type 'AutoDockFeedback"
  "24cd0d7d4296b48e8981796a3b9bd16e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoDockFeedback>)))
  "Returns full string definition for message of type '<AutoDockFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint64   err_msg~%~%int32   status~%int32   EXECUTING = 1~%int32   PAUSE = 2~%~%int32   feedback~%int32   ILLEGAL_GOAL = 3~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoDockFeedback)))
  "Returns full string definition for message of type 'AutoDockFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint64   err_msg~%~%int32   status~%int32   EXECUTING = 1~%int32   PAUSE = 2~%~%int32   feedback~%int32   ILLEGAL_GOAL = 3~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoDockFeedback>))
  (cl:+ 0
     8
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoDockFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoDockFeedback
    (cl:cons ':err_msg (err_msg msg))
    (cl:cons ':status (status msg))
    (cl:cons ':feedback (feedback msg))
))
