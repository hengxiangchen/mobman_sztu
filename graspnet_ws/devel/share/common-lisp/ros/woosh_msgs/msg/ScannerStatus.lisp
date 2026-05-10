; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude ScannerStatus.msg.html

(cl:defclass <ScannerStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (seq
    :reader seq
    :initarg :seq
    :type cl:fixnum
    :initform 0)
   (safety_case
    :reader safety_case
    :initarg :safety_case
    :type cl:fixnum
    :initform 0)
   (cut_off_path
    :reader cut_off_path
    :initarg :cut_off_path
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ScannerStatus (<ScannerStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScannerStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScannerStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<ScannerStatus> is deprecated: use woosh_msgs-msg:ScannerStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ScannerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:header-val is deprecated.  Use woosh_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'seq-val :lambda-list '(m))
(cl:defmethod seq-val ((m <ScannerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:seq-val is deprecated.  Use woosh_msgs-msg:seq instead.")
  (seq m))

(cl:ensure-generic-function 'safety_case-val :lambda-list '(m))
(cl:defmethod safety_case-val ((m <ScannerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:safety_case-val is deprecated.  Use woosh_msgs-msg:safety_case instead.")
  (safety_case m))

(cl:ensure-generic-function 'cut_off_path-val :lambda-list '(m))
(cl:defmethod cut_off_path-val ((m <ScannerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:cut_off_path-val is deprecated.  Use woosh_msgs-msg:cut_off_path instead.")
  (cut_off_path m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ScannerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:status-val is deprecated.  Use woosh_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScannerStatus>) ostream)
  "Serializes a message object of type '<ScannerStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'safety_case)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cut_off_path)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScannerStatus>) istream)
  "Deserializes a message object of type '<ScannerStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'safety_case)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cut_off_path)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScannerStatus>)))
  "Returns string type for a message object of type '<ScannerStatus>"
  "woosh_msgs/ScannerStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScannerStatus)))
  "Returns string type for a message object of type 'ScannerStatus"
  "woosh_msgs/ScannerStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScannerStatus>)))
  "Returns md5sum for a message object of type '<ScannerStatus>"
  "24491610ed538a5aa9d765595030c5a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScannerStatus)))
  "Returns md5sum for a message object of type 'ScannerStatus"
  "24491610ed538a5aa9d765595030c5a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScannerStatus>)))
  "Returns full string definition for message of type '<ScannerStatus>"
  (cl:format cl:nil "Header header~%uint8 seq~%uint8 safety_case~%uint8 cut_off_path~%uint8 status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScannerStatus)))
  "Returns full string definition for message of type 'ScannerStatus"
  (cl:format cl:nil "Header header~%uint8 seq~%uint8 safety_case~%uint8 cut_off_path~%uint8 status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScannerStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScannerStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ScannerStatus
    (cl:cons ':header (header msg))
    (cl:cons ':seq (seq msg))
    (cl:cons ':safety_case (safety_case msg))
    (cl:cons ':cut_off_path (cut_off_path msg))
    (cl:cons ':status (status msg))
))
