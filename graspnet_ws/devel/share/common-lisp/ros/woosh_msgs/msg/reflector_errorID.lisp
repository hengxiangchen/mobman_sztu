; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude reflector_errorID.msg.html

(cl:defclass <reflector_errorID> (roslisp-msg-protocol:ros-message)
  ((ID1
    :reader ID1
    :initarg :ID1
    :type cl:integer
    :initform 0)
   (ID2
    :reader ID2
    :initarg :ID2
    :type cl:integer
    :initform 0)
   (ID3
    :reader ID3
    :initarg :ID3
    :type cl:integer
    :initform 0))
)

(cl:defclass reflector_errorID (<reflector_errorID>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <reflector_errorID>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'reflector_errorID)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<reflector_errorID> is deprecated: use woosh_msgs-msg:reflector_errorID instead.")))

(cl:ensure-generic-function 'ID1-val :lambda-list '(m))
(cl:defmethod ID1-val ((m <reflector_errorID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:ID1-val is deprecated.  Use woosh_msgs-msg:ID1 instead.")
  (ID1 m))

(cl:ensure-generic-function 'ID2-val :lambda-list '(m))
(cl:defmethod ID2-val ((m <reflector_errorID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:ID2-val is deprecated.  Use woosh_msgs-msg:ID2 instead.")
  (ID2 m))

(cl:ensure-generic-function 'ID3-val :lambda-list '(m))
(cl:defmethod ID3-val ((m <reflector_errorID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:ID3-val is deprecated.  Use woosh_msgs-msg:ID3 instead.")
  (ID3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <reflector_errorID>) ostream)
  "Serializes a message object of type '<reflector_errorID>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID3)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <reflector_errorID>) istream)
  "Deserializes a message object of type '<reflector_errorID>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID3)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<reflector_errorID>)))
  "Returns string type for a message object of type '<reflector_errorID>"
  "woosh_msgs/reflector_errorID")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'reflector_errorID)))
  "Returns string type for a message object of type 'reflector_errorID"
  "woosh_msgs/reflector_errorID")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<reflector_errorID>)))
  "Returns md5sum for a message object of type '<reflector_errorID>"
  "0f95342ff8d3c62efed10a6fed87a878")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'reflector_errorID)))
  "Returns md5sum for a message object of type 'reflector_errorID"
  "0f95342ff8d3c62efed10a6fed87a878")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<reflector_errorID>)))
  "Returns full string definition for message of type '<reflector_errorID>"
  (cl:format cl:nil "uint32 ID1~%uint32 ID2~%uint32 ID3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'reflector_errorID)))
  "Returns full string definition for message of type 'reflector_errorID"
  (cl:format cl:nil "uint32 ID1~%uint32 ID2~%uint32 ID3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <reflector_errorID>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <reflector_errorID>))
  "Converts a ROS message object to a list"
  (cl:list 'reflector_errorID
    (cl:cons ':ID1 (ID1 msg))
    (cl:cons ':ID2 (ID2 msg))
    (cl:cons ':ID3 (ID3 msg))
))
