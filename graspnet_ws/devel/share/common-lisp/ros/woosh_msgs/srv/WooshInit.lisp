; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-srv)


;//! \htmlinclude WooshInit-request.msg.html

(cl:defclass <WooshInit-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass WooshInit-request (<WooshInit-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WooshInit-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WooshInit-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<WooshInit-request> is deprecated: use woosh_msgs-srv:WooshInit-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WooshInit-request>) ostream)
  "Serializes a message object of type '<WooshInit-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WooshInit-request>) istream)
  "Deserializes a message object of type '<WooshInit-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WooshInit-request>)))
  "Returns string type for a service object of type '<WooshInit-request>"
  "woosh_msgs/WooshInitRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WooshInit-request)))
  "Returns string type for a service object of type 'WooshInit-request"
  "woosh_msgs/WooshInitRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WooshInit-request>)))
  "Returns md5sum for a message object of type '<WooshInit-request>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WooshInit-request)))
  "Returns md5sum for a message object of type 'WooshInit-request"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WooshInit-request>)))
  "Returns full string definition for message of type '<WooshInit-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WooshInit-request)))
  "Returns full string definition for message of type 'WooshInit-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WooshInit-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WooshInit-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WooshInit-request
))
;//! \htmlinclude WooshInit-response.msg.html

(cl:defclass <WooshInit-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass WooshInit-response (<WooshInit-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WooshInit-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WooshInit-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<WooshInit-response> is deprecated: use woosh_msgs-srv:WooshInit-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <WooshInit-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:success-val is deprecated.  Use woosh_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <WooshInit-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:message-val is deprecated.  Use woosh_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WooshInit-response>) ostream)
  "Serializes a message object of type '<WooshInit-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WooshInit-response>) istream)
  "Deserializes a message object of type '<WooshInit-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WooshInit-response>)))
  "Returns string type for a service object of type '<WooshInit-response>"
  "woosh_msgs/WooshInitResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WooshInit-response)))
  "Returns string type for a service object of type 'WooshInit-response"
  "woosh_msgs/WooshInitResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WooshInit-response>)))
  "Returns md5sum for a message object of type '<WooshInit-response>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WooshInit-response)))
  "Returns md5sum for a message object of type 'WooshInit-response"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WooshInit-response>)))
  "Returns full string definition for message of type '<WooshInit-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WooshInit-response)))
  "Returns full string definition for message of type 'WooshInit-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WooshInit-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WooshInit-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WooshInit-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WooshInit)))
  'WooshInit-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WooshInit)))
  'WooshInit-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WooshInit)))
  "Returns string type for a service object of type '<WooshInit>"
  "woosh_msgs/WooshInit")