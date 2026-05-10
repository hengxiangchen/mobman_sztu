; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude bidirect_path.msg.html

(cl:defclass <bidirect_path> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (allow_avoid
    :reader allow_avoid
    :initarg :allow_avoid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass bidirect_path (<bidirect_path>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bidirect_path>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bidirect_path)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<bidirect_path> is deprecated: use woosh_msgs-msg:bidirect_path instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <bidirect_path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:path-val is deprecated.  Use woosh_msgs-msg:path instead.")
  (path m))

(cl:ensure-generic-function 'allow_avoid-val :lambda-list '(m))
(cl:defmethod allow_avoid-val ((m <bidirect_path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:allow_avoid-val is deprecated.  Use woosh_msgs-msg:allow_avoid instead.")
  (allow_avoid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bidirect_path>) ostream)
  "Serializes a message object of type '<bidirect_path>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'allow_avoid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bidirect_path>) istream)
  "Deserializes a message object of type '<bidirect_path>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
    (cl:setf (cl:slot-value msg 'allow_avoid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bidirect_path>)))
  "Returns string type for a message object of type '<bidirect_path>"
  "woosh_msgs/bidirect_path")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bidirect_path)))
  "Returns string type for a message object of type 'bidirect_path"
  "woosh_msgs/bidirect_path")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bidirect_path>)))
  "Returns md5sum for a message object of type '<bidirect_path>"
  "7d735010e9a52fa18b34c7e18e19ee43")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bidirect_path)))
  "Returns md5sum for a message object of type 'bidirect_path"
  "7d735010e9a52fa18b34c7e18e19ee43")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bidirect_path>)))
  "Returns full string definition for message of type '<bidirect_path>"
  (cl:format cl:nil "nav_msgs/Path path~%bool allow_avoid~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bidirect_path)))
  "Returns full string definition for message of type 'bidirect_path"
  (cl:format cl:nil "nav_msgs/Path path~%bool allow_avoid~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bidirect_path>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bidirect_path>))
  "Converts a ROS message object to a list"
  (cl:list 'bidirect_path
    (cl:cons ':path (path msg))
    (cl:cons ':allow_avoid (allow_avoid msg))
))
