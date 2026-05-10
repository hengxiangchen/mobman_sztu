; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude Magnetisms.msg.html

(cl:defclass <Magnetisms> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (magnetisms
    :reader magnetisms
    :initarg :magnetisms
    :type (cl:vector woosh_msgs-msg:Magnetism)
   :initform (cl:make-array 0 :element-type 'woosh_msgs-msg:Magnetism :initial-element (cl:make-instance 'woosh_msgs-msg:Magnetism))))
)

(cl:defclass Magnetisms (<Magnetisms>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Magnetisms>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Magnetisms)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<Magnetisms> is deprecated: use woosh_msgs-msg:Magnetisms instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Magnetisms>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:header-val is deprecated.  Use woosh_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'magnetisms-val :lambda-list '(m))
(cl:defmethod magnetisms-val ((m <Magnetisms>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:magnetisms-val is deprecated.  Use woosh_msgs-msg:magnetisms instead.")
  (magnetisms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Magnetisms>) ostream)
  "Serializes a message object of type '<Magnetisms>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'magnetisms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'magnetisms))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Magnetisms>) istream)
  "Deserializes a message object of type '<Magnetisms>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'magnetisms) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'magnetisms)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'woosh_msgs-msg:Magnetism))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Magnetisms>)))
  "Returns string type for a message object of type '<Magnetisms>"
  "woosh_msgs/Magnetisms")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Magnetisms)))
  "Returns string type for a message object of type 'Magnetisms"
  "woosh_msgs/Magnetisms")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Magnetisms>)))
  "Returns md5sum for a message object of type '<Magnetisms>"
  "92532dc1a0b2153d3ec5e22e240f9557")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Magnetisms)))
  "Returns md5sum for a message object of type 'Magnetisms"
  "92532dc1a0b2153d3ec5e22e240f9557")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Magnetisms>)))
  "Returns full string definition for message of type '<Magnetisms>"
  (cl:format cl:nil "Header header~%Magnetism[] magnetisms~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: woosh_msgs/Magnetism~%Header header~%uint8 submodule~%uint8 pointNum~%uint32 status~%float32 bias~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Magnetisms)))
  "Returns full string definition for message of type 'Magnetisms"
  (cl:format cl:nil "Header header~%Magnetism[] magnetisms~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: woosh_msgs/Magnetism~%Header header~%uint8 submodule~%uint8 pointNum~%uint32 status~%float32 bias~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Magnetisms>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'magnetisms) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Magnetisms>))
  "Converts a ROS message object to a list"
  (cl:list 'Magnetisms
    (cl:cons ':header (header msg))
    (cl:cons ':magnetisms (magnetisms msg))
))
