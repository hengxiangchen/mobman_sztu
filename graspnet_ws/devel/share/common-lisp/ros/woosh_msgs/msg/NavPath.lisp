; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude NavPath.msg.html

(cl:defclass <NavPath> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (path_type
    :reader path_type
    :initarg :path_type
    :type cl:integer
    :initform 0)
   (path_check_code
    :reader path_check_code
    :initarg :path_check_code
    :type cl:integer
    :initform 0))
)

(cl:defclass NavPath (<NavPath>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavPath>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavPath)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<NavPath> is deprecated: use woosh_msgs-msg:NavPath instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <NavPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:path-val is deprecated.  Use woosh_msgs-msg:path instead.")
  (path m))

(cl:ensure-generic-function 'path_type-val :lambda-list '(m))
(cl:defmethod path_type-val ((m <NavPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:path_type-val is deprecated.  Use woosh_msgs-msg:path_type instead.")
  (path_type m))

(cl:ensure-generic-function 'path_check_code-val :lambda-list '(m))
(cl:defmethod path_check_code-val ((m <NavPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:path_check_code-val is deprecated.  Use woosh_msgs-msg:path_check_code instead.")
  (path_check_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavPath>) ostream)
  "Serializes a message object of type '<NavPath>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'path_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'path_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'path_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_check_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'path_check_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'path_check_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'path_check_code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavPath>) istream)
  "Deserializes a message object of type '<NavPath>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'path_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'path_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'path_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_check_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'path_check_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'path_check_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'path_check_code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavPath>)))
  "Returns string type for a message object of type '<NavPath>"
  "woosh_msgs/NavPath")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavPath)))
  "Returns string type for a message object of type 'NavPath"
  "woosh_msgs/NavPath")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavPath>)))
  "Returns md5sum for a message object of type '<NavPath>"
  "27705117dadbad8cf0d09e3e8f7c9ac0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavPath)))
  "Returns md5sum for a message object of type 'NavPath"
  "27705117dadbad8cf0d09e3e8f7c9ac0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavPath>)))
  "Returns full string definition for message of type '<NavPath>"
  (cl:format cl:nil "nav_msgs/Path path~%uint32 path_type 　#0=move base更新的路径，1= 回传的路径~%uint32 path_check_code~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavPath)))
  "Returns full string definition for message of type 'NavPath"
  (cl:format cl:nil "nav_msgs/Path path~%uint32 path_type 　#0=move base更新的路径，1= 回传的路径~%uint32 path_check_code~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavPath>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavPath>))
  "Converts a ROS message object to a list"
  (cl:list 'NavPath
    (cl:cons ':path (path msg))
    (cl:cons ':path_type (path_type msg))
    (cl:cons ':path_check_code (path_check_code msg))
))
