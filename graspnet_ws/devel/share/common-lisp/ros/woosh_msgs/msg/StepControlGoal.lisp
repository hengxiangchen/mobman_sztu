; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude StepControlGoal.msg.html

(cl:defclass <StepControlGoal> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (useAvoid
    :reader useAvoid
    :initarg :useAvoid
    :type cl:boolean
    :initform cl:nil)
   (stepControl
    :reader stepControl
    :initarg :stepControl
    :type (cl:vector woosh_msgs-msg:StepControl)
   :initform (cl:make-array 0 :element-type 'woosh_msgs-msg:StepControl :initial-element (cl:make-instance 'woosh_msgs-msg:StepControl))))
)

(cl:defclass StepControlGoal (<StepControlGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StepControlGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StepControlGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<StepControlGoal> is deprecated: use woosh_msgs-msg:StepControlGoal instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <StepControlGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:mode-val is deprecated.  Use woosh_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'useAvoid-val :lambda-list '(m))
(cl:defmethod useAvoid-val ((m <StepControlGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:useAvoid-val is deprecated.  Use woosh_msgs-msg:useAvoid instead.")
  (useAvoid m))

(cl:ensure-generic-function 'stepControl-val :lambda-list '(m))
(cl:defmethod stepControl-val ((m <StepControlGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:stepControl-val is deprecated.  Use woosh_msgs-msg:stepControl instead.")
  (stepControl m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StepControlGoal>)))
    "Constants for message type '<StepControlGoal>"
  '((:CANCEL . 0)
    (:EXCUTE . 1)
    (:PAUSE . 2)
    (:RESUM . 3)
    (:STRAIGHT . 1)
    (:ROTATE . 2)
    (:LATERAL . 3)
    (:DIAGONALIZE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StepControlGoal)))
    "Constants for message type 'StepControlGoal"
  '((:CANCEL . 0)
    (:EXCUTE . 1)
    (:PAUSE . 2)
    (:RESUM . 3)
    (:STRAIGHT . 1)
    (:ROTATE . 2)
    (:LATERAL . 3)
    (:DIAGONALIZE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StepControlGoal>) ostream)
  "Serializes a message object of type '<StepControlGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'useAvoid) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'stepControl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'stepControl))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StepControlGoal>) istream)
  "Deserializes a message object of type '<StepControlGoal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'useAvoid) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'stepControl) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'stepControl)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'woosh_msgs-msg:StepControl))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StepControlGoal>)))
  "Returns string type for a message object of type '<StepControlGoal>"
  "woosh_msgs/StepControlGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StepControlGoal)))
  "Returns string type for a message object of type 'StepControlGoal"
  "woosh_msgs/StepControlGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StepControlGoal>)))
  "Returns md5sum for a message object of type '<StepControlGoal>"
  "b3e8b6166663a200e4731bf7bf0a0ad1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StepControlGoal)))
  "Returns md5sum for a message object of type 'StepControlGoal"
  "b3e8b6166663a200e4731bf7bf0a0ad1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StepControlGoal>)))
  "Returns full string definition for message of type '<StepControlGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint8 mode~%bool useAvoid~%StepControl[] stepControl~%~%#mode~%uint8 CANCEL = 0~%uint8 EXCUTE = 1~%uint8 PAUSE = 2~%uint8 RESUM = 3~%~%#stepControl.executeMode~%uint8 STRAIGHT = 1 # 前行/后退~%uint8 ROTATE = 2  #旋转~%uint8 LATERAL = 3 #横向移动~%uint8 DIAGONALIZE = 4 #斜向移动~%~%================================================================================~%MSG: woosh_msgs/StepControl~%uint8 executeMode #1 表示X方向运动，2 表示旋转，3表示y方向运动，4表示斜向运动~%float32 data      #运动的距离或者旋转角度~%float32 speed     #运动的速度~%float32 angle     # 斜向运动的角度~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StepControlGoal)))
  "Returns full string definition for message of type 'StepControlGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint8 mode~%bool useAvoid~%StepControl[] stepControl~%~%#mode~%uint8 CANCEL = 0~%uint8 EXCUTE = 1~%uint8 PAUSE = 2~%uint8 RESUM = 3~%~%#stepControl.executeMode~%uint8 STRAIGHT = 1 # 前行/后退~%uint8 ROTATE = 2  #旋转~%uint8 LATERAL = 3 #横向移动~%uint8 DIAGONALIZE = 4 #斜向移动~%~%================================================================================~%MSG: woosh_msgs/StepControl~%uint8 executeMode #1 表示X方向运动，2 表示旋转，3表示y方向运动，4表示斜向运动~%float32 data      #运动的距离或者旋转角度~%float32 speed     #运动的速度~%float32 angle     # 斜向运动的角度~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StepControlGoal>))
  (cl:+ 0
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'stepControl) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StepControlGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'StepControlGoal
    (cl:cons ':mode (mode msg))
    (cl:cons ':useAvoid (useAvoid msg))
    (cl:cons ':stepControl (stepControl msg))
))
