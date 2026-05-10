; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-srv)


;//! \htmlinclude SetMapServer-request.msg.html

(cl:defclass <SetMapServer-request> (roslisp-msg-protocol:ros-message)
  ((startMapServer
    :reader startMapServer
    :initarg :startMapServer
    :type cl:boolean
    :initform cl:nil)
   (pathName
    :reader pathName
    :initarg :pathName
    :type cl:string
    :initform ""))
)

(cl:defclass SetMapServer-request (<SetMapServer-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMapServer-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMapServer-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<SetMapServer-request> is deprecated: use woosh_msgs-srv:SetMapServer-request instead.")))

(cl:ensure-generic-function 'startMapServer-val :lambda-list '(m))
(cl:defmethod startMapServer-val ((m <SetMapServer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:startMapServer-val is deprecated.  Use woosh_msgs-srv:startMapServer instead.")
  (startMapServer m))

(cl:ensure-generic-function 'pathName-val :lambda-list '(m))
(cl:defmethod pathName-val ((m <SetMapServer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:pathName-val is deprecated.  Use woosh_msgs-srv:pathName instead.")
  (pathName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMapServer-request>) ostream)
  "Serializes a message object of type '<SetMapServer-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'startMapServer) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pathName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pathName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMapServer-request>) istream)
  "Deserializes a message object of type '<SetMapServer-request>"
    (cl:setf (cl:slot-value msg 'startMapServer) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pathName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pathName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMapServer-request>)))
  "Returns string type for a service object of type '<SetMapServer-request>"
  "woosh_msgs/SetMapServerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMapServer-request)))
  "Returns string type for a service object of type 'SetMapServer-request"
  "woosh_msgs/SetMapServerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMapServer-request>)))
  "Returns md5sum for a message object of type '<SetMapServer-request>"
  "00ac068e4aec756233516c167301064c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMapServer-request)))
  "Returns md5sum for a message object of type 'SetMapServer-request"
  "00ac068e4aec756233516c167301064c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMapServer-request>)))
  "Returns full string definition for message of type '<SetMapServer-request>"
  (cl:format cl:nil "# map_server~%~%# true: call startServe() to start map server pub static map~%# false: call stopServe() to stop publisher of map server~%bool startMapServer~%~%# Only for startMapServer == true. Leave empty for startMapServer == false~%# use pathName to find .yaml~%# pathName format can be [/abc/ddd/]filename[.yaml]~%# if pathName == \"\", use last loaded pathName in map_server or failed~%string pathName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMapServer-request)))
  "Returns full string definition for message of type 'SetMapServer-request"
  (cl:format cl:nil "# map_server~%~%# true: call startServe() to start map server pub static map~%# false: call stopServe() to stop publisher of map server~%bool startMapServer~%~%# Only for startMapServer == true. Leave empty for startMapServer == false~%# use pathName to find .yaml~%# pathName format can be [/abc/ddd/]filename[.yaml]~%# if pathName == \"\", use last loaded pathName in map_server or failed~%string pathName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMapServer-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'pathName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMapServer-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMapServer-request
    (cl:cons ':startMapServer (startMapServer msg))
    (cl:cons ':pathName (pathName msg))
))
;//! \htmlinclude SetMapServer-response.msg.html

(cl:defclass <SetMapServer-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetMapServer-response (<SetMapServer-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMapServer-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMapServer-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<SetMapServer-response> is deprecated: use woosh_msgs-srv:SetMapServer-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetMapServer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:success-val is deprecated.  Use woosh_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetMapServer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:message-val is deprecated.  Use woosh_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMapServer-response>) ostream)
  "Serializes a message object of type '<SetMapServer-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMapServer-response>) istream)
  "Deserializes a message object of type '<SetMapServer-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMapServer-response>)))
  "Returns string type for a service object of type '<SetMapServer-response>"
  "woosh_msgs/SetMapServerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMapServer-response)))
  "Returns string type for a service object of type 'SetMapServer-response"
  "woosh_msgs/SetMapServerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMapServer-response>)))
  "Returns md5sum for a message object of type '<SetMapServer-response>"
  "00ac068e4aec756233516c167301064c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMapServer-response)))
  "Returns md5sum for a message object of type 'SetMapServer-response"
  "00ac068e4aec756233516c167301064c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMapServer-response>)))
  "Returns full string definition for message of type '<SetMapServer-response>"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMapServer-response)))
  "Returns full string definition for message of type 'SetMapServer-response"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMapServer-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMapServer-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMapServer-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetMapServer)))
  'SetMapServer-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetMapServer)))
  'SetMapServer-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMapServer)))
  "Returns string type for a service object of type '<SetMapServer>"
  "woosh_msgs/SetMapServer")