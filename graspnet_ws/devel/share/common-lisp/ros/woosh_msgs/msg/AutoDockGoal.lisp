; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude AutoDockGoal.msg.html

(cl:defclass <AutoDockGoal> (roslisp-msg-protocol:ros-message)
  ((tag_no
    :reader tag_no
    :initarg :tag_no
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (lift_type
    :reader lift_type
    :initarg :lift_type
    :type cl:integer
    :initform 0)
   (leave_distance
    :reader leave_distance
    :initarg :leave_distance
    :type cl:float
    :initform 0.0)
   (targetPose
    :reader targetPose
    :initarg :targetPose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass AutoDockGoal (<AutoDockGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoDockGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoDockGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<AutoDockGoal> is deprecated: use woosh_msgs-msg:AutoDockGoal instead.")))

(cl:ensure-generic-function 'tag_no-val :lambda-list '(m))
(cl:defmethod tag_no-val ((m <AutoDockGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:tag_no-val is deprecated.  Use woosh_msgs-msg:tag_no instead.")
  (tag_no m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <AutoDockGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:type-val is deprecated.  Use woosh_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'lift_type-val :lambda-list '(m))
(cl:defmethod lift_type-val ((m <AutoDockGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:lift_type-val is deprecated.  Use woosh_msgs-msg:lift_type instead.")
  (lift_type m))

(cl:ensure-generic-function 'leave_distance-val :lambda-list '(m))
(cl:defmethod leave_distance-val ((m <AutoDockGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:leave_distance-val is deprecated.  Use woosh_msgs-msg:leave_distance instead.")
  (leave_distance m))

(cl:ensure-generic-function 'targetPose-val :lambda-list '(m))
(cl:defmethod targetPose-val ((m <AutoDockGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:targetPose-val is deprecated.  Use woosh_msgs-msg:targetPose instead.")
  (targetPose m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AutoDockGoal>)))
    "Constants for message type '<AutoDockGoal>"
  '((:START . 0)
    (:PAUSE . 1)
    (:RESUM . 2)
    (:LEAVE . 3)
    (:RESET . 4)
    (:UP . 0)
    (:DOWN . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AutoDockGoal)))
    "Constants for message type 'AutoDockGoal"
  '((:START . 0)
    (:PAUSE . 1)
    (:RESUM . 2)
    (:LEAVE . 3)
    (:RESET . 4)
    (:UP . 0)
    (:DOWN . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoDockGoal>) ostream)
  "Serializes a message object of type '<AutoDockGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tag_no))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tag_no))
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lift_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'leave_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'targetPose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoDockGoal>) istream)
  "Deserializes a message object of type '<AutoDockGoal>"
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
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lift_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leave_distance) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'targetPose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoDockGoal>)))
  "Returns string type for a message object of type '<AutoDockGoal>"
  "woosh_msgs/AutoDockGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoDockGoal)))
  "Returns string type for a message object of type 'AutoDockGoal"
  "woosh_msgs/AutoDockGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoDockGoal>)))
  "Returns md5sum for a message object of type '<AutoDockGoal>"
  "f1af45c96b8d3744f0cc741ad7382081")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoDockGoal)))
  "Returns md5sum for a message object of type 'AutoDockGoal"
  "f1af45c96b8d3744f0cc741ad7382081")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoDockGoal>)))
  "Returns full string definition for message of type '<AutoDockGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string  tag_no  #tag编号~%~%int32   type~%int32   START = 0~%int32   PAUSE = 1~%int32   RESUM = 2~%int32   LEAVE = 3~%int32   RESET = 4~%~%int32   lift_type~%int32   UP = 0~%int32   DOWN = 1~%~%float32 leave_distance  #-999~%geometry_msgs/Pose2D  targetPose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoDockGoal)))
  "Returns full string definition for message of type 'AutoDockGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string  tag_no  #tag编号~%~%int32   type~%int32   START = 0~%int32   PAUSE = 1~%int32   RESUM = 2~%int32   LEAVE = 3~%int32   RESET = 4~%~%int32   lift_type~%int32   UP = 0~%int32   DOWN = 1~%~%float32 leave_distance  #-999~%geometry_msgs/Pose2D  targetPose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoDockGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'tag_no))
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'targetPose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoDockGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoDockGoal
    (cl:cons ':tag_no (tag_no msg))
    (cl:cons ':type (type msg))
    (cl:cons ':lift_type (lift_type msg))
    (cl:cons ':leave_distance (leave_distance msg))
    (cl:cons ':targetPose (targetPose msg))
))
