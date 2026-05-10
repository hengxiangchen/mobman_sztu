; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude AutoDock2Goal.msg.html

(cl:defclass <AutoDock2Goal> (roslisp-msg-protocol:ros-message)
  ((tag_no
    :reader tag_no
    :initarg :tag_no
    :type cl:string
    :initform "")
   (board_shape
    :reader board_shape
    :initarg :board_shape
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (dock_direction
    :reader dock_direction
    :initarg :dock_direction
    :type cl:fixnum
    :initform 0)
   (targetPose
    :reader targetPose
    :initarg :targetPose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass AutoDock2Goal (<AutoDock2Goal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoDock2Goal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoDock2Goal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<AutoDock2Goal> is deprecated: use woosh_msgs-msg:AutoDock2Goal instead.")))

(cl:ensure-generic-function 'tag_no-val :lambda-list '(m))
(cl:defmethod tag_no-val ((m <AutoDock2Goal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:tag_no-val is deprecated.  Use woosh_msgs-msg:tag_no instead.")
  (tag_no m))

(cl:ensure-generic-function 'board_shape-val :lambda-list '(m))
(cl:defmethod board_shape-val ((m <AutoDock2Goal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:board_shape-val is deprecated.  Use woosh_msgs-msg:board_shape instead.")
  (board_shape m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <AutoDock2Goal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:type-val is deprecated.  Use woosh_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'dock_direction-val :lambda-list '(m))
(cl:defmethod dock_direction-val ((m <AutoDock2Goal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:dock_direction-val is deprecated.  Use woosh_msgs-msg:dock_direction instead.")
  (dock_direction m))

(cl:ensure-generic-function 'targetPose-val :lambda-list '(m))
(cl:defmethod targetPose-val ((m <AutoDock2Goal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:targetPose-val is deprecated.  Use woosh_msgs-msg:targetPose instead.")
  (targetPose m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AutoDock2Goal>)))
    "Constants for message type '<AutoDock2Goal>"
  '((:ALL_SHAPE . 0)
    (:VL_SHAPE . 1)
    (:PARALLEL_SHAPE . 2)
    (:CONVEX_SHAPE . 3)
    (:NARROW_PASSAGE_SHAPE . 4)
    (:ELEVATOR_SHAPE . 5)
    (:RECTANGLE_SHAPE . 6)
    (:ENTER . 0)
    (:PAUSE . 1)
    (:RESUM . 2)
    (:LEAVE . 3)
    (:RESET . 4)
    (:BACKWARD . 0)
    (:FRONTWARD . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AutoDock2Goal)))
    "Constants for message type 'AutoDock2Goal"
  '((:ALL_SHAPE . 0)
    (:VL_SHAPE . 1)
    (:PARALLEL_SHAPE . 2)
    (:CONVEX_SHAPE . 3)
    (:NARROW_PASSAGE_SHAPE . 4)
    (:ELEVATOR_SHAPE . 5)
    (:RECTANGLE_SHAPE . 6)
    (:ENTER . 0)
    (:PAUSE . 1)
    (:RESUM . 2)
    (:LEAVE . 3)
    (:RESET . 4)
    (:BACKWARD . 0)
    (:FRONTWARD . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoDock2Goal>) ostream)
  "Serializes a message object of type '<AutoDock2Goal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tag_no))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tag_no))
  (cl:let* ((signed (cl:slot-value msg 'board_shape)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'dock_direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'targetPose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoDock2Goal>) istream)
  "Deserializes a message object of type '<AutoDock2Goal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tag_no) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tag_no) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'board_shape) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dock_direction) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'targetPose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoDock2Goal>)))
  "Returns string type for a message object of type '<AutoDock2Goal>"
  "woosh_msgs/AutoDock2Goal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoDock2Goal)))
  "Returns string type for a message object of type 'AutoDock2Goal"
  "woosh_msgs/AutoDock2Goal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoDock2Goal>)))
  "Returns md5sum for a message object of type '<AutoDock2Goal>"
  "59093fc5b352f7e2936d701a4c288571")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoDock2Goal)))
  "Returns md5sum for a message object of type 'AutoDock2Goal"
  "59093fc5b352f7e2936d701a4c288571")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoDock2Goal>)))
  "Returns full string definition for message of type '<AutoDock2Goal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string  tag_no                      #tag编号~%~%int8    board_shape~%int8    ALL_SHAPE = 0               #操作所有特征板~%int8    VL_SHAPE = 1                #VL型特征板~%int8    PARALLEL_SHAPE = 2          #平行特征板~%int8    CONVEX_SHAPE = 3            #凸性特征板~%int8    NARROW_PASSAGE_SHAPE = 4    #狭窄通道特征形状~%int8    ELEVATOR_SHAPE = 5          #电梯口特征形状~%int8    RECTANGLE_SHAPE = 6            #料车~%~%int8    type~%int8    ENTER = 0~%int8    PAUSE = 1~%int8    RESUM = 2~%int8    LEAVE = 3~%int8    RESET = 4~%~%int8    dock_direction              #对接方向~%int8    BACKWARD = 0~%int8    FRONTWARD = 1~%~%geometry_msgs/Pose2D  targetPose    #当此接口用于狭窄通道的时候，此变量起作用。用于判断狭窄通道出口位置点。~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoDock2Goal)))
  "Returns full string definition for message of type 'AutoDock2Goal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string  tag_no                      #tag编号~%~%int8    board_shape~%int8    ALL_SHAPE = 0               #操作所有特征板~%int8    VL_SHAPE = 1                #VL型特征板~%int8    PARALLEL_SHAPE = 2          #平行特征板~%int8    CONVEX_SHAPE = 3            #凸性特征板~%int8    NARROW_PASSAGE_SHAPE = 4    #狭窄通道特征形状~%int8    ELEVATOR_SHAPE = 5          #电梯口特征形状~%int8    RECTANGLE_SHAPE = 6            #料车~%~%int8    type~%int8    ENTER = 0~%int8    PAUSE = 1~%int8    RESUM = 2~%int8    LEAVE = 3~%int8    RESET = 4~%~%int8    dock_direction              #对接方向~%int8    BACKWARD = 0~%int8    FRONTWARD = 1~%~%geometry_msgs/Pose2D  targetPose    #当此接口用于狭窄通道的时候，此变量起作用。用于判断狭窄通道出口位置点。~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoDock2Goal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'tag_no))
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'targetPose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoDock2Goal>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoDock2Goal
    (cl:cons ':tag_no (tag_no msg))
    (cl:cons ':board_shape (board_shape msg))
    (cl:cons ':type (type msg))
    (cl:cons ':dock_direction (dock_direction msg))
    (cl:cons ':targetPose (targetPose msg))
))
