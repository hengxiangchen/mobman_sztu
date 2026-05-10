; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude ArTagPose.msg.html

(cl:defclass <ArTagPose> (roslisp-msg-protocol:ros-message)
  ((distination
    :reader distination
    :initarg :distination
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (tag_pose
    :reader tag_pose
    :initarg :tag_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (tag_id
    :reader tag_id
    :initarg :tag_id
    :type cl:integer
    :initform 0))
)

(cl:defclass ArTagPose (<ArTagPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArTagPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArTagPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<ArTagPose> is deprecated: use woosh_msgs-msg:ArTagPose instead.")))

(cl:ensure-generic-function 'distination-val :lambda-list '(m))
(cl:defmethod distination-val ((m <ArTagPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:distination-val is deprecated.  Use woosh_msgs-msg:distination instead.")
  (distination m))

(cl:ensure-generic-function 'tag_pose-val :lambda-list '(m))
(cl:defmethod tag_pose-val ((m <ArTagPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:tag_pose-val is deprecated.  Use woosh_msgs-msg:tag_pose instead.")
  (tag_pose m))

(cl:ensure-generic-function 'tag_id-val :lambda-list '(m))
(cl:defmethod tag_id-val ((m <ArTagPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:tag_id-val is deprecated.  Use woosh_msgs-msg:tag_id instead.")
  (tag_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArTagPose>) ostream)
  "Serializes a message object of type '<ArTagPose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'distination) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tag_pose) ostream)
  (cl:let* ((signed (cl:slot-value msg 'tag_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArTagPose>) istream)
  "Deserializes a message object of type '<ArTagPose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'distination) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tag_pose) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tag_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArTagPose>)))
  "Returns string type for a message object of type '<ArTagPose>"
  "woosh_msgs/ArTagPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArTagPose)))
  "Returns string type for a message object of type 'ArTagPose"
  "woosh_msgs/ArTagPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArTagPose>)))
  "Returns md5sum for a message object of type '<ArTagPose>"
  "4c61879d8040fe8796fb4042d4277e94")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArTagPose)))
  "Returns md5sum for a message object of type 'ArTagPose"
  "4c61879d8040fe8796fb4042d4277e94")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArTagPose>)))
  "Returns full string definition for message of type '<ArTagPose>"
  (cl:format cl:nil "geometry_msgs/Point distination~%geometry_msgs/Pose tag_pose~%int32 tag_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArTagPose)))
  "Returns full string definition for message of type 'ArTagPose"
  (cl:format cl:nil "geometry_msgs/Point distination~%geometry_msgs/Pose tag_pose~%int32 tag_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArTagPose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'distination))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tag_pose))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArTagPose>))
  "Converts a ROS message object to a list"
  (cl:list 'ArTagPose
    (cl:cons ':distination (distination msg))
    (cl:cons ':tag_pose (tag_pose msg))
    (cl:cons ':tag_id (tag_id msg))
))
