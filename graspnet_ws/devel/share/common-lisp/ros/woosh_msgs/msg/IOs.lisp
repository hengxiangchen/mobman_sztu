; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude IOs.msg.html

(cl:defclass <IOs> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (IOs
    :reader IOs
    :initarg :IOs
    :type (cl:vector woosh_msgs-msg:IO)
   :initform (cl:make-array 0 :element-type 'woosh_msgs-msg:IO :initial-element (cl:make-instance 'woosh_msgs-msg:IO))))
)

(cl:defclass IOs (<IOs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IOs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IOs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<IOs> is deprecated: use woosh_msgs-msg:IOs instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <IOs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:header-val is deprecated.  Use woosh_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'IOs-val :lambda-list '(m))
(cl:defmethod IOs-val ((m <IOs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:IOs-val is deprecated.  Use woosh_msgs-msg:IOs instead.")
  (IOs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IOs>) ostream)
  "Serializes a message object of type '<IOs>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'IOs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'IOs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IOs>) istream)
  "Deserializes a message object of type '<IOs>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'IOs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'IOs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'woosh_msgs-msg:IO))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IOs>)))
  "Returns string type for a message object of type '<IOs>"
  "woosh_msgs/IOs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IOs)))
  "Returns string type for a message object of type 'IOs"
  "woosh_msgs/IOs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IOs>)))
  "Returns md5sum for a message object of type '<IOs>"
  "5f7e2f12a8fa7c08c84c3dca127e2b59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IOs)))
  "Returns md5sum for a message object of type 'IOs"
  "5f7e2f12a8fa7c08c84c3dca127e2b59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IOs>)))
  "Returns full string definition for message of type '<IOs>"
  (cl:format cl:nil "Header header~%IO[] IOs~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: woosh_msgs/IO~%Header header~%uint8 module~%uint8 submodule~%uint8 id~%uint8 status~%~%#channel and IO~%#0x01 movebase key~%#0x02 motor~%#0x03 alarm  0.Beep 1.red 2.yellow 3.green 4.laser~%#0x81 photoelec~%~%#status~%#0 default~%#1 trigger~%#2 stop~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IOs)))
  "Returns full string definition for message of type 'IOs"
  (cl:format cl:nil "Header header~%IO[] IOs~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: woosh_msgs/IO~%Header header~%uint8 module~%uint8 submodule~%uint8 id~%uint8 status~%~%#channel and IO~%#0x01 movebase key~%#0x02 motor~%#0x03 alarm  0.Beep 1.red 2.yellow 3.green 4.laser~%#0x81 photoelec~%~%#status~%#0 default~%#1 trigger~%#2 stop~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IOs>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'IOs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IOs>))
  "Converts a ROS message object to a list"
  (cl:list 'IOs
    (cl:cons ':header (header msg))
    (cl:cons ':IOs (IOs msg))
))
