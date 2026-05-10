; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-srv)


;//! \htmlinclude ScanMatchInfo-request.msg.html

(cl:defclass <ScanMatchInfo-request> (roslisp-msg-protocol:ros-message)
  ((get_scan_match
    :reader get_scan_match
    :initarg :get_scan_match
    :type cl:boolean
    :initform cl:nil)
   (match_pose
    :reader match_pose
    :initarg :match_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass ScanMatchInfo-request (<ScanMatchInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScanMatchInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScanMatchInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<ScanMatchInfo-request> is deprecated: use woosh_msgs-srv:ScanMatchInfo-request instead.")))

(cl:ensure-generic-function 'get_scan_match-val :lambda-list '(m))
(cl:defmethod get_scan_match-val ((m <ScanMatchInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:get_scan_match-val is deprecated.  Use woosh_msgs-srv:get_scan_match instead.")
  (get_scan_match m))

(cl:ensure-generic-function 'match_pose-val :lambda-list '(m))
(cl:defmethod match_pose-val ((m <ScanMatchInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:match_pose-val is deprecated.  Use woosh_msgs-srv:match_pose instead.")
  (match_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScanMatchInfo-request>) ostream)
  "Serializes a message object of type '<ScanMatchInfo-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'get_scan_match) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'match_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScanMatchInfo-request>) istream)
  "Deserializes a message object of type '<ScanMatchInfo-request>"
    (cl:setf (cl:slot-value msg 'get_scan_match) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'match_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScanMatchInfo-request>)))
  "Returns string type for a service object of type '<ScanMatchInfo-request>"
  "woosh_msgs/ScanMatchInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScanMatchInfo-request)))
  "Returns string type for a service object of type 'ScanMatchInfo-request"
  "woosh_msgs/ScanMatchInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScanMatchInfo-request>)))
  "Returns md5sum for a message object of type '<ScanMatchInfo-request>"
  "33f658e01fd3940268f71981c2c56be5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScanMatchInfo-request)))
  "Returns md5sum for a message object of type 'ScanMatchInfo-request"
  "33f658e01fd3940268f71981c2c56be5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScanMatchInfo-request>)))
  "Returns full string definition for message of type '<ScanMatchInfo-request>"
  (cl:format cl:nil "bool get_scan_match  #true : get; false: save/update scan match~%geometry_msgs/PoseStamped match_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScanMatchInfo-request)))
  "Returns full string definition for message of type 'ScanMatchInfo-request"
  (cl:format cl:nil "bool get_scan_match  #true : get; false: save/update scan match~%geometry_msgs/PoseStamped match_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScanMatchInfo-request>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'match_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScanMatchInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ScanMatchInfo-request
    (cl:cons ':get_scan_match (get_scan_match msg))
    (cl:cons ':match_pose (match_pose msg))
))
;//! \htmlinclude ScanMatchInfo-response.msg.html

(cl:defclass <ScanMatchInfo-response> (roslisp-msg-protocol:ros-message)
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
   (valid
    :reader valid
    :initarg :valid
    :type cl:integer
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (iterations
    :reader iterations
    :initarg :iterations
    :type cl:integer
    :initform 0)
   (nvalid
    :reader nvalid
    :initarg :nvalid
    :type cl:integer
    :initform 0)
   (error
    :reader error
    :initarg :error
    :type cl:float
    :initform 0.0))
)

(cl:defclass ScanMatchInfo-response (<ScanMatchInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScanMatchInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScanMatchInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<ScanMatchInfo-response> is deprecated: use woosh_msgs-srv:ScanMatchInfo-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ScanMatchInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:success-val is deprecated.  Use woosh_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ScanMatchInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:message-val is deprecated.  Use woosh_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <ScanMatchInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:valid-val is deprecated.  Use woosh_msgs-srv:valid instead.")
  (valid m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <ScanMatchInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:x-val is deprecated.  Use woosh_msgs-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'iterations-val :lambda-list '(m))
(cl:defmethod iterations-val ((m <ScanMatchInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:iterations-val is deprecated.  Use woosh_msgs-srv:iterations instead.")
  (iterations m))

(cl:ensure-generic-function 'nvalid-val :lambda-list '(m))
(cl:defmethod nvalid-val ((m <ScanMatchInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:nvalid-val is deprecated.  Use woosh_msgs-srv:nvalid instead.")
  (nvalid m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <ScanMatchInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:error-val is deprecated.  Use woosh_msgs-srv:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScanMatchInfo-response>) ostream)
  "Serializes a message object of type '<ScanMatchInfo-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let* ((signed (cl:slot-value msg 'valid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'x))
  (cl:let* ((signed (cl:slot-value msg 'iterations)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'nvalid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScanMatchInfo-response>) istream)
  "Deserializes a message object of type '<ScanMatchInfo-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'valid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'x) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'x)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iterations) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nvalid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'error) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScanMatchInfo-response>)))
  "Returns string type for a service object of type '<ScanMatchInfo-response>"
  "woosh_msgs/ScanMatchInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScanMatchInfo-response)))
  "Returns string type for a service object of type 'ScanMatchInfo-response"
  "woosh_msgs/ScanMatchInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScanMatchInfo-response>)))
  "Returns md5sum for a message object of type '<ScanMatchInfo-response>"
  "33f658e01fd3940268f71981c2c56be5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScanMatchInfo-response)))
  "Returns md5sum for a message object of type 'ScanMatchInfo-response"
  "33f658e01fd3940268f71981c2c56be5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScanMatchInfo-response>)))
  "Returns full string definition for message of type '<ScanMatchInfo-response>"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%#/** 1 if the result is valid */~%int32 valid~%#/** Scan matching result (x,y,theta) */~%float32[] x~%#/** Number of iterations done */~%int32 iterations~%#/** Number of valid correspondence in the end */~%int32 nvalid~%#/** Total correspondence error */~%float32 error~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScanMatchInfo-response)))
  "Returns full string definition for message of type 'ScanMatchInfo-response"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%#/** 1 if the result is valid */~%int32 valid~%#/** Scan matching result (x,y,theta) */~%float32[] x~%#/** Number of iterations done */~%int32 iterations~%#/** Number of valid correspondence in the end */~%int32 nvalid~%#/** Total correspondence error */~%float32 error~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScanMatchInfo-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScanMatchInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ScanMatchInfo-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':valid (valid msg))
    (cl:cons ':x (x msg))
    (cl:cons ':iterations (iterations msg))
    (cl:cons ':nvalid (nvalid msg))
    (cl:cons ':error (error msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ScanMatchInfo)))
  'ScanMatchInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ScanMatchInfo)))
  'ScanMatchInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScanMatchInfo)))
  "Returns string type for a service object of type '<ScanMatchInfo>"
  "woosh_msgs/ScanMatchInfo")