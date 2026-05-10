; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude OdomCtrolAvoidObstacleGoal.msg.html

(cl:defclass <OdomCtrolAvoidObstacleGoal> (roslisp-msg-protocol:ros-message)
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
   (useMoveAvoid
    :reader useMoveAvoid
    :initarg :useMoveAvoid
    :type cl:integer
    :initform 0)
   (close_obstacleDetect_percent
    :reader close_obstacleDetect_percent
    :initarg :close_obstacleDetect_percent
    :type cl:float
    :initform 0.0)
   (xMax
    :reader xMax
    :initarg :xMax
    :type cl:float
    :initform 0.0)
   (xMin
    :reader xMin
    :initarg :xMin
    :type cl:float
    :initform 0.0)
   (yMax
    :reader yMax
    :initarg :yMax
    :type cl:float
    :initform 0.0)
   (yMin
    :reader yMin
    :initarg :yMin
    :type cl:float
    :initform 0.0))
)

(cl:defclass OdomCtrolAvoidObstacleGoal (<OdomCtrolAvoidObstacleGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OdomCtrolAvoidObstacleGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OdomCtrolAvoidObstacleGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<OdomCtrolAvoidObstacleGoal> is deprecated: use woosh_msgs-msg:OdomCtrolAvoidObstacleGoal instead.")))

(cl:ensure-generic-function 'arg-val :lambda-list '(m))
(cl:defmethod arg-val ((m <OdomCtrolAvoidObstacleGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:arg-val is deprecated.  Use woosh_msgs-msg:arg instead.")
  (arg m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <OdomCtrolAvoidObstacleGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:speed-val is deprecated.  Use woosh_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'arg_type-val :lambda-list '(m))
(cl:defmethod arg_type-val ((m <OdomCtrolAvoidObstacleGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:arg_type-val is deprecated.  Use woosh_msgs-msg:arg_type instead.")
  (arg_type m))

(cl:ensure-generic-function 'useMoveAvoid-val :lambda-list '(m))
(cl:defmethod useMoveAvoid-val ((m <OdomCtrolAvoidObstacleGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:useMoveAvoid-val is deprecated.  Use woosh_msgs-msg:useMoveAvoid instead.")
  (useMoveAvoid m))

(cl:ensure-generic-function 'close_obstacleDetect_percent-val :lambda-list '(m))
(cl:defmethod close_obstacleDetect_percent-val ((m <OdomCtrolAvoidObstacleGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:close_obstacleDetect_percent-val is deprecated.  Use woosh_msgs-msg:close_obstacleDetect_percent instead.")
  (close_obstacleDetect_percent m))

(cl:ensure-generic-function 'xMax-val :lambda-list '(m))
(cl:defmethod xMax-val ((m <OdomCtrolAvoidObstacleGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:xMax-val is deprecated.  Use woosh_msgs-msg:xMax instead.")
  (xMax m))

(cl:ensure-generic-function 'xMin-val :lambda-list '(m))
(cl:defmethod xMin-val ((m <OdomCtrolAvoidObstacleGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:xMin-val is deprecated.  Use woosh_msgs-msg:xMin instead.")
  (xMin m))

(cl:ensure-generic-function 'yMax-val :lambda-list '(m))
(cl:defmethod yMax-val ((m <OdomCtrolAvoidObstacleGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:yMax-val is deprecated.  Use woosh_msgs-msg:yMax instead.")
  (yMax m))

(cl:ensure-generic-function 'yMin-val :lambda-list '(m))
(cl:defmethod yMin-val ((m <OdomCtrolAvoidObstacleGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:yMin-val is deprecated.  Use woosh_msgs-msg:yMin instead.")
  (yMin m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OdomCtrolAvoidObstacleGoal>)))
    "Constants for message type '<OdomCtrolAvoidObstacleGoal>"
  '((:STRAIGHT . 0)
    (:ROTATE . 1)
    (:PAUSE . 2)
    (:RESUM . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OdomCtrolAvoidObstacleGoal)))
    "Constants for message type 'OdomCtrolAvoidObstacleGoal"
  '((:STRAIGHT . 0)
    (:ROTATE . 1)
    (:PAUSE . 2)
    (:RESUM . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OdomCtrolAvoidObstacleGoal>) ostream)
  "Serializes a message object of type '<OdomCtrolAvoidObstacleGoal>"
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
  (cl:let* ((signed (cl:slot-value msg 'useMoveAvoid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'close_obstacleDetect_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'xMax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'xMin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yMax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yMin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OdomCtrolAvoidObstacleGoal>) istream)
  "Deserializes a message object of type '<OdomCtrolAvoidObstacleGoal>"
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
      (cl:setf (cl:slot-value msg 'useMoveAvoid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'close_obstacleDetect_percent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xMax) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xMin) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yMax) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yMin) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OdomCtrolAvoidObstacleGoal>)))
  "Returns string type for a message object of type '<OdomCtrolAvoidObstacleGoal>"
  "woosh_msgs/OdomCtrolAvoidObstacleGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OdomCtrolAvoidObstacleGoal)))
  "Returns string type for a message object of type 'OdomCtrolAvoidObstacleGoal"
  "woosh_msgs/OdomCtrolAvoidObstacleGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OdomCtrolAvoidObstacleGoal>)))
  "Returns md5sum for a message object of type '<OdomCtrolAvoidObstacleGoal>"
  "e192a7094eab6262b4eb709c51e2d87b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OdomCtrolAvoidObstacleGoal)))
  "Returns md5sum for a message object of type 'OdomCtrolAvoidObstacleGoal"
  "e192a7094eab6262b4eb709c51e2d87b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OdomCtrolAvoidObstacleGoal>)))
  "Returns full string definition for message of type '<OdomCtrolAvoidObstacleGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float32  arg                           #参数~%float32  speed                         #速度~%int32    arg_type                      #arg_type=0：arg表示距离，正值往前，负值往后; arg_type=1：arg表示原地旋转弧度; arg_type=2 : 暂停; arg_type=3：继续~%int32    useMoveAvoid                  #0:开启避障功能; 1:关闭避障功能~%float32  close_obstacleDetect_percent  #关闭避障检测时的百分比,大于0,小于等于100,默认值为100~%float32  xMax~%float32  xMin~%float32  yMax~%float32  yMin~%int32    STRAIGHT = 0~%int32    ROTATE = 1~%int32    PAUSE = 2~%int32    RESUM = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OdomCtrolAvoidObstacleGoal)))
  "Returns full string definition for message of type 'OdomCtrolAvoidObstacleGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float32  arg                           #参数~%float32  speed                         #速度~%int32    arg_type                      #arg_type=0：arg表示距离，正值往前，负值往后; arg_type=1：arg表示原地旋转弧度; arg_type=2 : 暂停; arg_type=3：继续~%int32    useMoveAvoid                  #0:开启避障功能; 1:关闭避障功能~%float32  close_obstacleDetect_percent  #关闭避障检测时的百分比,大于0,小于等于100,默认值为100~%float32  xMax~%float32  xMin~%float32  yMax~%float32  yMin~%int32    STRAIGHT = 0~%int32    ROTATE = 1~%int32    PAUSE = 2~%int32    RESUM = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OdomCtrolAvoidObstacleGoal>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OdomCtrolAvoidObstacleGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'OdomCtrolAvoidObstacleGoal
    (cl:cons ':arg (arg msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':arg_type (arg_type msg))
    (cl:cons ':useMoveAvoid (useMoveAvoid msg))
    (cl:cons ':close_obstacleDetect_percent (close_obstacleDetect_percent msg))
    (cl:cons ':xMax (xMax msg))
    (cl:cons ':xMin (xMin msg))
    (cl:cons ':yMax (yMax msg))
    (cl:cons ':yMin (yMin msg))
))
