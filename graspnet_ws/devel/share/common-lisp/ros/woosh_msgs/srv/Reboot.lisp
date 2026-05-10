; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-srv)


;//! \htmlinclude Reboot-request.msg.html

(cl:defclass <Reboot-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Reboot-request (<Reboot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Reboot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Reboot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<Reboot-request> is deprecated: use woosh_msgs-srv:Reboot-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Reboot-request>) ostream)
  "Serializes a message object of type '<Reboot-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Reboot-request>) istream)
  "Deserializes a message object of type '<Reboot-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Reboot-request>)))
  "Returns string type for a service object of type '<Reboot-request>"
  "woosh_msgs/RebootRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reboot-request)))
  "Returns string type for a service object of type 'Reboot-request"
  "woosh_msgs/RebootRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Reboot-request>)))
  "Returns md5sum for a message object of type '<Reboot-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Reboot-request)))
  "Returns md5sum for a message object of type 'Reboot-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Reboot-request>)))
  "Returns full string definition for message of type '<Reboot-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Reboot-request)))
  "Returns full string definition for message of type 'Reboot-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Reboot-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Reboot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Reboot-request
))
;//! \htmlinclude Reboot-response.msg.html

(cl:defclass <Reboot-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Reboot-response (<Reboot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Reboot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Reboot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<Reboot-response> is deprecated: use woosh_msgs-srv:Reboot-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Reboot-response>) ostream)
  "Serializes a message object of type '<Reboot-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Reboot-response>) istream)
  "Deserializes a message object of type '<Reboot-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Reboot-response>)))
  "Returns string type for a service object of type '<Reboot-response>"
  "woosh_msgs/RebootResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reboot-response)))
  "Returns string type for a service object of type 'Reboot-response"
  "woosh_msgs/RebootResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Reboot-response>)))
  "Returns md5sum for a message object of type '<Reboot-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Reboot-response)))
  "Returns md5sum for a message object of type 'Reboot-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Reboot-response>)))
  "Returns full string definition for message of type '<Reboot-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Reboot-response)))
  "Returns full string definition for message of type 'Reboot-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Reboot-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Reboot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Reboot-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Reboot)))
  'Reboot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Reboot)))
  'Reboot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reboot)))
  "Returns string type for a service object of type '<Reboot>"
  "woosh_msgs/Reboot")