; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude PathesGraph.msg.html

(cl:defclass <PathesGraph> (roslisp-msg-protocol:ros-message)
  ((vertices
    :reader vertices
    :initarg :vertices
    :type (cl:vector woosh_msgs-msg:GraphVertex)
   :initform (cl:make-array 0 :element-type 'woosh_msgs-msg:GraphVertex :initial-element (cl:make-instance 'woosh_msgs-msg:GraphVertex)))
   (edges
    :reader edges
    :initarg :edges
    :type (cl:vector woosh_msgs-msg:GraphEdge)
   :initform (cl:make-array 0 :element-type 'woosh_msgs-msg:GraphEdge :initial-element (cl:make-instance 'woosh_msgs-msg:GraphEdge))))
)

(cl:defclass PathesGraph (<PathesGraph>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathesGraph>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathesGraph)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<PathesGraph> is deprecated: use woosh_msgs-msg:PathesGraph instead.")))

(cl:ensure-generic-function 'vertices-val :lambda-list '(m))
(cl:defmethod vertices-val ((m <PathesGraph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:vertices-val is deprecated.  Use woosh_msgs-msg:vertices instead.")
  (vertices m))

(cl:ensure-generic-function 'edges-val :lambda-list '(m))
(cl:defmethod edges-val ((m <PathesGraph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:edges-val is deprecated.  Use woosh_msgs-msg:edges instead.")
  (edges m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathesGraph>) ostream)
  "Serializes a message object of type '<PathesGraph>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vertices))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vertices))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'edges))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'edges))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathesGraph>) istream)
  "Deserializes a message object of type '<PathesGraph>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vertices) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vertices)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'woosh_msgs-msg:GraphVertex))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'edges) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'edges)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'woosh_msgs-msg:GraphEdge))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathesGraph>)))
  "Returns string type for a message object of type '<PathesGraph>"
  "woosh_msgs/PathesGraph")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathesGraph)))
  "Returns string type for a message object of type 'PathesGraph"
  "woosh_msgs/PathesGraph")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathesGraph>)))
  "Returns md5sum for a message object of type '<PathesGraph>"
  "9a8d1368b575e04ad9be7364531b9b65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathesGraph)))
  "Returns md5sum for a message object of type 'PathesGraph"
  "9a8d1368b575e04ad9be7364531b9b65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathesGraph>)))
  "Returns full string definition for message of type '<PathesGraph>"
  (cl:format cl:nil "GraphVertex[] vertices	#节点集合~%GraphEdge[] edges	#边集合~%~%================================================================================~%MSG: woosh_msgs/GraphVertex~%NavFieldPoint mark~%int32 field_id~%~%================================================================================~%MSG: woosh_msgs/NavFieldPoint~%geometry_msgs/Point pt	#Marker position~%uint32 id 		#Marker id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: woosh_msgs/GraphEdge~%uint32 source		#边源marker的id~%uint32 target		#边汇marker的id~%uint32 field_id		#边所在域的id，如果边不在域内，则id为0~%float32 weight		#边权重，主要影响路径规划~%float32 busy_level	#繁忙系数，越大，路径规划器更不倾向选择该边~%float32 path_length	#路径长度~%nav_msgs/Path path	#边路径点~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathesGraph)))
  "Returns full string definition for message of type 'PathesGraph"
  (cl:format cl:nil "GraphVertex[] vertices	#节点集合~%GraphEdge[] edges	#边集合~%~%================================================================================~%MSG: woosh_msgs/GraphVertex~%NavFieldPoint mark~%int32 field_id~%~%================================================================================~%MSG: woosh_msgs/NavFieldPoint~%geometry_msgs/Point pt	#Marker position~%uint32 id 		#Marker id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: woosh_msgs/GraphEdge~%uint32 source		#边源marker的id~%uint32 target		#边汇marker的id~%uint32 field_id		#边所在域的id，如果边不在域内，则id为0~%float32 weight		#边权重，主要影响路径规划~%float32 busy_level	#繁忙系数，越大，路径规划器更不倾向选择该边~%float32 path_length	#路径长度~%nav_msgs/Path path	#边路径点~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathesGraph>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vertices) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'edges) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathesGraph>))
  "Converts a ROS message object to a list"
  (cl:list 'PathesGraph
    (cl:cons ':vertices (vertices msg))
    (cl:cons ':edges (edges msg))
))
