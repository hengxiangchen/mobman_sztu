; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude deployment_marker.msg.html

(cl:defclass <deployment_marker> (roslisp-msg-protocol:ros-message)
  ((markerID
    :reader markerID
    :initarg :markerID
    :type cl:integer
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (group
    :reader group
    :initarg :group
    :type cl:fixnum
    :initform 0))
)

(cl:defclass deployment_marker (<deployment_marker>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <deployment_marker>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'deployment_marker)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<deployment_marker> is deprecated: use woosh_msgs-msg:deployment_marker instead.")))

(cl:ensure-generic-function 'markerID-val :lambda-list '(m))
(cl:defmethod markerID-val ((m <deployment_marker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:markerID-val is deprecated.  Use woosh_msgs-msg:markerID instead.")
  (markerID m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <deployment_marker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:pose-val is deprecated.  Use woosh_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'group-val :lambda-list '(m))
(cl:defmethod group-val ((m <deployment_marker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:group-val is deprecated.  Use woosh_msgs-msg:group instead.")
  (group m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <deployment_marker>) ostream)
  "Serializes a message object of type '<deployment_marker>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'markerID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'markerID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'markerID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'markerID)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'group)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'group)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <deployment_marker>) istream)
  "Deserializes a message object of type '<deployment_marker>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'markerID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'markerID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'markerID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'markerID)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'group)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'group)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<deployment_marker>)))
  "Returns string type for a message object of type '<deployment_marker>"
  "woosh_msgs/deployment_marker")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'deployment_marker)))
  "Returns string type for a message object of type 'deployment_marker"
  "woosh_msgs/deployment_marker")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<deployment_marker>)))
  "Returns md5sum for a message object of type '<deployment_marker>"
  "37751f140e34699d48128a706ed74fc6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'deployment_marker)))
  "Returns md5sum for a message object of type 'deployment_marker"
  "37751f140e34699d48128a706ed74fc6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<deployment_marker>)))
  "Returns full string definition for message of type '<deployment_marker>"
  (cl:format cl:nil "uint32 markerID~%geometry_msgs/Pose pose~%uint16  group~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'deployment_marker)))
  "Returns full string definition for message of type 'deployment_marker"
  (cl:format cl:nil "uint32 markerID~%geometry_msgs/Pose pose~%uint16  group~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <deployment_marker>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <deployment_marker>))
  "Converts a ROS message object to a list"
  (cl:list 'deployment_marker
    (cl:cons ':markerID (markerID msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':group (group msg))
))
