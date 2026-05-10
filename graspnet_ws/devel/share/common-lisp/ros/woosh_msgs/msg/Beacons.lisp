; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude Beacons.msg.html

(cl:defclass <Beacons> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (beacons
    :reader beacons
    :initarg :beacons
    :type (cl:vector woosh_msgs-msg:Beacon)
   :initform (cl:make-array 0 :element-type 'woosh_msgs-msg:Beacon :initial-element (cl:make-instance 'woosh_msgs-msg:Beacon))))
)

(cl:defclass Beacons (<Beacons>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Beacons>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Beacons)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<Beacons> is deprecated: use woosh_msgs-msg:Beacons instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Beacons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:header-val is deprecated.  Use woosh_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'beacons-val :lambda-list '(m))
(cl:defmethod beacons-val ((m <Beacons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:beacons-val is deprecated.  Use woosh_msgs-msg:beacons instead.")
  (beacons m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Beacons>) ostream)
  "Serializes a message object of type '<Beacons>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'beacons))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'beacons))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Beacons>) istream)
  "Deserializes a message object of type '<Beacons>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'beacons) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'beacons)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'woosh_msgs-msg:Beacon))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Beacons>)))
  "Returns string type for a message object of type '<Beacons>"
  "woosh_msgs/Beacons")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Beacons)))
  "Returns string type for a message object of type 'Beacons"
  "woosh_msgs/Beacons")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Beacons>)))
  "Returns md5sum for a message object of type '<Beacons>"
  "6a6c605e47bffb9a548789d9b0089a38")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Beacons)))
  "Returns md5sum for a message object of type 'Beacons"
  "6a6c605e47bffb9a548789d9b0089a38")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Beacons>)))
  "Returns full string definition for message of type '<Beacons>"
  (cl:format cl:nil "Header header~%Beacon[] beacons~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: woosh_msgs/Beacon~%Header header #frame_id is the frame of receiver in the robot~%uint8 submodule~%uint32 beaconID~%string beaconIDStr~%geometry_msgs/Point32 position #beacon's position of the world~%float32 range~%float32 bearing~%float32 max_range~%uint8 batteryPercentage~%uint16  group~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Beacons)))
  "Returns full string definition for message of type 'Beacons"
  (cl:format cl:nil "Header header~%Beacon[] beacons~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: woosh_msgs/Beacon~%Header header #frame_id is the frame of receiver in the robot~%uint8 submodule~%uint32 beaconID~%string beaconIDStr~%geometry_msgs/Point32 position #beacon's position of the world~%float32 range~%float32 bearing~%float32 max_range~%uint8 batteryPercentage~%uint16  group~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Beacons>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'beacons) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Beacons>))
  "Converts a ROS message object to a list"
  (cl:list 'Beacons
    (cl:cons ':header (header msg))
    (cl:cons ':beacons (beacons msg))
))
