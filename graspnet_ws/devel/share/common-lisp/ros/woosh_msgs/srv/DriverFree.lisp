; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-srv)


;//! \htmlinclude DriverFree-request.msg.html

(cl:defclass <DriverFree-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DriverFree-request (<DriverFree-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriverFree-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriverFree-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<DriverFree-request> is deprecated: use woosh_msgs-srv:DriverFree-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <DriverFree-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:mode-val is deprecated.  Use woosh_msgs-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <DriverFree-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:status-val is deprecated.  Use woosh_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriverFree-request>) ostream)
  "Serializes a message object of type '<DriverFree-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriverFree-request>) istream)
  "Deserializes a message object of type '<DriverFree-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriverFree-request>)))
  "Returns string type for a service object of type '<DriverFree-request>"
  "woosh_msgs/DriverFreeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriverFree-request)))
  "Returns string type for a service object of type 'DriverFree-request"
  "woosh_msgs/DriverFreeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriverFree-request>)))
  "Returns md5sum for a message object of type '<DriverFree-request>"
  "a0ef03ec75775620626a8ace8290514a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriverFree-request)))
  "Returns md5sum for a message object of type 'DriverFree-request"
  "a0ef03ec75775620626a8ace8290514a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriverFree-request>)))
  "Returns full string definition for message of type '<DriverFree-request>"
  (cl:format cl:nil "uint8 mode #0.查询 1.设置~%bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriverFree-request)))
  "Returns full string definition for message of type 'DriverFree-request"
  (cl:format cl:nil "uint8 mode #0.查询 1.设置~%bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriverFree-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriverFree-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DriverFree-request
    (cl:cons ':mode (mode msg))
    (cl:cons ':status (status msg))
))
;//! \htmlinclude DriverFree-response.msg.html

(cl:defclass <DriverFree-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil)
   (success
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

(cl:defclass DriverFree-response (<DriverFree-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriverFree-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriverFree-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<DriverFree-response> is deprecated: use woosh_msgs-srv:DriverFree-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <DriverFree-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:status-val is deprecated.  Use woosh_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DriverFree-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:success-val is deprecated.  Use woosh_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DriverFree-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:message-val is deprecated.  Use woosh_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriverFree-response>) ostream)
  "Serializes a message object of type '<DriverFree-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriverFree-response>) istream)
  "Deserializes a message object of type '<DriverFree-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriverFree-response>)))
  "Returns string type for a service object of type '<DriverFree-response>"
  "woosh_msgs/DriverFreeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriverFree-response)))
  "Returns string type for a service object of type 'DriverFree-response"
  "woosh_msgs/DriverFreeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriverFree-response>)))
  "Returns md5sum for a message object of type '<DriverFree-response>"
  "a0ef03ec75775620626a8ace8290514a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriverFree-response)))
  "Returns md5sum for a message object of type 'DriverFree-response"
  "a0ef03ec75775620626a8ace8290514a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriverFree-response>)))
  "Returns full string definition for message of type '<DriverFree-response>"
  (cl:format cl:nil "bool status~%bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriverFree-response)))
  "Returns full string definition for message of type 'DriverFree-response"
  (cl:format cl:nil "bool status~%bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriverFree-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriverFree-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DriverFree-response
    (cl:cons ':status (status msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DriverFree)))
  'DriverFree-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DriverFree)))
  'DriverFree-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriverFree)))
  "Returns string type for a service object of type '<DriverFree>"
  "woosh_msgs/DriverFree")