; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude Ble_status.msg.html

(cl:defclass <Ble_status> (roslisp-msg-protocol:ros-message)
  ((isConnected
    :reader isConnected
    :initarg :isConnected
    :type cl:boolean
    :initform cl:nil)
   (isPaired
    :reader isPaired
    :initarg :isPaired
    :type cl:boolean
    :initform cl:nil)
   (onPairing
    :reader onPairing
    :initarg :onPairing
    :type cl:boolean
    :initform cl:nil)
   (target_mac
    :reader target_mac
    :initarg :target_mac
    :type cl:string
    :initform "")
   (target_magic
    :reader target_magic
    :initarg :target_magic
    :type cl:string
    :initform ""))
)

(cl:defclass Ble_status (<Ble_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ble_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ble_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<Ble_status> is deprecated: use woosh_msgs-msg:Ble_status instead.")))

(cl:ensure-generic-function 'isConnected-val :lambda-list '(m))
(cl:defmethod isConnected-val ((m <Ble_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:isConnected-val is deprecated.  Use woosh_msgs-msg:isConnected instead.")
  (isConnected m))

(cl:ensure-generic-function 'isPaired-val :lambda-list '(m))
(cl:defmethod isPaired-val ((m <Ble_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:isPaired-val is deprecated.  Use woosh_msgs-msg:isPaired instead.")
  (isPaired m))

(cl:ensure-generic-function 'onPairing-val :lambda-list '(m))
(cl:defmethod onPairing-val ((m <Ble_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:onPairing-val is deprecated.  Use woosh_msgs-msg:onPairing instead.")
  (onPairing m))

(cl:ensure-generic-function 'target_mac-val :lambda-list '(m))
(cl:defmethod target_mac-val ((m <Ble_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:target_mac-val is deprecated.  Use woosh_msgs-msg:target_mac instead.")
  (target_mac m))

(cl:ensure-generic-function 'target_magic-val :lambda-list '(m))
(cl:defmethod target_magic-val ((m <Ble_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:target_magic-val is deprecated.  Use woosh_msgs-msg:target_magic instead.")
  (target_magic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ble_status>) ostream)
  "Serializes a message object of type '<Ble_status>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isConnected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isPaired) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'onPairing) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_mac))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_mac))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_magic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_magic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ble_status>) istream)
  "Deserializes a message object of type '<Ble_status>"
    (cl:setf (cl:slot-value msg 'isConnected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'isPaired) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'onPairing) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_mac) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_mac) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_magic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_magic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ble_status>)))
  "Returns string type for a message object of type '<Ble_status>"
  "woosh_msgs/Ble_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ble_status)))
  "Returns string type for a message object of type 'Ble_status"
  "woosh_msgs/Ble_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ble_status>)))
  "Returns md5sum for a message object of type '<Ble_status>"
  "a3f6334597a0d117e6034fd6a0cdabe7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ble_status)))
  "Returns md5sum for a message object of type 'Ble_status"
  "a3f6334597a0d117e6034fd6a0cdabe7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ble_status>)))
  "Returns full string definition for message of type '<Ble_status>"
  (cl:format cl:nil "bool isConnected~%bool isPaired~%bool onPairing~%string target_mac~%string target_magic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ble_status)))
  "Returns full string definition for message of type 'Ble_status"
  (cl:format cl:nil "bool isConnected~%bool isPaired~%bool onPairing~%string target_mac~%string target_magic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ble_status>))
  (cl:+ 0
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'target_mac))
     4 (cl:length (cl:slot-value msg 'target_magic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ble_status>))
  "Converts a ROS message object to a list"
  (cl:list 'Ble_status
    (cl:cons ':isConnected (isConnected msg))
    (cl:cons ':isPaired (isPaired msg))
    (cl:cons ':onPairing (onPairing msg))
    (cl:cons ':target_mac (target_mac msg))
    (cl:cons ':target_magic (target_magic msg))
))
