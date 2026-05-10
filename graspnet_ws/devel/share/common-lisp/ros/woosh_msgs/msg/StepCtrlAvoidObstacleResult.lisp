; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude StepCtrlAvoidObstacleResult.msg.html

(cl:defclass <StepCtrlAvoidObstacleResult> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (err_msg
    :reader err_msg
    :initarg :err_msg
    :type cl:string
    :initform "")
   (obstacle_distance
    :reader obstacle_distance
    :initarg :obstacle_distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass StepCtrlAvoidObstacleResult (<StepCtrlAvoidObstacleResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StepCtrlAvoidObstacleResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StepCtrlAvoidObstacleResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<StepCtrlAvoidObstacleResult> is deprecated: use woosh_msgs-msg:StepCtrlAvoidObstacleResult instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <StepCtrlAvoidObstacleResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:result-val is deprecated.  Use woosh_msgs-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'err_msg-val :lambda-list '(m))
(cl:defmethod err_msg-val ((m <StepCtrlAvoidObstacleResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:err_msg-val is deprecated.  Use woosh_msgs-msg:err_msg instead.")
  (err_msg m))

(cl:ensure-generic-function 'obstacle_distance-val :lambda-list '(m))
(cl:defmethod obstacle_distance-val ((m <StepCtrlAvoidObstacleResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:obstacle_distance-val is deprecated.  Use woosh_msgs-msg:obstacle_distance instead.")
  (obstacle_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StepCtrlAvoidObstacleResult>) ostream)
  "Serializes a message object of type '<StepCtrlAvoidObstacleResult>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'err_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'err_msg))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'obstacle_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StepCtrlAvoidObstacleResult>) istream)
  "Deserializes a message object of type '<StepCtrlAvoidObstacleResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'err_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'err_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'obstacle_distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StepCtrlAvoidObstacleResult>)))
  "Returns string type for a message object of type '<StepCtrlAvoidObstacleResult>"
  "woosh_msgs/StepCtrlAvoidObstacleResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StepCtrlAvoidObstacleResult)))
  "Returns string type for a message object of type 'StepCtrlAvoidObstacleResult"
  "woosh_msgs/StepCtrlAvoidObstacleResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StepCtrlAvoidObstacleResult>)))
  "Returns md5sum for a message object of type '<StepCtrlAvoidObstacleResult>"
  "5f7a6153ab4f18c3024842ca0eea9789")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StepCtrlAvoidObstacleResult)))
  "Returns md5sum for a message object of type 'StepCtrlAvoidObstacleResult"
  "5f7a6153ab4f18c3024842ca0eea9789")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StepCtrlAvoidObstacleResult>)))
  "Returns full string definition for message of type '<StepCtrlAvoidObstacleResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%int32    result  #0:成功,1:失败,2:取消~%string   err_msg #成功：SUCCESS，失败：具体失败原因~%float32  obstacle_distance #失败时最近的障碍物距离~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StepCtrlAvoidObstacleResult)))
  "Returns full string definition for message of type 'StepCtrlAvoidObstacleResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%int32    result  #0:成功,1:失败,2:取消~%string   err_msg #成功：SUCCESS，失败：具体失败原因~%float32  obstacle_distance #失败时最近的障碍物距离~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StepCtrlAvoidObstacleResult>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'err_msg))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StepCtrlAvoidObstacleResult>))
  "Converts a ROS message object to a list"
  (cl:list 'StepCtrlAvoidObstacleResult
    (cl:cons ':result (result msg))
    (cl:cons ':err_msg (err_msg msg))
    (cl:cons ':obstacle_distance (obstacle_distance msg))
))
