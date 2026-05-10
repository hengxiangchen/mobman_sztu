; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-srv)


;//! \htmlinclude Deployment-request.msg.html

(cl:defclass <Deployment-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Deployment-request (<Deployment-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Deployment-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Deployment-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<Deployment-request> is deprecated: use woosh_msgs-srv:Deployment-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Deployment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:type-val is deprecated.  Use woosh_msgs-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <Deployment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:mode-val is deprecated.  Use woosh_msgs-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Deployment-request>) ostream)
  "Serializes a message object of type '<Deployment-request>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Deployment-request>) istream)
  "Deserializes a message object of type '<Deployment-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Deployment-request>)))
  "Returns string type for a service object of type '<Deployment-request>"
  "woosh_msgs/DeploymentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Deployment-request)))
  "Returns string type for a service object of type 'Deployment-request"
  "woosh_msgs/DeploymentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Deployment-request>)))
  "Returns md5sum for a message object of type '<Deployment-request>"
  "57f1fbe19bd792986d22fb16590e842c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Deployment-request)))
  "Returns md5sum for a message object of type 'Deployment-request"
  "57f1fbe19bd792986d22fb16590e842c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Deployment-request>)))
  "Returns full string definition for message of type '<Deployment-request>"
  (cl:format cl:nil "int8 type   #0:beacons  1:ar_tag  2:reflector~%int8 mode   #0:开始采集  1:取消采集（beacons多组数据生效）  2:reflector校验~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Deployment-request)))
  "Returns full string definition for message of type 'Deployment-request"
  (cl:format cl:nil "int8 type   #0:beacons  1:ar_tag  2:reflector~%int8 mode   #0:开始采集  1:取消采集（beacons多组数据生效）  2:reflector校验~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Deployment-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Deployment-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Deployment-request
    (cl:cons ':type (type msg))
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude Deployment-response.msg.html

(cl:defclass <Deployment-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (point1Valid
    :reader point1Valid
    :initarg :point1Valid
    :type cl:boolean
    :initform cl:nil)
   (point2Valid
    :reader point2Valid
    :initarg :point2Valid
    :type cl:boolean
    :initform cl:nil)
   (point3Valid
    :reader point3Valid
    :initarg :point3Valid
    :type cl:boolean
    :initform cl:nil)
   (collectedNumber
    :reader collectedNumber
    :initarg :collectedNumber
    :type cl:fixnum
    :initform 0)
   (numberOfFailBeacons
    :reader numberOfFailBeacons
    :initarg :numberOfFailBeacons
    :type cl:fixnum
    :initform 0)
   (markers
    :reader markers
    :initarg :markers
    :type woosh_msgs-msg:deployment_markers
    :initform (cl:make-instance 'woosh_msgs-msg:deployment_markers))
   (reflector_errorID_groups
    :reader reflector_errorID_groups
    :initarg :reflector_errorID_groups
    :type (cl:vector woosh_msgs-msg:reflector_errorID_group)
   :initform (cl:make-array 0 :element-type 'woosh_msgs-msg:reflector_errorID_group :initial-element (cl:make-instance 'woosh_msgs-msg:reflector_errorID_group))))
)

(cl:defclass Deployment-response (<Deployment-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Deployment-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Deployment-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<Deployment-response> is deprecated: use woosh_msgs-srv:Deployment-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Deployment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:success-val is deprecated.  Use woosh_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Deployment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:message-val is deprecated.  Use woosh_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'point1Valid-val :lambda-list '(m))
(cl:defmethod point1Valid-val ((m <Deployment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:point1Valid-val is deprecated.  Use woosh_msgs-srv:point1Valid instead.")
  (point1Valid m))

(cl:ensure-generic-function 'point2Valid-val :lambda-list '(m))
(cl:defmethod point2Valid-val ((m <Deployment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:point2Valid-val is deprecated.  Use woosh_msgs-srv:point2Valid instead.")
  (point2Valid m))

(cl:ensure-generic-function 'point3Valid-val :lambda-list '(m))
(cl:defmethod point3Valid-val ((m <Deployment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:point3Valid-val is deprecated.  Use woosh_msgs-srv:point3Valid instead.")
  (point3Valid m))

(cl:ensure-generic-function 'collectedNumber-val :lambda-list '(m))
(cl:defmethod collectedNumber-val ((m <Deployment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:collectedNumber-val is deprecated.  Use woosh_msgs-srv:collectedNumber instead.")
  (collectedNumber m))

(cl:ensure-generic-function 'numberOfFailBeacons-val :lambda-list '(m))
(cl:defmethod numberOfFailBeacons-val ((m <Deployment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:numberOfFailBeacons-val is deprecated.  Use woosh_msgs-srv:numberOfFailBeacons instead.")
  (numberOfFailBeacons m))

(cl:ensure-generic-function 'markers-val :lambda-list '(m))
(cl:defmethod markers-val ((m <Deployment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:markers-val is deprecated.  Use woosh_msgs-srv:markers instead.")
  (markers m))

(cl:ensure-generic-function 'reflector_errorID_groups-val :lambda-list '(m))
(cl:defmethod reflector_errorID_groups-val ((m <Deployment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:reflector_errorID_groups-val is deprecated.  Use woosh_msgs-srv:reflector_errorID_groups instead.")
  (reflector_errorID_groups m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Deployment-response>) ostream)
  "Serializes a message object of type '<Deployment-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'point1Valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'point2Valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'point3Valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'collectedNumber)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'numberOfFailBeacons)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'markers) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reflector_errorID_groups))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'reflector_errorID_groups))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Deployment-response>) istream)
  "Deserializes a message object of type '<Deployment-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'point1Valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'point2Valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'point3Valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'collectedNumber)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'numberOfFailBeacons) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'markers) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reflector_errorID_groups) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reflector_errorID_groups)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'woosh_msgs-msg:reflector_errorID_group))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Deployment-response>)))
  "Returns string type for a service object of type '<Deployment-response>"
  "woosh_msgs/DeploymentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Deployment-response)))
  "Returns string type for a service object of type 'Deployment-response"
  "woosh_msgs/DeploymentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Deployment-response>)))
  "Returns md5sum for a message object of type '<Deployment-response>"
  "57f1fbe19bd792986d22fb16590e842c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Deployment-response)))
  "Returns md5sum for a message object of type 'Deployment-response"
  "57f1fbe19bd792986d22fb16590e842c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Deployment-response>)))
  "Returns full string definition for message of type '<Deployment-response>"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%bool point1Valid~%bool point2Valid~%bool point3Valid~%uint8 collectedNumber       #表示此时已经收集几个数据了（总共需要三个）~%int8 numberOfFailBeacons     #三次采集后未发布的uwb基站数~%~%deployment_markers markers  #基于map坐标系~%~%reflector_errorID_group[] reflector_errorID_groups~%~%~%================================================================================~%MSG: woosh_msgs/deployment_markers~%Header header~%deployment_marker[] markers~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: woosh_msgs/deployment_marker~%uint32 markerID~%geometry_msgs/Pose pose~%uint16  group~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: woosh_msgs/reflector_errorID_group~%reflector_errorID[] reflector_errorIDs~%~%================================================================================~%MSG: woosh_msgs/reflector_errorID~%uint32 ID1~%uint32 ID2~%uint32 ID3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Deployment-response)))
  "Returns full string definition for message of type 'Deployment-response"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%bool point1Valid~%bool point2Valid~%bool point3Valid~%uint8 collectedNumber       #表示此时已经收集几个数据了（总共需要三个）~%int8 numberOfFailBeacons     #三次采集后未发布的uwb基站数~%~%deployment_markers markers  #基于map坐标系~%~%reflector_errorID_group[] reflector_errorID_groups~%~%~%================================================================================~%MSG: woosh_msgs/deployment_markers~%Header header~%deployment_marker[] markers~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: woosh_msgs/deployment_marker~%uint32 markerID~%geometry_msgs/Pose pose~%uint16  group~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: woosh_msgs/reflector_errorID_group~%reflector_errorID[] reflector_errorIDs~%~%================================================================================~%MSG: woosh_msgs/reflector_errorID~%uint32 ID1~%uint32 ID2~%uint32 ID3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Deployment-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     1
     1
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'markers))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reflector_errorID_groups) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Deployment-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Deployment-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':point1Valid (point1Valid msg))
    (cl:cons ':point2Valid (point2Valid msg))
    (cl:cons ':point3Valid (point3Valid msg))
    (cl:cons ':collectedNumber (collectedNumber msg))
    (cl:cons ':numberOfFailBeacons (numberOfFailBeacons msg))
    (cl:cons ':markers (markers msg))
    (cl:cons ':reflector_errorID_groups (reflector_errorID_groups msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Deployment)))
  'Deployment-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Deployment)))
  'Deployment-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Deployment)))
  "Returns string type for a service object of type '<Deployment>"
  "woosh_msgs/Deployment")