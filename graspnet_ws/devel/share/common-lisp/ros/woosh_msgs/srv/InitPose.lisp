; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-srv)


;//! \htmlinclude InitPose-request.msg.html

(cl:defclass <InitPose-request> (roslisp-msg-protocol:ros-message)
  ((initial_pose
    :reader initial_pose
    :initarg :initial_pose
    :type geometry_msgs-msg:PoseWithCovarianceStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovarianceStamped)))
)

(cl:defclass InitPose-request (<InitPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InitPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InitPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<InitPose-request> is deprecated: use woosh_msgs-srv:InitPose-request instead.")))

(cl:ensure-generic-function 'initial_pose-val :lambda-list '(m))
(cl:defmethod initial_pose-val ((m <InitPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:initial_pose-val is deprecated.  Use woosh_msgs-srv:initial_pose instead.")
  (initial_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InitPose-request>) ostream)
  "Serializes a message object of type '<InitPose-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'initial_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InitPose-request>) istream)
  "Deserializes a message object of type '<InitPose-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'initial_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InitPose-request>)))
  "Returns string type for a service object of type '<InitPose-request>"
  "woosh_msgs/InitPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitPose-request)))
  "Returns string type for a service object of type 'InitPose-request"
  "woosh_msgs/InitPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InitPose-request>)))
  "Returns md5sum for a message object of type '<InitPose-request>"
  "d85ac5803be8daa00e52d453ae42eb7d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InitPose-request)))
  "Returns md5sum for a message object of type 'InitPose-request"
  "d85ac5803be8daa00e52d453ae42eb7d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InitPose-request>)))
  "Returns full string definition for message of type '<InitPose-request>"
  (cl:format cl:nil "geometry_msgs/PoseWithCovarianceStamped initial_pose~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InitPose-request)))
  "Returns full string definition for message of type 'InitPose-request"
  (cl:format cl:nil "geometry_msgs/PoseWithCovarianceStamped initial_pose~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InitPose-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'initial_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InitPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'InitPose-request
    (cl:cons ':initial_pose (initial_pose msg))
))
;//! \htmlinclude InitPose-response.msg.html

(cl:defclass <InitPose-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass InitPose-response (<InitPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InitPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InitPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<InitPose-response> is deprecated: use woosh_msgs-srv:InitPose-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <InitPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:success-val is deprecated.  Use woosh_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InitPose-response>) ostream)
  "Serializes a message object of type '<InitPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InitPose-response>) istream)
  "Deserializes a message object of type '<InitPose-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InitPose-response>)))
  "Returns string type for a service object of type '<InitPose-response>"
  "woosh_msgs/InitPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitPose-response)))
  "Returns string type for a service object of type 'InitPose-response"
  "woosh_msgs/InitPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InitPose-response>)))
  "Returns md5sum for a message object of type '<InitPose-response>"
  "d85ac5803be8daa00e52d453ae42eb7d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InitPose-response)))
  "Returns md5sum for a message object of type 'InitPose-response"
  "d85ac5803be8daa00e52d453ae42eb7d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InitPose-response>)))
  "Returns full string definition for message of type '<InitPose-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InitPose-response)))
  "Returns full string definition for message of type 'InitPose-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InitPose-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InitPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'InitPose-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'InitPose)))
  'InitPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'InitPose)))
  'InitPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitPose)))
  "Returns string type for a service object of type '<InitPose>"
  "woosh_msgs/InitPose")