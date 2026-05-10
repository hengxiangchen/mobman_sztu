; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude TagLocalizationGoal.msg.html

(cl:defclass <TagLocalizationGoal> (roslisp-msg-protocol:ros-message)
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
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass TagLocalizationGoal (<TagLocalizationGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TagLocalizationGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TagLocalizationGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<TagLocalizationGoal> is deprecated: use woosh_msgs-msg:TagLocalizationGoal instead.")))

(cl:ensure-generic-function 'tag_no-val :lambda-list '(m))
(cl:defmethod tag_no-val ((m <TagLocalizationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:tag_no-val is deprecated.  Use woosh_msgs-msg:tag_no instead.")
  (tag_no m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <TagLocalizationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:type-val is deprecated.  Use woosh_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <TagLocalizationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:theta-val is deprecated.  Use woosh_msgs-msg:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TagLocalizationGoal>) ostream)
  "Serializes a message object of type '<TagLocalizationGoal>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TagLocalizationGoal>) istream)
  "Deserializes a message object of type '<TagLocalizationGoal>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TagLocalizationGoal>)))
  "Returns string type for a message object of type '<TagLocalizationGoal>"
  "woosh_msgs/TagLocalizationGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TagLocalizationGoal)))
  "Returns string type for a message object of type 'TagLocalizationGoal"
  "woosh_msgs/TagLocalizationGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TagLocalizationGoal>)))
  "Returns md5sum for a message object of type '<TagLocalizationGoal>"
  "95b670fa47b39b05ec257bfd15eeeb05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TagLocalizationGoal)))
  "Returns md5sum for a message object of type 'TagLocalizationGoal"
  "95b670fa47b39b05ec257bfd15eeeb05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TagLocalizationGoal>)))
  "Returns full string definition for message of type '<TagLocalizationGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string  tag_no  #tag编号~%int32   type    #tag定位的模式，1：两个tag，三角定位~%float32 theta   #举升动作时，机器人导航到达点偏转角~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TagLocalizationGoal)))
  "Returns full string definition for message of type 'TagLocalizationGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string  tag_no  #tag编号~%int32   type    #tag定位的模式，1：两个tag，三角定位~%float32 theta   #举升动作时，机器人导航到达点偏转角~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TagLocalizationGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'tag_no))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TagLocalizationGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'TagLocalizationGoal
    (cl:cons ':tag_no (tag_no msg))
    (cl:cons ':type (type msg))
    (cl:cons ':theta (theta msg))
))
