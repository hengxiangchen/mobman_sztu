; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude StepCtrlAvoidObstacleGoal.msg.html

(cl:defclass <StepCtrlAvoidObstacleGoal> (roslisp-msg-protocol:ros-message)
  ((arg
    :reader arg
    :initarg :arg
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (arg_type
    :reader arg_type
    :initarg :arg_type
    :type cl:integer
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0)
   (timeout
    :reader timeout
    :initarg :timeout
    :type cl:integer
    :initform 0))
)

(cl:defclass StepCtrlAvoidObstacleGoal (<StepCtrlAvoidObstacleGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StepCtrlAvoidObstacleGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StepCtrlAvoidObstacleGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<StepCtrlAvoidObstacleGoal> is deprecated: use woosh_msgs-msg:StepCtrlAvoidObstacleGoal instead.")))

(cl:ensure-generic-function 'arg-val :lambda-list '(m))
(cl:defmethod arg-val ((m <StepCtrlAvoidObstacleGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:arg-val is deprecated.  Use woosh_msgs-msg:arg instead.")
  (arg m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <StepCtrlAvoidObstacleGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:speed-val is deprecated.  Use woosh_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'arg_type-val :lambda-list '(m))
(cl:defmethod arg_type-val ((m <StepCtrlAvoidObstacleGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:arg_type-val is deprecated.  Use woosh_msgs-msg:arg_type instead.")
  (arg_type m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <StepCtrlAvoidObstacleGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:mode-val is deprecated.  Use woosh_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <StepCtrlAvoidObstacleGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:timeout-val is deprecated.  Use woosh_msgs-msg:timeout instead.")
  (timeout m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StepCtrlAvoidObstacleGoal>) ostream)
  "Serializes a message object of type '<StepCtrlAvoidObstacleGoal>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'arg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'arg_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'timeout)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StepCtrlAvoidObstacleGoal>) istream)
  "Deserializes a message object of type '<StepCtrlAvoidObstacleGoal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arg) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeout) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StepCtrlAvoidObstacleGoal>)))
  "Returns string type for a message object of type '<StepCtrlAvoidObstacleGoal>"
  "woosh_msgs/StepCtrlAvoidObstacleGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StepCtrlAvoidObstacleGoal)))
  "Returns string type for a message object of type 'StepCtrlAvoidObstacleGoal"
  "woosh_msgs/StepCtrlAvoidObstacleGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StepCtrlAvoidObstacleGoal>)))
  "Returns md5sum for a message object of type '<StepCtrlAvoidObstacleGoal>"
  "56a5d77f69f864e965f115583cda9633")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StepCtrlAvoidObstacleGoal)))
  "Returns md5sum for a message object of type 'StepCtrlAvoidObstacleGoal"
  "56a5d77f69f864e965f115583cda9633")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StepCtrlAvoidObstacleGoal>)))
  "Returns full string definition for message of type '<StepCtrlAvoidObstacleGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float32  arg #参数~%float32  speed #速度~%int32    arg_type #arg_type=1：arg表示距离，正值往前，负值往后; arg_type=2：arg表示原地旋转弧度~%int32    mode  #mode=1:action控制移动 mode=2:action不控制移动，反馈最近障碍物距离~%int32    timeout #检测到障碍物停等超时时间~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StepCtrlAvoidObstacleGoal)))
  "Returns full string definition for message of type 'StepCtrlAvoidObstacleGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float32  arg #参数~%float32  speed #速度~%int32    arg_type #arg_type=1：arg表示距离，正值往前，负值往后; arg_type=2：arg表示原地旋转弧度~%int32    mode  #mode=1:action控制移动 mode=2:action不控制移动，反馈最近障碍物距离~%int32    timeout #检测到障碍物停等超时时间~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StepCtrlAvoidObstacleGoal>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StepCtrlAvoidObstacleGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'StepCtrlAvoidObstacleGoal
    (cl:cons ':arg (arg msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':arg_type (arg_type msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':timeout (timeout msg))
))
