; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-srv)


;//! \htmlinclude EnableHotSpot-request.msg.html

(cl:defclass <EnableHotSpot-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EnableHotSpot-request (<EnableHotSpot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnableHotSpot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnableHotSpot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<EnableHotSpot-request> is deprecated: use woosh_msgs-srv:EnableHotSpot-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnableHotSpot-request>) ostream)
  "Serializes a message object of type '<EnableHotSpot-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnableHotSpot-request>) istream)
  "Deserializes a message object of type '<EnableHotSpot-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnableHotSpot-request>)))
  "Returns string type for a service object of type '<EnableHotSpot-request>"
  "woosh_msgs/EnableHotSpotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableHotSpot-request)))
  "Returns string type for a service object of type 'EnableHotSpot-request"
  "woosh_msgs/EnableHotSpotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnableHotSpot-request>)))
  "Returns md5sum for a message object of type '<EnableHotSpot-request>"
  "2c1d00fb8b4e78420f43d93d5292a429")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnableHotSpot-request)))
  "Returns md5sum for a message object of type 'EnableHotSpot-request"
  "2c1d00fb8b4e78420f43d93d5292a429")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnableHotSpot-request>)))
  "Returns full string definition for message of type '<EnableHotSpot-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnableHotSpot-request)))
  "Returns full string definition for message of type 'EnableHotSpot-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnableHotSpot-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnableHotSpot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EnableHotSpot-request
))
;//! \htmlinclude EnableHotSpot-response.msg.html

(cl:defclass <EnableHotSpot-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass EnableHotSpot-response (<EnableHotSpot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnableHotSpot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnableHotSpot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<EnableHotSpot-response> is deprecated: use woosh_msgs-srv:EnableHotSpot-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <EnableHotSpot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:status-val is deprecated.  Use woosh_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <EnableHotSpot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:message-val is deprecated.  Use woosh_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnableHotSpot-response>) ostream)
  "Serializes a message object of type '<EnableHotSpot-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnableHotSpot-response>) istream)
  "Deserializes a message object of type '<EnableHotSpot-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnableHotSpot-response>)))
  "Returns string type for a service object of type '<EnableHotSpot-response>"
  "woosh_msgs/EnableHotSpotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableHotSpot-response)))
  "Returns string type for a service object of type 'EnableHotSpot-response"
  "woosh_msgs/EnableHotSpotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnableHotSpot-response>)))
  "Returns md5sum for a message object of type '<EnableHotSpot-response>"
  "2c1d00fb8b4e78420f43d93d5292a429")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnableHotSpot-response)))
  "Returns md5sum for a message object of type 'EnableHotSpot-response"
  "2c1d00fb8b4e78420f43d93d5292a429")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnableHotSpot-response>)))
  "Returns full string definition for message of type '<EnableHotSpot-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnableHotSpot-response)))
  "Returns full string definition for message of type 'EnableHotSpot-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnableHotSpot-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnableHotSpot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EnableHotSpot-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EnableHotSpot)))
  'EnableHotSpot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EnableHotSpot)))
  'EnableHotSpot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableHotSpot)))
  "Returns string type for a service object of type '<EnableHotSpot>"
  "woosh_msgs/EnableHotSpot")