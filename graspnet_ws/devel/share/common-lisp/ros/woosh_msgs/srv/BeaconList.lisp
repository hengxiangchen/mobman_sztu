; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-srv)


;//! \htmlinclude BeaconList-request.msg.html

(cl:defclass <BeaconList-request> (roslisp-msg-protocol:ros-message)
  ((isSave
    :reader isSave
    :initarg :isSave
    :type cl:boolean
    :initform cl:nil)
   (beaconList
    :reader beaconList
    :initarg :beaconList
    :type (cl:vector woosh_msgs-msg:Beacon)
   :initform (cl:make-array 0 :element-type 'woosh_msgs-msg:Beacon :initial-element (cl:make-instance 'woosh_msgs-msg:Beacon))))
)

(cl:defclass BeaconList-request (<BeaconList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BeaconList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BeaconList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<BeaconList-request> is deprecated: use woosh_msgs-srv:BeaconList-request instead.")))

(cl:ensure-generic-function 'isSave-val :lambda-list '(m))
(cl:defmethod isSave-val ((m <BeaconList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:isSave-val is deprecated.  Use woosh_msgs-srv:isSave instead.")
  (isSave m))

(cl:ensure-generic-function 'beaconList-val :lambda-list '(m))
(cl:defmethod beaconList-val ((m <BeaconList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:beaconList-val is deprecated.  Use woosh_msgs-srv:beaconList instead.")
  (beaconList m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BeaconList-request>) ostream)
  "Serializes a message object of type '<BeaconList-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isSave) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'beaconList))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'beaconList))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BeaconList-request>) istream)
  "Deserializes a message object of type '<BeaconList-request>"
    (cl:setf (cl:slot-value msg 'isSave) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'beaconList) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'beaconList)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'woosh_msgs-msg:Beacon))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BeaconList-request>)))
  "Returns string type for a service object of type '<BeaconList-request>"
  "woosh_msgs/BeaconListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BeaconList-request)))
  "Returns string type for a service object of type 'BeaconList-request"
  "woosh_msgs/BeaconListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BeaconList-request>)))
  "Returns md5sum for a message object of type '<BeaconList-request>"
  "f034c0ec4803c205aaeddc3bfdfaa7fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BeaconList-request)))
  "Returns md5sum for a message object of type 'BeaconList-request"
  "f034c0ec4803c205aaeddc3bfdfaa7fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BeaconList-request>)))
  "Returns full string definition for message of type '<BeaconList-request>"
  (cl:format cl:nil "# Set Get beacon list~%bool isSave #true: save beacon list false: get beacon list~%Beacon[] beaconList~%~%~%================================================================================~%MSG: woosh_msgs/Beacon~%Header header #frame_id is the frame of receiver in the robot~%uint8 submodule~%uint32 beaconID~%string beaconIDStr~%geometry_msgs/Point32 position #beacon's position of the world~%float32 range~%float32 bearing~%float32 max_range~%uint8 batteryPercentage~%uint16  group~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BeaconList-request)))
  "Returns full string definition for message of type 'BeaconList-request"
  (cl:format cl:nil "# Set Get beacon list~%bool isSave #true: save beacon list false: get beacon list~%Beacon[] beaconList~%~%~%================================================================================~%MSG: woosh_msgs/Beacon~%Header header #frame_id is the frame of receiver in the robot~%uint8 submodule~%uint32 beaconID~%string beaconIDStr~%geometry_msgs/Point32 position #beacon's position of the world~%float32 range~%float32 bearing~%float32 max_range~%uint8 batteryPercentage~%uint16  group~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BeaconList-request>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'beaconList) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BeaconList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BeaconList-request
    (cl:cons ':isSave (isSave msg))
    (cl:cons ':beaconList (beaconList msg))
))
;//! \htmlinclude BeaconList-response.msg.html

(cl:defclass <BeaconList-response> (roslisp-msg-protocol:ros-message)
  ((beaconList
    :reader beaconList
    :initarg :beaconList
    :type (cl:vector woosh_msgs-msg:Beacon)
   :initform (cl:make-array 0 :element-type 'woosh_msgs-msg:Beacon :initial-element (cl:make-instance 'woosh_msgs-msg:Beacon)))
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass BeaconList-response (<BeaconList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BeaconList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BeaconList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<BeaconList-response> is deprecated: use woosh_msgs-srv:BeaconList-response instead.")))

(cl:ensure-generic-function 'beaconList-val :lambda-list '(m))
(cl:defmethod beaconList-val ((m <BeaconList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:beaconList-val is deprecated.  Use woosh_msgs-srv:beaconList instead.")
  (beaconList m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <BeaconList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:message-val is deprecated.  Use woosh_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BeaconList-response>) ostream)
  "Serializes a message object of type '<BeaconList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'beaconList))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'beaconList))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BeaconList-response>) istream)
  "Deserializes a message object of type '<BeaconList-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'beaconList) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'beaconList)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'woosh_msgs-msg:Beacon))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BeaconList-response>)))
  "Returns string type for a service object of type '<BeaconList-response>"
  "woosh_msgs/BeaconListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BeaconList-response)))
  "Returns string type for a service object of type 'BeaconList-response"
  "woosh_msgs/BeaconListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BeaconList-response>)))
  "Returns md5sum for a message object of type '<BeaconList-response>"
  "f034c0ec4803c205aaeddc3bfdfaa7fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BeaconList-response)))
  "Returns md5sum for a message object of type 'BeaconList-response"
  "f034c0ec4803c205aaeddc3bfdfaa7fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BeaconList-response>)))
  "Returns full string definition for message of type '<BeaconList-response>"
  (cl:format cl:nil "~%Beacon[] beaconList~%string message~%~%~%~%================================================================================~%MSG: woosh_msgs/Beacon~%Header header #frame_id is the frame of receiver in the robot~%uint8 submodule~%uint32 beaconID~%string beaconIDStr~%geometry_msgs/Point32 position #beacon's position of the world~%float32 range~%float32 bearing~%float32 max_range~%uint8 batteryPercentage~%uint16  group~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BeaconList-response)))
  "Returns full string definition for message of type 'BeaconList-response"
  (cl:format cl:nil "~%Beacon[] beaconList~%string message~%~%~%~%================================================================================~%MSG: woosh_msgs/Beacon~%Header header #frame_id is the frame of receiver in the robot~%uint8 submodule~%uint32 beaconID~%string beaconIDStr~%geometry_msgs/Point32 position #beacon's position of the world~%float32 range~%float32 bearing~%float32 max_range~%uint8 batteryPercentage~%uint16  group~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BeaconList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'beaconList) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BeaconList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BeaconList-response
    (cl:cons ':beaconList (beaconList msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BeaconList)))
  'BeaconList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BeaconList)))
  'BeaconList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BeaconList)))
  "Returns string type for a service object of type '<BeaconList>"
  "woosh_msgs/BeaconList")