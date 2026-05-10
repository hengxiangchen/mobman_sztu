; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude NavFields.msg.html

(cl:defclass <NavFields> (roslisp-msg-protocol:ros-message)
  ((fields
    :reader fields
    :initarg :fields
    :type (cl:vector woosh_msgs-msg:Field)
   :initform (cl:make-array 0 :element-type 'woosh_msgs-msg:Field :initial-element (cl:make-instance 'woosh_msgs-msg:Field))))
)

(cl:defclass NavFields (<NavFields>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavFields>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavFields)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<NavFields> is deprecated: use woosh_msgs-msg:NavFields instead.")))

(cl:ensure-generic-function 'fields-val :lambda-list '(m))
(cl:defmethod fields-val ((m <NavFields>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:fields-val is deprecated.  Use woosh_msgs-msg:fields instead.")
  (fields m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavFields>) ostream)
  "Serializes a message object of type '<NavFields>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fields))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'fields))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavFields>) istream)
  "Deserializes a message object of type '<NavFields>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fields) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fields)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'woosh_msgs-msg:Field))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavFields>)))
  "Returns string type for a message object of type '<NavFields>"
  "woosh_msgs/NavFields")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavFields)))
  "Returns string type for a message object of type 'NavFields"
  "woosh_msgs/NavFields")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavFields>)))
  "Returns md5sum for a message object of type '<NavFields>"
  "01039fb61b56e051721719ac2301c854")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavFields)))
  "Returns md5sum for a message object of type 'NavFields"
  "01039fb61b56e051721719ac2301c854")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavFields>)))
  "Returns full string definition for message of type '<NavFields>"
  (cl:format cl:nil "Field[] fields~%~%================================================================================~%MSG: woosh_msgs/Field~%uint32 id		#通道id~%int32 type		#通道类型, 双行道=0,单行道=1,单向道=2,路口=3, 狭窄通道=4,定位域=5,爬坡域=6,Odom域=7~%float32 slope_angle 	#爬坡域角度~%NavFieldPoint slope_arrow   #爬坡域箭头位姿~%int32 capacity		#通道容量~%float32 wait_time_out	#停等超时模式下的超时时间~%int32 nav_mode		#导航模式,模糊避让=0,精准避让=1,停等=2,停等超时=3, 狭窄通道=10, 磁条导航=11, 二维码导航=12~%float32 max_speed		#通道最高速度,设为0,则不约束最高速度,非0则以设定的速度为机器人在该通道的最高速度~%int32 direction		#单向道的方向~%float32 radius  #半径~%float32 offset  # 偏移~%NavFieldPoint[] vertex	#域顶点~%NavFieldPoint[] nav_pos	#域中引导点数组,单向道中引导点的存储顺序决定其方向，数组里点的id有效~%NavFieldPoint entry	#单向道入口~%NavFieldPoint extrance	#单向道出口~%~%================================================================================~%MSG: woosh_msgs/NavFieldPoint~%geometry_msgs/Point pt	#Marker position~%uint32 id 		#Marker id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavFields)))
  "Returns full string definition for message of type 'NavFields"
  (cl:format cl:nil "Field[] fields~%~%================================================================================~%MSG: woosh_msgs/Field~%uint32 id		#通道id~%int32 type		#通道类型, 双行道=0,单行道=1,单向道=2,路口=3, 狭窄通道=4,定位域=5,爬坡域=6,Odom域=7~%float32 slope_angle 	#爬坡域角度~%NavFieldPoint slope_arrow   #爬坡域箭头位姿~%int32 capacity		#通道容量~%float32 wait_time_out	#停等超时模式下的超时时间~%int32 nav_mode		#导航模式,模糊避让=0,精准避让=1,停等=2,停等超时=3, 狭窄通道=10, 磁条导航=11, 二维码导航=12~%float32 max_speed		#通道最高速度,设为0,则不约束最高速度,非0则以设定的速度为机器人在该通道的最高速度~%int32 direction		#单向道的方向~%float32 radius  #半径~%float32 offset  # 偏移~%NavFieldPoint[] vertex	#域顶点~%NavFieldPoint[] nav_pos	#域中引导点数组,单向道中引导点的存储顺序决定其方向，数组里点的id有效~%NavFieldPoint entry	#单向道入口~%NavFieldPoint extrance	#单向道出口~%~%================================================================================~%MSG: woosh_msgs/NavFieldPoint~%geometry_msgs/Point pt	#Marker position~%uint32 id 		#Marker id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavFields>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fields) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavFields>))
  "Converts a ROS message object to a list"
  (cl:list 'NavFields
    (cl:cons ':fields (fields msg))
))
