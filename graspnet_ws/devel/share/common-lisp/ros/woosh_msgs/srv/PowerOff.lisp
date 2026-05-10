; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-srv)


;//! \htmlinclude PowerOff-request.msg.html

(cl:defclass <PowerOff-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PowerOff-request (<PowerOff-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerOff-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerOff-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<PowerOff-request> is deprecated: use woosh_msgs-srv:PowerOff-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerOff-request>) ostream)
  "Serializes a message object of type '<PowerOff-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerOff-request>) istream)
  "Deserializes a message object of type '<PowerOff-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerOff-request>)))
  "Returns string type for a service object of type '<PowerOff-request>"
  "woosh_msgs/PowerOffRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerOff-request)))
  "Returns string type for a service object of type 'PowerOff-request"
  "woosh_msgs/PowerOffRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerOff-request>)))
  "Returns md5sum for a message object of type '<PowerOff-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerOff-request)))
  "Returns md5sum for a message object of type 'PowerOff-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerOff-request>)))
  "Returns full string definition for message of type '<PowerOff-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerOff-request)))
  "Returns full string definition for message of type 'PowerOff-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerOff-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerOff-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerOff-request
))
;//! \htmlinclude PowerOff-response.msg.html

(cl:defclass <PowerOff-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PowerOff-response (<PowerOff-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerOff-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerOff-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<PowerOff-response> is deprecated: use woosh_msgs-srv:PowerOff-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerOff-response>) ostream)
  "Serializes a message object of type '<PowerOff-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerOff-response>) istream)
  "Deserializes a message object of type '<PowerOff-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerOff-response>)))
  "Returns string type for a service object of type '<PowerOff-response>"
  "woosh_msgs/PowerOffResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerOff-response)))
  "Returns string type for a service object of type 'PowerOff-response"
  "woosh_msgs/PowerOffResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerOff-response>)))
  "Returns md5sum for a message object of type '<PowerOff-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerOff-response)))
  "Returns md5sum for a message object of type 'PowerOff-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerOff-response>)))
  "Returns full string definition for message of type '<PowerOff-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerOff-response)))
  "Returns full string definition for message of type 'PowerOff-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerOff-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerOff-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerOff-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PowerOff)))
  'PowerOff-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PowerOff)))
  'PowerOff-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerOff)))
  "Returns string type for a service object of type '<PowerOff>"
  "woosh_msgs/PowerOff")