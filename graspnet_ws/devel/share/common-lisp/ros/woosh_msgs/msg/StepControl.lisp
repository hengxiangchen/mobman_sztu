; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude StepControl.msg.html

(cl:defclass <StepControl> (roslisp-msg-protocol:ros-message)
  ((executeMode
    :reader executeMode
    :initarg :executeMode
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass StepControl (<StepControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StepControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StepControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<StepControl> is deprecated: use woosh_msgs-msg:StepControl instead.")))

(cl:ensure-generic-function 'executeMode-val :lambda-list '(m))
(cl:defmethod executeMode-val ((m <StepControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:executeMode-val is deprecated.  Use woosh_msgs-msg:executeMode instead.")
  (executeMode m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <StepControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:data-val is deprecated.  Use woosh_msgs-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <StepControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:speed-val is deprecated.  Use woosh_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <StepControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:angle-val is deprecated.  Use woosh_msgs-msg:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StepControl>) ostream)
  "Serializes a message object of type '<StepControl>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'executeMode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StepControl>) istream)
  "Deserializes a message object of type '<StepControl>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'executeMode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StepControl>)))
  "Returns string type for a message object of type '<StepControl>"
  "woosh_msgs/StepControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StepControl)))
  "Returns string type for a message object of type 'StepControl"
  "woosh_msgs/StepControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StepControl>)))
  "Returns md5sum for a message object of type '<StepControl>"
  "34371121edf84e6fad9159e3118fc977")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StepControl)))
  "Returns md5sum for a message object of type 'StepControl"
  "34371121edf84e6fad9159e3118fc977")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StepControl>)))
  "Returns full string definition for message of type '<StepControl>"
  (cl:format cl:nil "uint8 executeMode #1 表示X方向运动，2 表示旋转，3表示y方向运动，4表示斜向运动~%float32 data      #运动的距离或者旋转角度~%float32 speed     #运动的速度~%float32 angle     # 斜向运动的角度~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StepControl)))
  "Returns full string definition for message of type 'StepControl"
  (cl:format cl:nil "uint8 executeMode #1 表示X方向运动，2 表示旋转，3表示y方向运动，4表示斜向运动~%float32 data      #运动的距离或者旋转角度~%float32 speed     #运动的速度~%float32 angle     # 斜向运动的角度~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StepControl>))
  (cl:+ 0
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StepControl>))
  "Converts a ROS message object to a list"
  (cl:list 'StepControl
    (cl:cons ':executeMode (executeMode msg))
    (cl:cons ':data (data msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':angle (angle msg))
))
