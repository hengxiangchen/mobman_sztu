; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude OdomCtrolAvoidObstacleFeedback.msg.html

(cl:defclass <OdomCtrolAvoidObstacleFeedback> (roslisp-msg-protocol:ros-message)
  ((percent
    :reader percent
    :initarg :percent
    :type cl:float
    :initform 0.0)
   (err_msg
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

(cl:defclass OdomCtrolAvoidObstacleFeedback (<OdomCtrolAvoidObstacleFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OdomCtrolAvoidObstacleFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OdomCtrolAvoidObstacleFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<OdomCtrolAvoidObstacleFeedback> is deprecated: use woosh_msgs-msg:OdomCtrolAvoidObstacleFeedback instead.")))

(cl:ensure-generic-function 'percent-val :lambda-list '(m))
(cl:defmethod percent-val ((m <OdomCtrolAvoidObstacleFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:percent-val is deprecated.  Use woosh_msgs-msg:percent instead.")
  (percent m))

(cl:ensure-generic-function 'err_msg-val :lambda-list '(m))
(cl:defmethod err_msg-val ((m <OdomCtrolAvoidObstacleFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:err_msg-val is deprecated.  Use woosh_msgs-msg:err_msg instead.")
  (err_msg m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <OdomCtrolAvoidObstacleFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:status-val is deprecated.  Use woosh_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <OdomCtrolAvoidObstacleFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:feedback-val is deprecated.  Use woosh_msgs-msg:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OdomCtrolAvoidObstacleFeedback>)))
    "Constants for message type '<OdomCtrolAvoidObstacleFeedback>"
  '((:EXECUTING . 1)
    (:PAUSE . 2)
    (:OBSTACLE_AVOIDING . 10)
    (:AVOID_SUCCESS . 11)
    (:ILLEGAL_GOAL . 12))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OdomCtrolAvoidObstacleFeedback)))
    "Constants for message type 'OdomCtrolAvoidObstacleFeedback"
  '((:EXECUTING . 1)
    (:PAUSE . 2)
    (:OBSTACLE_AVOIDING . 10)
    (:AVOID_SUCCESS . 11)
    (:ILLEGAL_GOAL . 12))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OdomCtrolAvoidObstacleFeedback>) ostream)
  "Serializes a message object of type '<OdomCtrolAvoidObstacleFeedback>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OdomCtrolAvoidObstacleFeedback>) istream)
  "Deserializes a message object of type '<OdomCtrolAvoidObstacleFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'percent) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OdomCtrolAvoidObstacleFeedback>)))
  "Returns string type for a message object of type '<OdomCtrolAvoidObstacleFeedback>"
  "woosh_msgs/OdomCtrolAvoidObstacleFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OdomCtrolAvoidObstacleFeedback)))
  "Returns string type for a message object of type 'OdomCtrolAvoidObstacleFeedback"
  "woosh_msgs/OdomCtrolAvoidObstacleFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OdomCtrolAvoidObstacleFeedback>)))
  "Returns md5sum for a message object of type '<OdomCtrolAvoidObstacleFeedback>"
  "f0f985940761d338d6e262c1fdef5f6d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OdomCtrolAvoidObstacleFeedback)))
  "Returns md5sum for a message object of type 'OdomCtrolAvoidObstacleFeedback"
  "f0f985940761d338d6e262c1fdef5f6d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OdomCtrolAvoidObstacleFeedback>)))
  "Returns full string definition for message of type '<OdomCtrolAvoidObstacleFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float32  percent~%~%uint64    err_msg          #状态码~%~%int32    status~%int32    EXECUTING = 1~%int32    PAUSE = 2~%~%int32    feedback~%int32    OBSTACLE_AVOIDING = 10~%int32    AVOID_SUCCESS = 11~%int32    ILLEGAL_GOAL = 12~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OdomCtrolAvoidObstacleFeedback)))
  "Returns full string definition for message of type 'OdomCtrolAvoidObstacleFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float32  percent~%~%uint64    err_msg          #状态码~%~%int32    status~%int32    EXECUTING = 1~%int32    PAUSE = 2~%~%int32    feedback~%int32    OBSTACLE_AVOIDING = 10~%int32    AVOID_SUCCESS = 11~%int32    ILLEGAL_GOAL = 12~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OdomCtrolAvoidObstacleFeedback>))
  (cl:+ 0
     4
     8
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OdomCtrolAvoidObstacleFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'OdomCtrolAvoidObstacleFeedback
    (cl:cons ':percent (percent msg))
    (cl:cons ':err_msg (err_msg msg))
    (cl:cons ':status (status msg))
    (cl:cons ':feedback (feedback msg))
))
