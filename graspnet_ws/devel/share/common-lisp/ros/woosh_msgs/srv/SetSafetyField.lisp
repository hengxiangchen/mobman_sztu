; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-srv)


;//! \htmlinclude SetSafetyField-request.msg.html

(cl:defclass <SetSafetyField-request> (roslisp-msg-protocol:ros-message)
  ((safetyField
    :reader safetyField
    :initarg :safetyField
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetSafetyField-request (<SetSafetyField-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetSafetyField-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetSafetyField-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<SetSafetyField-request> is deprecated: use woosh_msgs-srv:SetSafetyField-request instead.")))

(cl:ensure-generic-function 'safetyField-val :lambda-list '(m))
(cl:defmethod safetyField-val ((m <SetSafetyField-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:safetyField-val is deprecated.  Use woosh_msgs-srv:safetyField instead.")
  (safetyField m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetSafetyField-request>) ostream)
  "Serializes a message object of type '<SetSafetyField-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'safetyField)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetSafetyField-request>) istream)
  "Deserializes a message object of type '<SetSafetyField-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'safetyField)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetSafetyField-request>)))
  "Returns string type for a service object of type '<SetSafetyField-request>"
  "woosh_msgs/SetSafetyFieldRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSafetyField-request)))
  "Returns string type for a service object of type 'SetSafetyField-request"
  "woosh_msgs/SetSafetyFieldRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetSafetyField-request>)))
  "Returns md5sum for a message object of type '<SetSafetyField-request>"
  "fb961668e1417ae513efc8848f6b7d57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetSafetyField-request)))
  "Returns md5sum for a message object of type 'SetSafetyField-request"
  "fb961668e1417ae513efc8848f6b7d57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetSafetyField-request>)))
  "Returns full string definition for message of type '<SetSafetyField-request>"
  (cl:format cl:nil "uint8 safetyField~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetSafetyField-request)))
  "Returns full string definition for message of type 'SetSafetyField-request"
  (cl:format cl:nil "uint8 safetyField~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetSafetyField-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetSafetyField-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetSafetyField-request
    (cl:cons ':safetyField (safetyField msg))
))
;//! \htmlinclude SetSafetyField-response.msg.html

(cl:defclass <SetSafetyField-response> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil)
   (safetyField
    :reader safetyField
    :initarg :safetyField
    :type cl:fixnum
    :initform 0)
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

(cl:defclass SetSafetyField-response (<SetSafetyField-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetSafetyField-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetSafetyField-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<SetSafetyField-response> is deprecated: use woosh_msgs-srv:SetSafetyField-response instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <SetSafetyField-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:enable-val is deprecated.  Use woosh_msgs-srv:enable instead.")
  (enable m))

(cl:ensure-generic-function 'safetyField-val :lambda-list '(m))
(cl:defmethod safetyField-val ((m <SetSafetyField-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:safetyField-val is deprecated.  Use woosh_msgs-srv:safetyField instead.")
  (safetyField m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetSafetyField-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:success-val is deprecated.  Use woosh_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetSafetyField-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:message-val is deprecated.  Use woosh_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetSafetyField-response>) ostream)
  "Serializes a message object of type '<SetSafetyField-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'safetyField)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetSafetyField-response>) istream)
  "Deserializes a message object of type '<SetSafetyField-response>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'safetyField)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetSafetyField-response>)))
  "Returns string type for a service object of type '<SetSafetyField-response>"
  "woosh_msgs/SetSafetyFieldResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSafetyField-response)))
  "Returns string type for a service object of type 'SetSafetyField-response"
  "woosh_msgs/SetSafetyFieldResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetSafetyField-response>)))
  "Returns md5sum for a message object of type '<SetSafetyField-response>"
  "fb961668e1417ae513efc8848f6b7d57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetSafetyField-response)))
  "Returns md5sum for a message object of type 'SetSafetyField-response"
  "fb961668e1417ae513efc8848f6b7d57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetSafetyField-response>)))
  "Returns full string definition for message of type '<SetSafetyField-response>"
  (cl:format cl:nil "bool enable~%uint8 safetyField~%bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetSafetyField-response)))
  "Returns full string definition for message of type 'SetSafetyField-response"
  (cl:format cl:nil "bool enable~%uint8 safetyField~%bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetSafetyField-response>))
  (cl:+ 0
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetSafetyField-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetSafetyField-response
    (cl:cons ':enable (enable msg))
    (cl:cons ':safetyField (safetyField msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetSafetyField)))
  'SetSafetyField-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetSafetyField)))
  'SetSafetyField-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSafetyField)))
  "Returns string type for a service object of type '<SetSafetyField>"
  "woosh_msgs/SetSafetyField")