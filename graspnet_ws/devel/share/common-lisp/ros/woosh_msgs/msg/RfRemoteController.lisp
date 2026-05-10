; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude RfRemoteController.msg.html

(cl:defclass <RfRemoteController> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (address
    :reader address
    :initarg :address
    :type cl:integer
    :initform 0)
   (keys
    :reader keys
    :initarg :keys
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RfRemoteController (<RfRemoteController>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RfRemoteController>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RfRemoteController)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<RfRemoteController> is deprecated: use woosh_msgs-msg:RfRemoteController instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RfRemoteController>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:header-val is deprecated.  Use woosh_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'address-val :lambda-list '(m))
(cl:defmethod address-val ((m <RfRemoteController>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:address-val is deprecated.  Use woosh_msgs-msg:address instead.")
  (address m))

(cl:ensure-generic-function 'keys-val :lambda-list '(m))
(cl:defmethod keys-val ((m <RfRemoteController>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:keys-val is deprecated.  Use woosh_msgs-msg:keys instead.")
  (keys m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RfRemoteController>) ostream)
  "Serializes a message object of type '<RfRemoteController>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'address)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'address)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'address)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'address)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'keys)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RfRemoteController>) istream)
  "Deserializes a message object of type '<RfRemoteController>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'address)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'address)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'address)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'address)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'keys)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RfRemoteController>)))
  "Returns string type for a message object of type '<RfRemoteController>"
  "woosh_msgs/RfRemoteController")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RfRemoteController)))
  "Returns string type for a message object of type 'RfRemoteController"
  "woosh_msgs/RfRemoteController")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RfRemoteController>)))
  "Returns md5sum for a message object of type '<RfRemoteController>"
  "d0bb9831bfdb4ac298154bf7de9a750f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RfRemoteController)))
  "Returns md5sum for a message object of type 'RfRemoteController"
  "d0bb9831bfdb4ac298154bf7de9a750f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RfRemoteController>)))
  "Returns full string definition for message of type '<RfRemoteController>"
  (cl:format cl:nil "Header header~%uint32 address~%uint8 keys~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RfRemoteController)))
  "Returns full string definition for message of type 'RfRemoteController"
  (cl:format cl:nil "Header header~%uint32 address~%uint8 keys~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RfRemoteController>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RfRemoteController>))
  "Converts a ROS message object to a list"
  (cl:list 'RfRemoteController
    (cl:cons ':header (header msg))
    (cl:cons ':address (address msg))
    (cl:cons ':keys (keys msg))
))
