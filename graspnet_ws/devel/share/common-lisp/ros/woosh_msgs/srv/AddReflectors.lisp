; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-srv)


;//! \htmlinclude AddReflectors-request.msg.html

(cl:defclass <AddReflectors-request> (roslisp-msg-protocol:ros-message)
  ((isSave
    :reader isSave
    :initarg :isSave
    :type cl:boolean
    :initform cl:nil)
   (deleteReflector
    :reader deleteReflector
    :initarg :deleteReflector
    :type cl:boolean
    :initform cl:nil)
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass AddReflectors-request (<AddReflectors-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddReflectors-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddReflectors-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<AddReflectors-request> is deprecated: use woosh_msgs-srv:AddReflectors-request instead.")))

(cl:ensure-generic-function 'isSave-val :lambda-list '(m))
(cl:defmethod isSave-val ((m <AddReflectors-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:isSave-val is deprecated.  Use woosh_msgs-srv:isSave instead.")
  (isSave m))

(cl:ensure-generic-function 'deleteReflector-val :lambda-list '(m))
(cl:defmethod deleteReflector-val ((m <AddReflectors-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:deleteReflector-val is deprecated.  Use woosh_msgs-srv:deleteReflector instead.")
  (deleteReflector m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <AddReflectors-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:id-val is deprecated.  Use woosh_msgs-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddReflectors-request>) ostream)
  "Serializes a message object of type '<AddReflectors-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isSave) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'deleteReflector) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddReflectors-request>) istream)
  "Deserializes a message object of type '<AddReflectors-request>"
    (cl:setf (cl:slot-value msg 'isSave) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'deleteReflector) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddReflectors-request>)))
  "Returns string type for a service object of type '<AddReflectors-request>"
  "woosh_msgs/AddReflectorsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddReflectors-request)))
  "Returns string type for a service object of type 'AddReflectors-request"
  "woosh_msgs/AddReflectorsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddReflectors-request>)))
  "Returns md5sum for a message object of type '<AddReflectors-request>"
  "3b2430547d42b81d587ff6241efc999c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddReflectors-request)))
  "Returns md5sum for a message object of type 'AddReflectors-request"
  "3b2430547d42b81d587ff6241efc999c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddReflectors-request>)))
  "Returns full string definition for message of type '<AddReflectors-request>"
  (cl:format cl:nil "bool    isSave            #true:在map中添加新的reflactors； flase:定位~%bool    deleteReflector   #删除地图上已添加的reflector~%uint32   id                #删除指定id号的reflector~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddReflectors-request)))
  "Returns full string definition for message of type 'AddReflectors-request"
  (cl:format cl:nil "bool    isSave            #true:在map中添加新的reflactors； flase:定位~%bool    deleteReflector   #删除地图上已添加的reflector~%uint32   id                #删除指定id号的reflector~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddReflectors-request>))
  (cl:+ 0
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddReflectors-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddReflectors-request
    (cl:cons ':isSave (isSave msg))
    (cl:cons ':deleteReflector (deleteReflector msg))
    (cl:cons ':id (id msg))
))
;//! \htmlinclude AddReflectors-response.msg.html

(cl:defclass <AddReflectors-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AddReflectors-response (<AddReflectors-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddReflectors-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddReflectors-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<AddReflectors-response> is deprecated: use woosh_msgs-srv:AddReflectors-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddReflectors-response>) ostream)
  "Serializes a message object of type '<AddReflectors-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddReflectors-response>) istream)
  "Deserializes a message object of type '<AddReflectors-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddReflectors-response>)))
  "Returns string type for a service object of type '<AddReflectors-response>"
  "woosh_msgs/AddReflectorsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddReflectors-response)))
  "Returns string type for a service object of type 'AddReflectors-response"
  "woosh_msgs/AddReflectorsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddReflectors-response>)))
  "Returns md5sum for a message object of type '<AddReflectors-response>"
  "3b2430547d42b81d587ff6241efc999c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddReflectors-response)))
  "Returns md5sum for a message object of type 'AddReflectors-response"
  "3b2430547d42b81d587ff6241efc999c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddReflectors-response>)))
  "Returns full string definition for message of type '<AddReflectors-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddReflectors-response)))
  "Returns full string definition for message of type 'AddReflectors-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddReflectors-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddReflectors-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddReflectors-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddReflectors)))
  'AddReflectors-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddReflectors)))
  'AddReflectors-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddReflectors)))
  "Returns string type for a service object of type '<AddReflectors>"
  "woosh_msgs/AddReflectors")