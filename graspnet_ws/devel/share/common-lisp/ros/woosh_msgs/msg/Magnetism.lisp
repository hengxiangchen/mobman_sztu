; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude Magnetism.msg.html

(cl:defclass <Magnetism> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (submodule
    :reader submodule
    :initarg :submodule
    :type cl:fixnum
    :initform 0)
   (pointNum
    :reader pointNum
    :initarg :pointNum
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (bias
    :reader bias
    :initarg :bias
    :type cl:float
    :initform 0.0))
)

(cl:defclass Magnetism (<Magnetism>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Magnetism>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Magnetism)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<Magnetism> is deprecated: use woosh_msgs-msg:Magnetism instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Magnetism>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:header-val is deprecated.  Use woosh_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'submodule-val :lambda-list '(m))
(cl:defmethod submodule-val ((m <Magnetism>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:submodule-val is deprecated.  Use woosh_msgs-msg:submodule instead.")
  (submodule m))

(cl:ensure-generic-function 'pointNum-val :lambda-list '(m))
(cl:defmethod pointNum-val ((m <Magnetism>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:pointNum-val is deprecated.  Use woosh_msgs-msg:pointNum instead.")
  (pointNum m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Magnetism>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:status-val is deprecated.  Use woosh_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'bias-val :lambda-list '(m))
(cl:defmethod bias-val ((m <Magnetism>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:bias-val is deprecated.  Use woosh_msgs-msg:bias instead.")
  (bias m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Magnetism>) ostream)
  "Serializes a message object of type '<Magnetism>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'submodule)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pointNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bias))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Magnetism>) istream)
  "Deserializes a message object of type '<Magnetism>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'submodule)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pointNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bias) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Magnetism>)))
  "Returns string type for a message object of type '<Magnetism>"
  "woosh_msgs/Magnetism")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Magnetism)))
  "Returns string type for a message object of type 'Magnetism"
  "woosh_msgs/Magnetism")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Magnetism>)))
  "Returns md5sum for a message object of type '<Magnetism>"
  "5bdc7be6f13606547818ddcf8b28f617")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Magnetism)))
  "Returns md5sum for a message object of type 'Magnetism"
  "5bdc7be6f13606547818ddcf8b28f617")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Magnetism>)))
  "Returns full string definition for message of type '<Magnetism>"
  (cl:format cl:nil "Header header~%uint8 submodule~%uint8 pointNum~%uint32 status~%float32 bias~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Magnetism)))
  "Returns full string definition for message of type 'Magnetism"
  (cl:format cl:nil "Header header~%uint8 submodule~%uint8 pointNum~%uint32 status~%float32 bias~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Magnetism>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Magnetism>))
  "Converts a ROS message object to a list"
  (cl:list 'Magnetism
    (cl:cons ':header (header msg))
    (cl:cons ':submodule (submodule msg))
    (cl:cons ':pointNum (pointNum msg))
    (cl:cons ':status (status msg))
    (cl:cons ':bias (bias msg))
))
