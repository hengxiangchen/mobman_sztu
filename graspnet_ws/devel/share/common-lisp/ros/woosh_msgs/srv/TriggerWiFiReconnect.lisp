; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-srv)


;//! \htmlinclude TriggerWiFiReconnect-request.msg.html

(cl:defclass <TriggerWiFiReconnect-request> (roslisp-msg-protocol:ros-message)
  ((parameter
    :reader parameter
    :initarg :parameter
    :type cl:string
    :initform ""))
)

(cl:defclass TriggerWiFiReconnect-request (<TriggerWiFiReconnect-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TriggerWiFiReconnect-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TriggerWiFiReconnect-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<TriggerWiFiReconnect-request> is deprecated: use woosh_msgs-srv:TriggerWiFiReconnect-request instead.")))

(cl:ensure-generic-function 'parameter-val :lambda-list '(m))
(cl:defmethod parameter-val ((m <TriggerWiFiReconnect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:parameter-val is deprecated.  Use woosh_msgs-srv:parameter instead.")
  (parameter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TriggerWiFiReconnect-request>) ostream)
  "Serializes a message object of type '<TriggerWiFiReconnect-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parameter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parameter))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TriggerWiFiReconnect-request>) istream)
  "Deserializes a message object of type '<TriggerWiFiReconnect-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameter) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parameter) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TriggerWiFiReconnect-request>)))
  "Returns string type for a service object of type '<TriggerWiFiReconnect-request>"
  "woosh_msgs/TriggerWiFiReconnectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TriggerWiFiReconnect-request)))
  "Returns string type for a service object of type 'TriggerWiFiReconnect-request"
  "woosh_msgs/TriggerWiFiReconnectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TriggerWiFiReconnect-request>)))
  "Returns md5sum for a message object of type '<TriggerWiFiReconnect-request>"
  "adeb7eac4f60ecb52de64e214c385171")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TriggerWiFiReconnect-request)))
  "Returns md5sum for a message object of type 'TriggerWiFiReconnect-request"
  "adeb7eac4f60ecb52de64e214c385171")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TriggerWiFiReconnect-request>)))
  "Returns full string definition for message of type '<TriggerWiFiReconnect-request>"
  (cl:format cl:nil "string parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TriggerWiFiReconnect-request)))
  "Returns full string definition for message of type 'TriggerWiFiReconnect-request"
  (cl:format cl:nil "string parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TriggerWiFiReconnect-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'parameter))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TriggerWiFiReconnect-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TriggerWiFiReconnect-request
    (cl:cons ':parameter (parameter msg))
))
;//! \htmlinclude TriggerWiFiReconnect-response.msg.html

(cl:defclass <TriggerWiFiReconnect-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass TriggerWiFiReconnect-response (<TriggerWiFiReconnect-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TriggerWiFiReconnect-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TriggerWiFiReconnect-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<TriggerWiFiReconnect-response> is deprecated: use woosh_msgs-srv:TriggerWiFiReconnect-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <TriggerWiFiReconnect-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:status-val is deprecated.  Use woosh_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <TriggerWiFiReconnect-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:message-val is deprecated.  Use woosh_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TriggerWiFiReconnect-response>) ostream)
  "Serializes a message object of type '<TriggerWiFiReconnect-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TriggerWiFiReconnect-response>) istream)
  "Deserializes a message object of type '<TriggerWiFiReconnect-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TriggerWiFiReconnect-response>)))
  "Returns string type for a service object of type '<TriggerWiFiReconnect-response>"
  "woosh_msgs/TriggerWiFiReconnectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TriggerWiFiReconnect-response)))
  "Returns string type for a service object of type 'TriggerWiFiReconnect-response"
  "woosh_msgs/TriggerWiFiReconnectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TriggerWiFiReconnect-response>)))
  "Returns md5sum for a message object of type '<TriggerWiFiReconnect-response>"
  "adeb7eac4f60ecb52de64e214c385171")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TriggerWiFiReconnect-response)))
  "Returns md5sum for a message object of type 'TriggerWiFiReconnect-response"
  "adeb7eac4f60ecb52de64e214c385171")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TriggerWiFiReconnect-response>)))
  "Returns full string definition for message of type '<TriggerWiFiReconnect-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TriggerWiFiReconnect-response)))
  "Returns full string definition for message of type 'TriggerWiFiReconnect-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TriggerWiFiReconnect-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TriggerWiFiReconnect-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TriggerWiFiReconnect-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TriggerWiFiReconnect)))
  'TriggerWiFiReconnect-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TriggerWiFiReconnect)))
  'TriggerWiFiReconnect-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TriggerWiFiReconnect)))
  "Returns string type for a service object of type '<TriggerWiFiReconnect>"
  "woosh_msgs/TriggerWiFiReconnect")