; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude GraphVertex.msg.html

(cl:defclass <GraphVertex> (roslisp-msg-protocol:ros-message)
  ((mark
    :reader mark
    :initarg :mark
    :type woosh_msgs-msg:NavFieldPoint
    :initform (cl:make-instance 'woosh_msgs-msg:NavFieldPoint))
   (field_id
    :reader field_id
    :initarg :field_id
    :type cl:integer
    :initform 0))
)

(cl:defclass GraphVertex (<GraphVertex>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GraphVertex>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GraphVertex)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<GraphVertex> is deprecated: use woosh_msgs-msg:GraphVertex instead.")))

(cl:ensure-generic-function 'mark-val :lambda-list '(m))
(cl:defmethod mark-val ((m <GraphVertex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:mark-val is deprecated.  Use woosh_msgs-msg:mark instead.")
  (mark m))

(cl:ensure-generic-function 'field_id-val :lambda-list '(m))
(cl:defmethod field_id-val ((m <GraphVertex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:field_id-val is deprecated.  Use woosh_msgs-msg:field_id instead.")
  (field_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GraphVertex>) ostream)
  "Serializes a message object of type '<GraphVertex>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mark) ostream)
  (cl:let* ((signed (cl:slot-value msg 'field_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GraphVertex>) istream)
  "Deserializes a message object of type '<GraphVertex>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mark) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'field_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GraphVertex>)))
  "Returns string type for a message object of type '<GraphVertex>"
  "woosh_msgs/GraphVertex")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GraphVertex)))
  "Returns string type for a message object of type 'GraphVertex"
  "woosh_msgs/GraphVertex")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GraphVertex>)))
  "Returns md5sum for a message object of type '<GraphVertex>"
  "62869234d6d1db121c045433a043e865")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GraphVertex)))
  "Returns md5sum for a message object of type 'GraphVertex"
  "62869234d6d1db121c045433a043e865")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GraphVertex>)))
  "Returns full string definition for message of type '<GraphVertex>"
  (cl:format cl:nil "NavFieldPoint mark~%int32 field_id~%~%================================================================================~%MSG: woosh_msgs/NavFieldPoint~%geometry_msgs/Point pt	#Marker position~%uint32 id 		#Marker id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GraphVertex)))
  "Returns full string definition for message of type 'GraphVertex"
  (cl:format cl:nil "NavFieldPoint mark~%int32 field_id~%~%================================================================================~%MSG: woosh_msgs/NavFieldPoint~%geometry_msgs/Point pt	#Marker position~%uint32 id 		#Marker id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GraphVertex>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mark))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GraphVertex>))
  "Converts a ROS message object to a list"
  (cl:list 'GraphVertex
    (cl:cons ':mark (mark msg))
    (cl:cons ':field_id (field_id msg))
))
