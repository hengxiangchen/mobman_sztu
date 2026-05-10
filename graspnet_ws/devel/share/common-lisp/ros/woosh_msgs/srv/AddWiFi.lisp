; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-srv)


;//! \htmlinclude AddWiFi-request.msg.html

(cl:defclass <AddWiFi-request> (roslisp-msg-protocol:ros-message)
  ((wifi_parameter
    :reader wifi_parameter
    :initarg :wifi_parameter
    :type cl:string
    :initform "")
   (connect_now
    :reader connect_now
    :initarg :connect_now
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AddWiFi-request (<AddWiFi-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddWiFi-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddWiFi-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<AddWiFi-request> is deprecated: use woosh_msgs-srv:AddWiFi-request instead.")))

(cl:ensure-generic-function 'wifi_parameter-val :lambda-list '(m))
(cl:defmethod wifi_parameter-val ((m <AddWiFi-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:wifi_parameter-val is deprecated.  Use woosh_msgs-srv:wifi_parameter instead.")
  (wifi_parameter m))

(cl:ensure-generic-function 'connect_now-val :lambda-list '(m))
(cl:defmethod connect_now-val ((m <AddWiFi-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:connect_now-val is deprecated.  Use woosh_msgs-srv:connect_now instead.")
  (connect_now m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddWiFi-request>) ostream)
  "Serializes a message object of type '<AddWiFi-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'wifi_parameter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'wifi_parameter))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'connect_now) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddWiFi-request>) istream)
  "Deserializes a message object of type '<AddWiFi-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wifi_parameter) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'wifi_parameter) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'connect_now) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddWiFi-request>)))
  "Returns string type for a service object of type '<AddWiFi-request>"
  "woosh_msgs/AddWiFiRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddWiFi-request)))
  "Returns string type for a service object of type 'AddWiFi-request"
  "woosh_msgs/AddWiFiRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddWiFi-request>)))
  "Returns md5sum for a message object of type '<AddWiFi-request>"
  "01216da3b47dc86d0d6d1f4a6238121c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddWiFi-request)))
  "Returns md5sum for a message object of type 'AddWiFi-request"
  "01216da3b47dc86d0d6d1f4a6238121c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddWiFi-request>)))
  "Returns full string definition for message of type '<AddWiFi-request>"
  (cl:format cl:nil "string wifi_parameter~%bool connect_now~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddWiFi-request)))
  "Returns full string definition for message of type 'AddWiFi-request"
  (cl:format cl:nil "string wifi_parameter~%bool connect_now~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddWiFi-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'wifi_parameter))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddWiFi-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddWiFi-request
    (cl:cons ':wifi_parameter (wifi_parameter msg))
    (cl:cons ':connect_now (connect_now msg))
))
;//! \htmlinclude AddWiFi-response.msg.html

(cl:defclass <AddWiFi-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass AddWiFi-response (<AddWiFi-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddWiFi-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddWiFi-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<AddWiFi-response> is deprecated: use woosh_msgs-srv:AddWiFi-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <AddWiFi-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:status-val is deprecated.  Use woosh_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <AddWiFi-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:message-val is deprecated.  Use woosh_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddWiFi-response>) ostream)
  "Serializes a message object of type '<AddWiFi-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddWiFi-response>) istream)
  "Deserializes a message object of type '<AddWiFi-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddWiFi-response>)))
  "Returns string type for a service object of type '<AddWiFi-response>"
  "woosh_msgs/AddWiFiResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddWiFi-response)))
  "Returns string type for a service object of type 'AddWiFi-response"
  "woosh_msgs/AddWiFiResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddWiFi-response>)))
  "Returns md5sum for a message object of type '<AddWiFi-response>"
  "01216da3b47dc86d0d6d1f4a6238121c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddWiFi-response)))
  "Returns md5sum for a message object of type 'AddWiFi-response"
  "01216da3b47dc86d0d6d1f4a6238121c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddWiFi-response>)))
  "Returns full string definition for message of type '<AddWiFi-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddWiFi-response)))
  "Returns full string definition for message of type 'AddWiFi-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddWiFi-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddWiFi-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddWiFi-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddWiFi)))
  'AddWiFi-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddWiFi)))
  'AddWiFi-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddWiFi)))
  "Returns string type for a service object of type '<AddWiFi>"
  "woosh_msgs/AddWiFi")