; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude AutoDock2Feedback.msg.html

(cl:defclass <AutoDock2Feedback> (roslisp-msg-protocol:ros-message)
  ((err_msg
    :reader err_msg
    :initarg :err_msg
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (feedback
    :reader feedback
    :initarg :feedback
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AutoDock2Feedback (<AutoDock2Feedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoDock2Feedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoDock2Feedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<AutoDock2Feedback> is deprecated: use woosh_msgs-msg:AutoDock2Feedback instead.")))

(cl:ensure-generic-function 'err_msg-val :lambda-list '(m))
(cl:defmethod err_msg-val ((m <AutoDock2Feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:err_msg-val is deprecated.  Use woosh_msgs-msg:err_msg instead.")
  (err_msg m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <AutoDock2Feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:status-val is deprecated.  Use woosh_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <AutoDock2Feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:feedback-val is deprecated.  Use woosh_msgs-msg:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AutoDock2Feedback>)))
    "Constants for message type '<AutoDock2Feedback>"
  '((:EXECUTING . 1)
    (:PAUSE . 2)
    (:ILLEGAL_GOAL . 1)
    (:LEGAL_GOAL . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AutoDock2Feedback)))
    "Constants for message type 'AutoDock2Feedback"
  '((:EXECUTING . 1)
    (:PAUSE . 2)
    (:ILLEGAL_GOAL . 1)
    (:LEGAL_GOAL . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoDock2Feedback>) ostream)
  "Serializes a message object of type '<AutoDock2Feedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'err_msg)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'feedback)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoDock2Feedback>) istream)
  "Deserializes a message object of type '<AutoDock2Feedback>"
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
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'feedback) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoDock2Feedback>)))
  "Returns string type for a message object of type '<AutoDock2Feedback>"
  "woosh_msgs/AutoDock2Feedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoDock2Feedback)))
  "Returns string type for a message object of type 'AutoDock2Feedback"
  "woosh_msgs/AutoDock2Feedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoDock2Feedback>)))
  "Returns md5sum for a message object of type '<AutoDock2Feedback>"
  "3137e7b87266b77b007700600d169809")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoDock2Feedback)))
  "Returns md5sum for a message object of type 'AutoDock2Feedback"
  "3137e7b87266b77b007700600d169809")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoDock2Feedback>)))
  "Returns full string definition for message of type '<AutoDock2Feedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint64  err_msg~%~%int8    status~%int8    EXECUTING = 1~%int8    PAUSE = 2~%~%int8    feedback~%int8    ILLEGAL_GOAL = 1~%int8    LEGAL_GOAL = 2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoDock2Feedback)))
  "Returns full string definition for message of type 'AutoDock2Feedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint64  err_msg~%~%int8    status~%int8    EXECUTING = 1~%int8    PAUSE = 2~%~%int8    feedback~%int8    ILLEGAL_GOAL = 1~%int8    LEGAL_GOAL = 2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoDock2Feedback>))
  (cl:+ 0
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoDock2Feedback>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoDock2Feedback
    (cl:cons ':err_msg (err_msg msg))
    (cl:cons ':status (status msg))
    (cl:cons ':feedback (feedback msg))
))
