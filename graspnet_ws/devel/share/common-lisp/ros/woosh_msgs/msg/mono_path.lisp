; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude mono_path.msg.html

(cl:defclass <mono_path> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (allow_avoid
    :reader allow_avoid
    :initarg :allow_avoid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass mono_path (<mono_path>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mono_path>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mono_path)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<mono_path> is deprecated: use woosh_msgs-msg:mono_path instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <mono_path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:path-val is deprecated.  Use woosh_msgs-msg:path instead.")
  (path m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <mono_path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:width-val is deprecated.  Use woosh_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'allow_avoid-val :lambda-list '(m))
(cl:defmethod allow_avoid-val ((m <mono_path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:allow_avoid-val is deprecated.  Use woosh_msgs-msg:allow_avoid instead.")
  (allow_avoid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mono_path>) ostream)
  "Serializes a message object of type '<mono_path>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'allow_avoid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mono_path>) istream)
  "Deserializes a message object of type '<mono_path>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'allow_avoid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mono_path>)))
  "Returns string type for a message object of type '<mono_path>"
  "woosh_msgs/mono_path")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mono_path)))
  "Returns string type for a message object of type 'mono_path"
  "woosh_msgs/mono_path")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mono_path>)))
  "Returns md5sum for a message object of type '<mono_path>"
  "6181e8db9f191cda19a6d8b7ae5e5f25")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mono_path)))
  "Returns md5sum for a message object of type 'mono_path"
  "6181e8db9f191cda19a6d8b7ae5e5f25")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mono_path>)))
  "Returns full string definition for message of type '<mono_path>"
  (cl:format cl:nil "nav_msgs/Path path~%float32 width~%bool allow_avoid~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mono_path)))
  "Returns full string definition for message of type 'mono_path"
  (cl:format cl:nil "nav_msgs/Path path~%float32 width~%bool allow_avoid~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mono_path>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mono_path>))
  "Converts a ROS message object to a list"
  (cl:list 'mono_path
    (cl:cons ':path (path msg))
    (cl:cons ':width (width msg))
    (cl:cons ':allow_avoid (allow_avoid msg))
))
