; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-srv)


;//! \htmlinclude GetAvailableWiFiList-request.msg.html

(cl:defclass <GetAvailableWiFiList-request> (roslisp-msg-protocol:ros-message)
  ((timeout
    :reader timeout
    :initarg :timeout
    :type cl:integer
    :initform 0))
)

(cl:defclass GetAvailableWiFiList-request (<GetAvailableWiFiList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAvailableWiFiList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAvailableWiFiList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<GetAvailableWiFiList-request> is deprecated: use woosh_msgs-srv:GetAvailableWiFiList-request instead.")))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <GetAvailableWiFiList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:timeout-val is deprecated.  Use woosh_msgs-srv:timeout instead.")
  (timeout m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAvailableWiFiList-request>) ostream)
  "Serializes a message object of type '<GetAvailableWiFiList-request>"
  (cl:let* ((signed (cl:slot-value msg 'timeout)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAvailableWiFiList-request>) istream)
  "Deserializes a message object of type '<GetAvailableWiFiList-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeout) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAvailableWiFiList-request>)))
  "Returns string type for a service object of type '<GetAvailableWiFiList-request>"
  "woosh_msgs/GetAvailableWiFiListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAvailableWiFiList-request)))
  "Returns string type for a service object of type 'GetAvailableWiFiList-request"
  "woosh_msgs/GetAvailableWiFiListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAvailableWiFiList-request>)))
  "Returns md5sum for a message object of type '<GetAvailableWiFiList-request>"
  "f05424b77a66a214dd3a93c8ea8e16bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAvailableWiFiList-request)))
  "Returns md5sum for a message object of type 'GetAvailableWiFiList-request"
  "f05424b77a66a214dd3a93c8ea8e16bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAvailableWiFiList-request>)))
  "Returns full string definition for message of type '<GetAvailableWiFiList-request>"
  (cl:format cl:nil "int32 timeout~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAvailableWiFiList-request)))
  "Returns full string definition for message of type 'GetAvailableWiFiList-request"
  (cl:format cl:nil "int32 timeout~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAvailableWiFiList-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAvailableWiFiList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAvailableWiFiList-request
    (cl:cons ':timeout (timeout msg))
))
;//! \htmlinclude GetAvailableWiFiList-response.msg.html

(cl:defclass <GetAvailableWiFiList-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (wifi_list
    :reader wifi_list
    :initarg :wifi_list
    :type cl:string
    :initform ""))
)

(cl:defclass GetAvailableWiFiList-response (<GetAvailableWiFiList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAvailableWiFiList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAvailableWiFiList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<GetAvailableWiFiList-response> is deprecated: use woosh_msgs-srv:GetAvailableWiFiList-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetAvailableWiFiList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:status-val is deprecated.  Use woosh_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetAvailableWiFiList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:message-val is deprecated.  Use woosh_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'wifi_list-val :lambda-list '(m))
(cl:defmethod wifi_list-val ((m <GetAvailableWiFiList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:wifi_list-val is deprecated.  Use woosh_msgs-srv:wifi_list instead.")
  (wifi_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAvailableWiFiList-response>) ostream)
  "Serializes a message object of type '<GetAvailableWiFiList-response>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'wifi_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'wifi_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAvailableWiFiList-response>) istream)
  "Deserializes a message object of type '<GetAvailableWiFiList-response>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wifi_list) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'wifi_list) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAvailableWiFiList-response>)))
  "Returns string type for a service object of type '<GetAvailableWiFiList-response>"
  "woosh_msgs/GetAvailableWiFiListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAvailableWiFiList-response)))
  "Returns string type for a service object of type 'GetAvailableWiFiList-response"
  "woosh_msgs/GetAvailableWiFiListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAvailableWiFiList-response>)))
  "Returns md5sum for a message object of type '<GetAvailableWiFiList-response>"
  "f05424b77a66a214dd3a93c8ea8e16bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAvailableWiFiList-response)))
  "Returns md5sum for a message object of type 'GetAvailableWiFiList-response"
  "f05424b77a66a214dd3a93c8ea8e16bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAvailableWiFiList-response>)))
  "Returns full string definition for message of type '<GetAvailableWiFiList-response>"
  (cl:format cl:nil "int32 status~%string message~%string wifi_list~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAvailableWiFiList-response)))
  "Returns full string definition for message of type 'GetAvailableWiFiList-response"
  (cl:format cl:nil "int32 status~%string message~%string wifi_list~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAvailableWiFiList-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:length (cl:slot-value msg 'wifi_list))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAvailableWiFiList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAvailableWiFiList-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
    (cl:cons ':wifi_list (wifi_list msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetAvailableWiFiList)))
  'GetAvailableWiFiList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetAvailableWiFiList)))
  'GetAvailableWiFiList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAvailableWiFiList)))
  "Returns string type for a service object of type '<GetAvailableWiFiList>"
  "woosh_msgs/GetAvailableWiFiList")