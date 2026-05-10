; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude LiftControl3Goal.msg.html

(cl:defclass <LiftControl3Goal> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (execmode
    :reader execmode
    :initarg :execmode
    :type cl:fixnum
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0))
)

(cl:defclass LiftControl3Goal (<LiftControl3Goal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LiftControl3Goal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LiftControl3Goal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<LiftControl3Goal> is deprecated: use woosh_msgs-msg:LiftControl3Goal instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <LiftControl3Goal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:mode-val is deprecated.  Use woosh_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'execmode-val :lambda-list '(m))
(cl:defmethod execmode-val ((m <LiftControl3Goal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:execmode-val is deprecated.  Use woosh_msgs-msg:execmode instead.")
  (execmode m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <LiftControl3Goal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:speed-val is deprecated.  Use woosh_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <LiftControl3Goal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:height-val is deprecated.  Use woosh_msgs-msg:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LiftControl3Goal>)))
    "Constants for message type '<LiftControl3Goal>"
  '((:CANCEL . 0)
    (:EXCUTE . 1)
    (:PAUSE . 2)
    (:RESUM . 3)
    (:EXEC_QUERY . 0)
    (:EXEC_ABSOLUTE . 1)
    (:EXEC_RELATIVE . 2)
    (:EXEC_CALIBRATION . 3)
    (:EXEC_TESTMODE . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LiftControl3Goal)))
    "Constants for message type 'LiftControl3Goal"
  '((:CANCEL . 0)
    (:EXCUTE . 1)
    (:PAUSE . 2)
    (:RESUM . 3)
    (:EXEC_QUERY . 0)
    (:EXEC_ABSOLUTE . 1)
    (:EXEC_RELATIVE . 2)
    (:EXEC_CALIBRATION . 3)
    (:EXEC_TESTMODE . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LiftControl3Goal>) ostream)
  "Serializes a message object of type '<LiftControl3Goal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'execmode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LiftControl3Goal>) istream)
  "Deserializes a message object of type '<LiftControl3Goal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'execmode)) (cl:read-byte istream))
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
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LiftControl3Goal>)))
  "Returns string type for a message object of type '<LiftControl3Goal>"
  "woosh_msgs/LiftControl3Goal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LiftControl3Goal)))
  "Returns string type for a message object of type 'LiftControl3Goal"
  "woosh_msgs/LiftControl3Goal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LiftControl3Goal>)))
  "Returns md5sum for a message object of type '<LiftControl3Goal>"
  "c1c19c7b7b8efaf2b601a6888f76cc1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LiftControl3Goal)))
  "Returns md5sum for a message object of type 'LiftControl3Goal"
  "c1c19c7b7b8efaf2b601a6888f76cc1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LiftControl3Goal>)))
  "Returns full string definition for message of type '<LiftControl3Goal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint8 mode~%uint8 execmode~%float32 speed~%float32 height~%~%#mode~%uint8 CANCEL = 0~%uint8 EXCUTE = 1~%uint8 PAUSE = 2~%uint8 RESUM = 3~%~%#execmode~%uint8 EXEC_QUERY = 0 #查询状态~%uint8 EXEC_ABSOLUTE = 1 #绝对位置~%uint8 EXEC_RELATIVE = 2 #相对位置~%uint8 EXEC_CALIBRATION = 3 #位置校准~%uint8 EXEC_TESTMODE = 5 #测试模式~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LiftControl3Goal)))
  "Returns full string definition for message of type 'LiftControl3Goal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint8 mode~%uint8 execmode~%float32 speed~%float32 height~%~%#mode~%uint8 CANCEL = 0~%uint8 EXCUTE = 1~%uint8 PAUSE = 2~%uint8 RESUM = 3~%~%#execmode~%uint8 EXEC_QUERY = 0 #查询状态~%uint8 EXEC_ABSOLUTE = 1 #绝对位置~%uint8 EXEC_RELATIVE = 2 #相对位置~%uint8 EXEC_CALIBRATION = 3 #位置校准~%uint8 EXEC_TESTMODE = 5 #测试模式~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LiftControl3Goal>))
  (cl:+ 0
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LiftControl3Goal>))
  "Converts a ROS message object to a list"
  (cl:list 'LiftControl3Goal
    (cl:cons ':mode (mode msg))
    (cl:cons ':execmode (execmode msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':height (height msg))
))
