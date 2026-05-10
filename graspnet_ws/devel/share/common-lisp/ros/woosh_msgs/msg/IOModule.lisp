; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude IOModule.msg.html

(cl:defclass <IOModule> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
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
   (num
    :reader num
    :initarg :num
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass IOModule (<IOModule>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IOModule>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IOModule)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<IOModule> is deprecated: use woosh_msgs-msg:IOModule instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <IOModule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:header-val is deprecated.  Use woosh_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'module-val :lambda-list '(m))
(cl:defmethod module-val ((m <IOModule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:module-val is deprecated.  Use woosh_msgs-msg:module instead.")
  (module m))

(cl:ensure-generic-function 'submodule-val :lambda-list '(m))
(cl:defmethod submodule-val ((m <IOModule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:submodule-val is deprecated.  Use woosh_msgs-msg:submodule instead.")
  (submodule m))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <IOModule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:num-val is deprecated.  Use woosh_msgs-msg:num instead.")
  (num m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <IOModule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:status-val is deprecated.  Use woosh_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IOModule>) ostream)
  "Serializes a message object of type '<IOModule>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'module)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'submodule)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IOModule>) istream)
  "Deserializes a message object of type '<IOModule>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'module)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'submodule)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IOModule>)))
  "Returns string type for a message object of type '<IOModule>"
  "woosh_msgs/IOModule")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IOModule)))
  "Returns string type for a message object of type 'IOModule"
  "woosh_msgs/IOModule")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IOModule>)))
  "Returns md5sum for a message object of type '<IOModule>"
  "57d5d3fa08644f735300b724008a2b8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IOModule)))
  "Returns md5sum for a message object of type 'IOModule"
  "57d5d3fa08644f735300b724008a2b8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IOModule>)))
  "Returns full string definition for message of type '<IOModule>"
  (cl:format cl:nil "Header header~%uint8 module~%uint8 submodule~%uint8 num~%uint32 status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IOModule)))
  "Returns full string definition for message of type 'IOModule"
  (cl:format cl:nil "Header header~%uint8 module~%uint8 submodule~%uint8 num~%uint32 status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IOModule>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IOModule>))
  "Converts a ROS message object to a list"
  (cl:list 'IOModule
    (cl:cons ':header (header msg))
    (cl:cons ':module (module msg))
    (cl:cons ':submodule (submodule msg))
    (cl:cons ':num (num msg))
    (cl:cons ':status (status msg))
))
