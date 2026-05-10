; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-srv)


;//! \htmlinclude ForgetWiFi-request.msg.html

(cl:defclass <ForgetWiFi-request> (roslisp-msg-protocol:ros-message)
  ((ssid
    :reader ssid
    :initarg :ssid
    :type cl:string
    :initform ""))
)

(cl:defclass ForgetWiFi-request (<ForgetWiFi-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ForgetWiFi-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ForgetWiFi-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<ForgetWiFi-request> is deprecated: use woosh_msgs-srv:ForgetWiFi-request instead.")))

(cl:ensure-generic-function 'ssid-val :lambda-list '(m))
(cl:defmethod ssid-val ((m <ForgetWiFi-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:ssid-val is deprecated.  Use woosh_msgs-srv:ssid instead.")
  (ssid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ForgetWiFi-request>) ostream)
  "Serializes a message object of type '<ForgetWiFi-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ssid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ssid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ForgetWiFi-request>) istream)
  "Deserializes a message object of type '<ForgetWiFi-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ssid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ssid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ForgetWiFi-request>)))
  "Returns string type for a service object of type '<ForgetWiFi-request>"
  "woosh_msgs/ForgetWiFiRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForgetWiFi-request)))
  "Returns string type for a service object of type 'ForgetWiFi-request"
  "woosh_msgs/ForgetWiFiRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ForgetWiFi-request>)))
  "Returns md5sum for a message object of type '<ForgetWiFi-request>"
  "64e231485c28313a3ae54ffe3dc3780a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ForgetWiFi-request)))
  "Returns md5sum for a message object of type 'ForgetWiFi-request"
  "64e231485c28313a3ae54ffe3dc3780a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ForgetWiFi-request>)))
  "Returns full string definition for message of type '<ForgetWiFi-request>"
  (cl:format cl:nil "string ssid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ForgetWiFi-request)))
  "Returns full string definition for message of type 'ForgetWiFi-request"
  (cl:format cl:nil "string ssid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ForgetWiFi-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ssid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ForgetWiFi-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ForgetWiFi-request
    (cl:cons ':ssid (ssid msg))
))
;//! \htmlinclude ForgetWiFi-response.msg.html

(cl:defclass <ForgetWiFi-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ForgetWiFi-response (<ForgetWiFi-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ForgetWiFi-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ForgetWiFi-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<ForgetWiFi-response> is deprecated: use woosh_msgs-srv:ForgetWiFi-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ForgetWiFi-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:status-val is deprecated.  Use woosh_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ForgetWiFi-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:message-val is deprecated.  Use woosh_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ForgetWiFi-response>) ostream)
  "Serializes a message object of type '<ForgetWiFi-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ForgetWiFi-response>) istream)
  "Deserializes a message object of type '<ForgetWiFi-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ForgetWiFi-response>)))
  "Returns string type for a service object of type '<ForgetWiFi-response>"
  "woosh_msgs/ForgetWiFiResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForgetWiFi-response)))
  "Returns string type for a service object of type 'ForgetWiFi-response"
  "woosh_msgs/ForgetWiFiResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ForgetWiFi-response>)))
  "Returns md5sum for a message object of type '<ForgetWiFi-response>"
  "64e231485c28313a3ae54ffe3dc3780a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ForgetWiFi-response)))
  "Returns md5sum for a message object of type 'ForgetWiFi-response"
  "64e231485c28313a3ae54ffe3dc3780a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ForgetWiFi-response>)))
  "Returns full string definition for message of type '<ForgetWiFi-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ForgetWiFi-response)))
  "Returns full string definition for message of type 'ForgetWiFi-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ForgetWiFi-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ForgetWiFi-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ForgetWiFi-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ForgetWiFi)))
  'ForgetWiFi-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ForgetWiFi)))
  'ForgetWiFi-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForgetWiFi)))
  "Returns string type for a service object of type '<ForgetWiFi>"
  "woosh_msgs/ForgetWiFi")