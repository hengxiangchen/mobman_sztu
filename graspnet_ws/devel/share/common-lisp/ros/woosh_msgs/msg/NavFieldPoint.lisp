; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude NavFieldPoint.msg.html

(cl:defclass <NavFieldPoint> (roslisp-msg-protocol:ros-message)
  ((pt
    :reader pt
    :initarg :pt
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass NavFieldPoint (<NavFieldPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavFieldPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavFieldPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<NavFieldPoint> is deprecated: use woosh_msgs-msg:NavFieldPoint instead.")))

(cl:ensure-generic-function 'pt-val :lambda-list '(m))
(cl:defmethod pt-val ((m <NavFieldPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:pt-val is deprecated.  Use woosh_msgs-msg:pt instead.")
  (pt m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <NavFieldPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:id-val is deprecated.  Use woosh_msgs-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavFieldPoint>) ostream)
  "Serializes a message object of type '<NavFieldPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pt) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavFieldPoint>) istream)
  "Deserializes a message object of type '<NavFieldPoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pt) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavFieldPoint>)))
  "Returns string type for a message object of type '<NavFieldPoint>"
  "woosh_msgs/NavFieldPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavFieldPoint)))
  "Returns string type for a message object of type 'NavFieldPoint"
  "woosh_msgs/NavFieldPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavFieldPoint>)))
  "Returns md5sum for a message object of type '<NavFieldPoint>"
  "eb13b00633b9c5d2d37ee845ea08015a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavFieldPoint)))
  "Returns md5sum for a message object of type 'NavFieldPoint"
  "eb13b00633b9c5d2d37ee845ea08015a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavFieldPoint>)))
  "Returns full string definition for message of type '<NavFieldPoint>"
  (cl:format cl:nil "geometry_msgs/Point pt	#Marker position~%uint32 id 		#Marker id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavFieldPoint)))
  "Returns full string definition for message of type 'NavFieldPoint"
  (cl:format cl:nil "geometry_msgs/Point pt	#Marker position~%uint32 id 		#Marker id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavFieldPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pt))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavFieldPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'NavFieldPoint
    (cl:cons ':pt (pt msg))
    (cl:cons ':id (id msg))
))
