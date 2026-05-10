; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-srv)


;//! \htmlinclude ExecTask-request.msg.html

(cl:defclass <ExecTask-request> (roslisp-msg-protocol:ros-message)
  ((task_exect
    :reader task_exect
    :initarg :task_exect
    :type cl:fixnum
    :initform 0)
   (task_id
    :reader task_id
    :initarg :task_id
    :type cl:integer
    :initform 0)
   (task_type
    :reader task_type
    :initarg :task_type
    :type cl:fixnum
    :initform 0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:fixnum
    :initform 0)
   (task_type_no
    :reader task_type_no
    :initarg :task_type_no
    :type cl:integer
    :initform 0)
   (mark_no
    :reader mark_no
    :initarg :mark_no
    :type cl:string
    :initform "")
   (poses
    :reader poses
    :initarg :poses
    :type (cl:vector geometry_msgs-msg:PoseStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PoseStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
   (custom
    :reader custom
    :initarg :custom
    :type cl:integer
    :initform 0))
)

(cl:defclass ExecTask-request (<ExecTask-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecTask-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecTask-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<ExecTask-request> is deprecated: use woosh_msgs-srv:ExecTask-request instead.")))

(cl:ensure-generic-function 'task_exect-val :lambda-list '(m))
(cl:defmethod task_exect-val ((m <ExecTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:task_exect-val is deprecated.  Use woosh_msgs-srv:task_exect instead.")
  (task_exect m))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <ExecTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:task_id-val is deprecated.  Use woosh_msgs-srv:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'task_type-val :lambda-list '(m))
(cl:defmethod task_type-val ((m <ExecTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:task_type-val is deprecated.  Use woosh_msgs-srv:task_type instead.")
  (task_type m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <ExecTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:direction-val is deprecated.  Use woosh_msgs-srv:direction instead.")
  (direction m))

(cl:ensure-generic-function 'task_type_no-val :lambda-list '(m))
(cl:defmethod task_type_no-val ((m <ExecTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:task_type_no-val is deprecated.  Use woosh_msgs-srv:task_type_no instead.")
  (task_type_no m))

(cl:ensure-generic-function 'mark_no-val :lambda-list '(m))
(cl:defmethod mark_no-val ((m <ExecTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:mark_no-val is deprecated.  Use woosh_msgs-srv:mark_no instead.")
  (mark_no m))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <ExecTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:poses-val is deprecated.  Use woosh_msgs-srv:poses instead.")
  (poses m))

(cl:ensure-generic-function 'custom-val :lambda-list '(m))
(cl:defmethod custom-val ((m <ExecTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:custom-val is deprecated.  Use woosh_msgs-srv:custom instead.")
  (custom m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecTask-request>) ostream)
  "Serializes a message object of type '<ExecTask-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_exect)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'task_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_type_no)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_type_no)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_type_no)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_type_no)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mark_no))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mark_no))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'custom)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecTask-request>) istream)
  "Deserializes a message object of type '<ExecTask-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_exect)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_type_no)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_type_no)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_type_no)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_type_no)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mark_no) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mark_no) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PoseStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'custom)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecTask-request>)))
  "Returns string type for a service object of type '<ExecTask-request>"
  "woosh_msgs/ExecTaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecTask-request)))
  "Returns string type for a service object of type 'ExecTask-request"
  "woosh_msgs/ExecTaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecTask-request>)))
  "Returns md5sum for a message object of type '<ExecTask-request>"
  "22be4bcc7dfdb3b89d96a915d92d36fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecTask-request)))
  "Returns md5sum for a message object of type 'ExecTask-request"
  "22be4bcc7dfdb3b89d96a915d92d36fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecTask-request>)))
  "Returns full string definition for message of type '<ExecTask-request>"
  (cl:format cl:nil "uint8 task_exect      #任务执行请求，1： 执行，2：暂停，3： 继续， 4：取消, 6:等待打断~%int64 task_id         #任务ID~%uint8 task_type       #任务类型, 1: 拣选 2：泊车 3： 充电  4： 搬运~%uint8 direction       #动作方向, 0： 未定义 1： 上料  2：下料, 不是上下料任务填0，可选项~%uint32 task_type_no   #类型组合,默认0，自定义，可选项~%string mark_no        #目标点（储位）编号，如果填写编号，则 任务路经项 可以不用填写，若要填写,任务路经的最后一个点，必须和此储位点一致~%geometry_msgs/PoseStamped[] poses #任务路经，如果是一个点（目标点），则表示由系统自己规划，最总到达此目标点，可选项~%byte custom           # 自定义字段，因项目而异，可选项~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecTask-request)))
  "Returns full string definition for message of type 'ExecTask-request"
  (cl:format cl:nil "uint8 task_exect      #任务执行请求，1： 执行，2：暂停，3： 继续， 4：取消, 6:等待打断~%int64 task_id         #任务ID~%uint8 task_type       #任务类型, 1: 拣选 2：泊车 3： 充电  4： 搬运~%uint8 direction       #动作方向, 0： 未定义 1： 上料  2：下料, 不是上下料任务填0，可选项~%uint32 task_type_no   #类型组合,默认0，自定义，可选项~%string mark_no        #目标点（储位）编号，如果填写编号，则 任务路经项 可以不用填写，若要填写,任务路经的最后一个点，必须和此储位点一致~%geometry_msgs/PoseStamped[] poses #任务路经，如果是一个点（目标点），则表示由系统自己规划，最总到达此目标点，可选项~%byte custom           # 自定义字段，因项目而异，可选项~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecTask-request>))
  (cl:+ 0
     1
     8
     1
     1
     4
     4 (cl:length (cl:slot-value msg 'mark_no))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecTask-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecTask-request
    (cl:cons ':task_exect (task_exect msg))
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':task_type (task_type msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':task_type_no (task_type_no msg))
    (cl:cons ':mark_no (mark_no msg))
    (cl:cons ':poses (poses msg))
    (cl:cons ':custom (custom msg))
))
;//! \htmlinclude ExecTask-response.msg.html

(cl:defclass <ExecTask-response> (roslisp-msg-protocol:ros-message)
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
   (statusCode
    :reader statusCode
    :initarg :statusCode
    :type cl:integer
    :initform 0))
)

(cl:defclass ExecTask-response (<ExecTask-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecTask-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecTask-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<ExecTask-response> is deprecated: use woosh_msgs-srv:ExecTask-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ExecTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:success-val is deprecated.  Use woosh_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ExecTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:message-val is deprecated.  Use woosh_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'statusCode-val :lambda-list '(m))
(cl:defmethod statusCode-val ((m <ExecTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:statusCode-val is deprecated.  Use woosh_msgs-srv:statusCode instead.")
  (statusCode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecTask-response>) ostream)
  "Serializes a message object of type '<ExecTask-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'statusCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'statusCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'statusCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'statusCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'statusCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'statusCode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecTask-response>) istream)
  "Deserializes a message object of type '<ExecTask-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'statusCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'statusCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'statusCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'statusCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'statusCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'statusCode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecTask-response>)))
  "Returns string type for a service object of type '<ExecTask-response>"
  "woosh_msgs/ExecTaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecTask-response)))
  "Returns string type for a service object of type 'ExecTask-response"
  "woosh_msgs/ExecTaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecTask-response>)))
  "Returns md5sum for a message object of type '<ExecTask-response>"
  "22be4bcc7dfdb3b89d96a915d92d36fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecTask-response)))
  "Returns md5sum for a message object of type 'ExecTask-response"
  "22be4bcc7dfdb3b89d96a915d92d36fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecTask-response>)))
  "Returns full string definition for message of type '<ExecTask-response>"
  (cl:format cl:nil "bool success   #执行成功/失败，~%string message # informational, e.g. for error messages~%uint64 statusCode #状态码  1:未初始化，2：空闲，3：泊车中，4：任务中，5：警告，6：异常，8：充电中，9：构图中~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecTask-response)))
  "Returns full string definition for message of type 'ExecTask-response"
  (cl:format cl:nil "bool success   #执行成功/失败，~%string message # informational, e.g. for error messages~%uint64 statusCode #状态码  1:未初始化，2：空闲，3：泊车中，4：任务中，5：警告，6：异常，8：充电中，9：构图中~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecTask-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecTask-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecTask-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':statusCode (statusCode msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ExecTask)))
  'ExecTask-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ExecTask)))
  'ExecTask-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecTask)))
  "Returns string type for a service object of type '<ExecTask>"
  "woosh_msgs/ExecTask")