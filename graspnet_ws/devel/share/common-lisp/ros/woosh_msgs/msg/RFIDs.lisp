; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude RFIDs.msg.html

(cl:defclass <RFIDs> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (RFIDs
    :reader RFIDs
    :initarg :RFIDs
    :type (cl:vector woosh_msgs-msg:RFID)
   :initform (cl:make-array 0 :element-type 'woosh_msgs-msg:RFID :initial-element (cl:make-instance 'woosh_msgs-msg:RFID))))
)

(cl:defclass RFIDs (<RFIDs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RFIDs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RFIDs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<RFIDs> is deprecated: use woosh_msgs-msg:RFIDs instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RFIDs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:header-val is deprecated.  Use woosh_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'RFIDs-val :lambda-list '(m))
(cl:defmethod RFIDs-val ((m <RFIDs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:RFIDs-val is deprecated.  Use woosh_msgs-msg:RFIDs instead.")
  (RFIDs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RFIDs>) ostream)
  "Serializes a message object of type '<RFIDs>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'RFIDs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'RFIDs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RFIDs>) istream)
  "Deserializes a message object of type '<RFIDs>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'RFIDs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'RFIDs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'woosh_msgs-msg:RFID))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RFIDs>)))
  "Returns string type for a message object of type '<RFIDs>"
  "woosh_msgs/RFIDs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RFIDs)))
  "Returns string type for a message object of type 'RFIDs"
  "woosh_msgs/RFIDs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RFIDs>)))
  "Returns md5sum for a message object of type '<RFIDs>"
  "c8455bbcbfc144fa46bb2c3d0fed4433")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RFIDs)))
  "Returns md5sum for a message object of type 'RFIDs"
  "c8455bbcbfc144fa46bb2c3d0fed4433")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RFIDs>)))
  "Returns full string definition for message of type '<RFIDs>"
  (cl:format cl:nil "Header header~%RFID[] RFIDs~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: woosh_msgs/RFID~%Header header~%uint8 submodule~%uint16 rfidType~%uint16 rfid~%uint8 flag~%uint8 signal~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RFIDs)))
  "Returns full string definition for message of type 'RFIDs"
  (cl:format cl:nil "Header header~%RFID[] RFIDs~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: woosh_msgs/RFID~%Header header~%uint8 submodule~%uint16 rfidType~%uint16 rfid~%uint8 flag~%uint8 signal~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RFIDs>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'RFIDs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RFIDs>))
  "Converts a ROS message object to a list"
  (cl:list 'RFIDs
    (cl:cons ':header (header msg))
    (cl:cons ':RFIDs (RFIDs msg))
))
