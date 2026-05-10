; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude IO.msg.html

(cl:defclass <IO> (roslisp-msg-protocol:ros-message)
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
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass IO (<IO>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IO>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IO)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<IO> is deprecated: use woosh_msgs-msg:IO instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <IO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:header-val is deprecated.  Use woosh_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'module-val :lambda-list '(m))
(cl:defmethod module-val ((m <IO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:module-val is deprecated.  Use woosh_msgs-msg:module instead.")
  (module m))

(cl:ensure-generic-function 'submodule-val :lambda-list '(m))
(cl:defmethod submodule-val ((m <IO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:submodule-val is deprecated.  Use woosh_msgs-msg:submodule instead.")
  (submodule m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <IO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:id-val is deprecated.  Use woosh_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <IO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:status-val is deprecated.  Use woosh_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IO>) ostream)
  "Serializes a message object of type '<IO>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'module)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'submodule)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IO>) istream)
  "Deserializes a message object of type '<IO>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'module)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'submodule)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IO>)))
  "Returns string type for a message object of type '<IO>"
  "woosh_msgs/IO")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IO)))
  "Returns string type for a message object of type 'IO"
  "woosh_msgs/IO")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IO>)))
  "Returns md5sum for a message object of type '<IO>"
  "fe404ac7c7eb28cb42b5db91b2ae3963")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IO)))
  "Returns md5sum for a message object of type 'IO"
  "fe404ac7c7eb28cb42b5db91b2ae3963")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IO>)))
  "Returns full string definition for message of type '<IO>"
  (cl:format cl:nil "Header header~%uint8 module~%uint8 submodule~%uint8 id~%uint8 status~%~%#channel and IO~%#0x01 movebase key~%#0x02 motor~%#0x03 alarm  0.Beep 1.red 2.yellow 3.green 4.laser~%#0x81 photoelec~%~%#status~%#0 default~%#1 trigger~%#2 stop~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IO)))
  "Returns full string definition for message of type 'IO"
  (cl:format cl:nil "Header header~%uint8 module~%uint8 submodule~%uint8 id~%uint8 status~%~%#channel and IO~%#0x01 movebase key~%#0x02 motor~%#0x03 alarm  0.Beep 1.red 2.yellow 3.green 4.laser~%#0x81 photoelec~%~%#status~%#0 default~%#1 trigger~%#2 stop~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IO>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IO>))
  "Converts a ROS message object to a list"
  (cl:list 'IO
    (cl:cons ':header (header msg))
    (cl:cons ':module (module msg))
    (cl:cons ':submodule (submodule msg))
    (cl:cons ':id (id msg))
    (cl:cons ':status (status msg))
))
