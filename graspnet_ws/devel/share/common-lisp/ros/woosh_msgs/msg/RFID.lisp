; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude RFID.msg.html

(cl:defclass <RFID> (roslisp-msg-protocol:ros-message)
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
   (rfidType
    :reader rfidType
    :initarg :rfidType
    :type cl:fixnum
    :initform 0)
   (rfid
    :reader rfid
    :initarg :rfid
    :type cl:fixnum
    :initform 0)
   (flag
    :reader flag
    :initarg :flag
    :type cl:fixnum
    :initform 0)
   (signal
    :reader signal
    :initarg :signal
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RFID (<RFID>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RFID>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RFID)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<RFID> is deprecated: use woosh_msgs-msg:RFID instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RFID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:header-val is deprecated.  Use woosh_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'submodule-val :lambda-list '(m))
(cl:defmethod submodule-val ((m <RFID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:submodule-val is deprecated.  Use woosh_msgs-msg:submodule instead.")
  (submodule m))

(cl:ensure-generic-function 'rfidType-val :lambda-list '(m))
(cl:defmethod rfidType-val ((m <RFID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:rfidType-val is deprecated.  Use woosh_msgs-msg:rfidType instead.")
  (rfidType m))

(cl:ensure-generic-function 'rfid-val :lambda-list '(m))
(cl:defmethod rfid-val ((m <RFID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:rfid-val is deprecated.  Use woosh_msgs-msg:rfid instead.")
  (rfid m))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <RFID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:flag-val is deprecated.  Use woosh_msgs-msg:flag instead.")
  (flag m))

(cl:ensure-generic-function 'signal-val :lambda-list '(m))
(cl:defmethod signal-val ((m <RFID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:signal-val is deprecated.  Use woosh_msgs-msg:signal instead.")
  (signal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RFID>) ostream)
  "Serializes a message object of type '<RFID>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'submodule)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rfidType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rfidType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rfid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rfid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'signal)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RFID>) istream)
  "Deserializes a message object of type '<RFID>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'submodule)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rfidType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rfidType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rfid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rfid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'signal)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RFID>)))
  "Returns string type for a message object of type '<RFID>"
  "woosh_msgs/RFID")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RFID)))
  "Returns string type for a message object of type 'RFID"
  "woosh_msgs/RFID")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RFID>)))
  "Returns md5sum for a message object of type '<RFID>"
  "db8c502dc6e5f530e881175b0ae270e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RFID)))
  "Returns md5sum for a message object of type 'RFID"
  "db8c502dc6e5f530e881175b0ae270e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RFID>)))
  "Returns full string definition for message of type '<RFID>"
  (cl:format cl:nil "Header header~%uint8 submodule~%uint16 rfidType~%uint16 rfid~%uint8 flag~%uint8 signal~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RFID)))
  "Returns full string definition for message of type 'RFID"
  (cl:format cl:nil "Header header~%uint8 submodule~%uint16 rfidType~%uint16 rfid~%uint8 flag~%uint8 signal~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RFID>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     2
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RFID>))
  "Converts a ROS message object to a list"
  (cl:list 'RFID
    (cl:cons ':header (header msg))
    (cl:cons ':submodule (submodule msg))
    (cl:cons ':rfidType (rfidType msg))
    (cl:cons ':rfid (rfid msg))
    (cl:cons ':flag (flag msg))
    (cl:cons ':signal (signal msg))
))
