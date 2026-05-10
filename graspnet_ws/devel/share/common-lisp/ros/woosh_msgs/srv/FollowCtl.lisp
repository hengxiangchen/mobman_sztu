; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-srv)


;//! \htmlinclude FollowCtl-request.msg.html

(cl:defclass <FollowCtl-request> (roslisp-msg-protocol:ros-message)
  ((function
    :reader function
    :initarg :function
    :type cl:integer
    :initform 0)
   (command
    :reader command
    :initarg :command
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass FollowCtl-request (<FollowCtl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowCtl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowCtl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<FollowCtl-request> is deprecated: use woosh_msgs-srv:FollowCtl-request instead.")))

(cl:ensure-generic-function 'function-val :lambda-list '(m))
(cl:defmethod function-val ((m <FollowCtl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:function-val is deprecated.  Use woosh_msgs-srv:function instead.")
  (function m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <FollowCtl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:command-val is deprecated.  Use woosh_msgs-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <FollowCtl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:message-val is deprecated.  Use woosh_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowCtl-request>) ostream)
  "Serializes a message object of type '<FollowCtl-request>"
  (cl:let* ((signed (cl:slot-value msg 'function)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowCtl-request>) istream)
  "Deserializes a message object of type '<FollowCtl-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'function) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowCtl-request>)))
  "Returns string type for a service object of type '<FollowCtl-request>"
  "woosh_msgs/FollowCtlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowCtl-request)))
  "Returns string type for a service object of type 'FollowCtl-request"
  "woosh_msgs/FollowCtlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowCtl-request>)))
  "Returns md5sum for a message object of type '<FollowCtl-request>"
  "11f809d80e616065ce721fceb2f99c9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowCtl-request)))
  "Returns md5sum for a message object of type 'FollowCtl-request"
  "11f809d80e616065ce721fceb2f99c9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowCtl-request>)))
  "Returns full string definition for message of type '<FollowCtl-request>"
  (cl:format cl:nil "int32 function~%int32 command~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowCtl-request)))
  "Returns full string definition for message of type 'FollowCtl-request"
  (cl:format cl:nil "int32 function~%int32 command~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowCtl-request>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowCtl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowCtl-request
    (cl:cons ':function (function msg))
    (cl:cons ':command (command msg))
    (cl:cons ':message (message msg))
))
;//! \htmlinclude FollowCtl-response.msg.html

(cl:defclass <FollowCtl-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass FollowCtl-response (<FollowCtl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowCtl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowCtl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<FollowCtl-response> is deprecated: use woosh_msgs-srv:FollowCtl-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <FollowCtl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:status-val is deprecated.  Use woosh_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowCtl-response>) ostream)
  "Serializes a message object of type '<FollowCtl-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowCtl-response>) istream)
  "Deserializes a message object of type '<FollowCtl-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowCtl-response>)))
  "Returns string type for a service object of type '<FollowCtl-response>"
  "woosh_msgs/FollowCtlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowCtl-response)))
  "Returns string type for a service object of type 'FollowCtl-response"
  "woosh_msgs/FollowCtlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowCtl-response>)))
  "Returns md5sum for a message object of type '<FollowCtl-response>"
  "11f809d80e616065ce721fceb2f99c9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowCtl-response)))
  "Returns md5sum for a message object of type 'FollowCtl-response"
  "11f809d80e616065ce721fceb2f99c9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowCtl-response>)))
  "Returns full string definition for message of type '<FollowCtl-response>"
  (cl:format cl:nil "int32 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowCtl-response)))
  "Returns full string definition for message of type 'FollowCtl-response"
  (cl:format cl:nil "int32 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowCtl-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowCtl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowCtl-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FollowCtl)))
  'FollowCtl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FollowCtl)))
  'FollowCtl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowCtl)))
  "Returns string type for a service object of type '<FollowCtl>"
  "woosh_msgs/FollowCtl")