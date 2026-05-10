; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude IOModuleControl.msg.html

(cl:defclass <IOModuleControl> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (module
    :reader module
    :initarg :module
    :type cl:fixnum
    :initform 0)
   (submodule
    :reader submodule
    :initarg :submodule
    :type cl:fixnum
    :initform 0)
   (mask
    :reader mask
    :initarg :mask
    :type cl:integer
    :initform 0))
)

(cl:defclass IOModuleControl (<IOModuleControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IOModuleControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IOModuleControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<IOModuleControl> is deprecated: use woosh_msgs-msg:IOModuleControl instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <IOModuleControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:mode-val is deprecated.  Use woosh_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'module-val :lambda-list '(m))
(cl:defmethod module-val ((m <IOModuleControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:module-val is deprecated.  Use woosh_msgs-msg:module instead.")
  (module m))

(cl:ensure-generic-function 'submodule-val :lambda-list '(m))
(cl:defmethod submodule-val ((m <IOModuleControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:submodule-val is deprecated.  Use woosh_msgs-msg:submodule instead.")
  (submodule m))

(cl:ensure-generic-function 'mask-val :lambda-list '(m))
(cl:defmethod mask-val ((m <IOModuleControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:mask-val is deprecated.  Use woosh_msgs-msg:mask instead.")
  (mask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IOModuleControl>) ostream)
  "Serializes a message object of type '<IOModuleControl>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'module)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'submodule)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mask)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IOModuleControl>) istream)
  "Deserializes a message object of type '<IOModuleControl>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'module)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'submodule)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mask)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IOModuleControl>)))
  "Returns string type for a message object of type '<IOModuleControl>"
  "woosh_msgs/IOModuleControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IOModuleControl)))
  "Returns string type for a message object of type 'IOModuleControl"
  "woosh_msgs/IOModuleControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IOModuleControl>)))
  "Returns md5sum for a message object of type '<IOModuleControl>"
  "aca0fa9fb5a15d009a37810bb307efcb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IOModuleControl)))
  "Returns md5sum for a message object of type 'IOModuleControl"
  "aca0fa9fb5a15d009a37810bb307efcb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IOModuleControl>)))
  "Returns full string definition for message of type '<IOModuleControl>"
  (cl:format cl:nil "uint8 mode~%uint8 module~%uint8 submodule~%uint32 mask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IOModuleControl)))
  "Returns full string definition for message of type 'IOModuleControl"
  (cl:format cl:nil "uint8 mode~%uint8 module~%uint8 submodule~%uint32 mask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IOModuleControl>))
  (cl:+ 0
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IOModuleControl>))
  "Converts a ROS message object to a list"
  (cl:list 'IOModuleControl
    (cl:cons ':mode (mode msg))
    (cl:cons ':module (module msg))
    (cl:cons ':submodule (submodule msg))
    (cl:cons ':mask (mask msg))
))
