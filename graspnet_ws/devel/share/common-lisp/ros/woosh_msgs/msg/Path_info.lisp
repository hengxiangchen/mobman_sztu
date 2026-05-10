; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude Path_info.msg.html

(cl:defclass <Path_info> (roslisp-msg-protocol:ros-message)
  ((mono_paths
    :reader mono_paths
    :initarg :mono_paths
    :type (cl:vector woosh_msgs-msg:mono_path)
   :initform (cl:make-array 0 :element-type 'woosh_msgs-msg:mono_path :initial-element (cl:make-instance 'woosh_msgs-msg:mono_path)))
   (bidirect_paths
    :reader bidirect_paths
    :initarg :bidirect_paths
    :type (cl:vector woosh_msgs-msg:bidirect_path)
   :initform (cl:make-array 0 :element-type 'woosh_msgs-msg:bidirect_path :initial-element (cl:make-instance 'woosh_msgs-msg:bidirect_path))))
)

(cl:defclass Path_info (<Path_info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Path_info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Path_info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<Path_info> is deprecated: use woosh_msgs-msg:Path_info instead.")))

(cl:ensure-generic-function 'mono_paths-val :lambda-list '(m))
(cl:defmethod mono_paths-val ((m <Path_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:mono_paths-val is deprecated.  Use woosh_msgs-msg:mono_paths instead.")
  (mono_paths m))

(cl:ensure-generic-function 'bidirect_paths-val :lambda-list '(m))
(cl:defmethod bidirect_paths-val ((m <Path_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:bidirect_paths-val is deprecated.  Use woosh_msgs-msg:bidirect_paths instead.")
  (bidirect_paths m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Path_info>) ostream)
  "Serializes a message object of type '<Path_info>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mono_paths))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'mono_paths))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bidirect_paths))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bidirect_paths))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Path_info>) istream)
  "Deserializes a message object of type '<Path_info>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mono_paths) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mono_paths)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'woosh_msgs-msg:mono_path))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bidirect_paths) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bidirect_paths)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'woosh_msgs-msg:bidirect_path))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Path_info>)))
  "Returns string type for a message object of type '<Path_info>"
  "woosh_msgs/Path_info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Path_info)))
  "Returns string type for a message object of type 'Path_info"
  "woosh_msgs/Path_info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Path_info>)))
  "Returns md5sum for a message object of type '<Path_info>"
  "2de62e876ce2d4454b408d3b3598dd50")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Path_info)))
  "Returns md5sum for a message object of type 'Path_info"
  "2de62e876ce2d4454b408d3b3598dd50")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Path_info>)))
  "Returns full string definition for message of type '<Path_info>"
  (cl:format cl:nil "mono_path[] mono_paths  #单向路径集合~%bidirect_path[] bidirect_paths #双向路径集合~%~%================================================================================~%MSG: woosh_msgs/mono_path~%nav_msgs/Path path~%float32 width~%bool allow_avoid~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: woosh_msgs/bidirect_path~%nav_msgs/Path path~%bool allow_avoid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Path_info)))
  "Returns full string definition for message of type 'Path_info"
  (cl:format cl:nil "mono_path[] mono_paths  #单向路径集合~%bidirect_path[] bidirect_paths #双向路径集合~%~%================================================================================~%MSG: woosh_msgs/mono_path~%nav_msgs/Path path~%float32 width~%bool allow_avoid~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: woosh_msgs/bidirect_path~%nav_msgs/Path path~%bool allow_avoid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Path_info>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mono_paths) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bidirect_paths) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Path_info>))
  "Converts a ROS message object to a list"
  (cl:list 'Path_info
    (cl:cons ':mono_paths (mono_paths msg))
    (cl:cons ':bidirect_paths (bidirect_paths msg))
))
