; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-srv)


;//! \htmlinclude GetLastError-request.msg.html

(cl:defclass <GetLastError-request> (roslisp-msg-protocol:ros-message)
  ((clear
    :reader clear
    :initarg :clear
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetLastError-request (<GetLastError-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLastError-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLastError-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<GetLastError-request> is deprecated: use woosh_msgs-srv:GetLastError-request instead.")))

(cl:ensure-generic-function 'clear-val :lambda-list '(m))
(cl:defmethod clear-val ((m <GetLastError-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:clear-val is deprecated.  Use woosh_msgs-srv:clear instead.")
  (clear m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLastError-request>) ostream)
  "Serializes a message object of type '<GetLastError-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clear) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLastError-request>) istream)
  "Deserializes a message object of type '<GetLastError-request>"
    (cl:setf (cl:slot-value msg 'clear) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLastError-request>)))
  "Returns string type for a service object of type '<GetLastError-request>"
  "woosh_msgs/GetLastErrorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLastError-request)))
  "Returns string type for a service object of type 'GetLastError-request"
  "woosh_msgs/GetLastErrorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLastError-request>)))
  "Returns md5sum for a message object of type '<GetLastError-request>"
  "b40afb2571e9bdb7a133903e7060837b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLastError-request)))
  "Returns md5sum for a message object of type 'GetLastError-request"
  "b40afb2571e9bdb7a133903e7060837b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLastError-request>)))
  "Returns full string definition for message of type '<GetLastError-request>"
  (cl:format cl:nil "bool clear~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLastError-request)))
  "Returns full string definition for message of type 'GetLastError-request"
  (cl:format cl:nil "bool clear~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLastError-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLastError-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLastError-request
    (cl:cons ':clear (clear msg))
))
;//! \htmlinclude GetLastError-response.msg.html

(cl:defclass <GetLastError-response> (roslisp-msg-protocol:ros-message)
  ((last_error
    :reader last_error
    :initarg :last_error
    :type cl:string
    :initform ""))
)

(cl:defclass GetLastError-response (<GetLastError-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLastError-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLastError-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<GetLastError-response> is deprecated: use woosh_msgs-srv:GetLastError-response instead.")))

(cl:ensure-generic-function 'last_error-val :lambda-list '(m))
(cl:defmethod last_error-val ((m <GetLastError-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:last_error-val is deprecated.  Use woosh_msgs-srv:last_error instead.")
  (last_error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLastError-response>) ostream)
  "Serializes a message object of type '<GetLastError-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'last_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'last_error))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLastError-response>) istream)
  "Deserializes a message object of type '<GetLastError-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'last_error) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'last_error) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLastError-response>)))
  "Returns string type for a service object of type '<GetLastError-response>"
  "woosh_msgs/GetLastErrorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLastError-response)))
  "Returns string type for a service object of type 'GetLastError-response"
  "woosh_msgs/GetLastErrorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLastError-response>)))
  "Returns md5sum for a message object of type '<GetLastError-response>"
  "b40afb2571e9bdb7a133903e7060837b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLastError-response)))
  "Returns md5sum for a message object of type 'GetLastError-response"
  "b40afb2571e9bdb7a133903e7060837b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLastError-response>)))
  "Returns full string definition for message of type '<GetLastError-response>"
  (cl:format cl:nil "string last_error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLastError-response)))
  "Returns full string definition for message of type 'GetLastError-response"
  (cl:format cl:nil "string last_error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLastError-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'last_error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLastError-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLastError-response
    (cl:cons ':last_error (last_error msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetLastError)))
  'GetLastError-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetLastError)))
  'GetLastError-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLastError)))
  "Returns string type for a service object of type '<GetLastError>"
  "woosh_msgs/GetLastError")