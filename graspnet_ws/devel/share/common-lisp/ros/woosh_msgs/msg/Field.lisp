; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude Field.msg.html

(cl:defclass <Field> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (slope_angle
    :reader slope_angle
    :initarg :slope_angle
    :type cl:float
    :initform 0.0)
   (slope_arrow
    :reader slope_arrow
    :initarg :slope_arrow
    :type woosh_msgs-msg:NavFieldPoint
    :initform (cl:make-instance 'woosh_msgs-msg:NavFieldPoint))
   (capacity
    :reader capacity
    :initarg :capacity
    :type cl:integer
    :initform 0)
   (wait_time_out
    :reader wait_time_out
    :initarg :wait_time_out
    :type cl:float
    :initform 0.0)
   (nav_mode
    :reader nav_mode
    :initarg :nav_mode
    :type cl:integer
    :initform 0)
   (max_speed
    :reader max_speed
    :initarg :max_speed
    :type cl:float
    :initform 0.0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:integer
    :initform 0)
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0)
   (offset
    :reader offset
    :initarg :offset
    :type cl:float
    :initform 0.0)
   (vertex
    :reader vertex
    :initarg :vertex
    :type (cl:vector woosh_msgs-msg:NavFieldPoint)
   :initform (cl:make-array 0 :element-type 'woosh_msgs-msg:NavFieldPoint :initial-element (cl:make-instance 'woosh_msgs-msg:NavFieldPoint)))
   (nav_pos
    :reader nav_pos
    :initarg :nav_pos
    :type (cl:vector woosh_msgs-msg:NavFieldPoint)
   :initform (cl:make-array 0 :element-type 'woosh_msgs-msg:NavFieldPoint :initial-element (cl:make-instance 'woosh_msgs-msg:NavFieldPoint)))
   (entry
    :reader entry
    :initarg :entry
    :type woosh_msgs-msg:NavFieldPoint
    :initform (cl:make-instance 'woosh_msgs-msg:NavFieldPoint))
   (extrance
    :reader extrance
    :initarg :extrance
    :type woosh_msgs-msg:NavFieldPoint
    :initform (cl:make-instance 'woosh_msgs-msg:NavFieldPoint)))
)

(cl:defclass Field (<Field>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Field>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Field)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<Field> is deprecated: use woosh_msgs-msg:Field instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Field>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:id-val is deprecated.  Use woosh_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Field>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:type-val is deprecated.  Use woosh_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'slope_angle-val :lambda-list '(m))
(cl:defmethod slope_angle-val ((m <Field>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:slope_angle-val is deprecated.  Use woosh_msgs-msg:slope_angle instead.")
  (slope_angle m))

(cl:ensure-generic-function 'slope_arrow-val :lambda-list '(m))
(cl:defmethod slope_arrow-val ((m <Field>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:slope_arrow-val is deprecated.  Use woosh_msgs-msg:slope_arrow instead.")
  (slope_arrow m))

(cl:ensure-generic-function 'capacity-val :lambda-list '(m))
(cl:defmethod capacity-val ((m <Field>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:capacity-val is deprecated.  Use woosh_msgs-msg:capacity instead.")
  (capacity m))

(cl:ensure-generic-function 'wait_time_out-val :lambda-list '(m))
(cl:defmethod wait_time_out-val ((m <Field>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:wait_time_out-val is deprecated.  Use woosh_msgs-msg:wait_time_out instead.")
  (wait_time_out m))

(cl:ensure-generic-function 'nav_mode-val :lambda-list '(m))
(cl:defmethod nav_mode-val ((m <Field>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:nav_mode-val is deprecated.  Use woosh_msgs-msg:nav_mode instead.")
  (nav_mode m))

(cl:ensure-generic-function 'max_speed-val :lambda-list '(m))
(cl:defmethod max_speed-val ((m <Field>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:max_speed-val is deprecated.  Use woosh_msgs-msg:max_speed instead.")
  (max_speed m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <Field>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:direction-val is deprecated.  Use woosh_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <Field>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:radius-val is deprecated.  Use woosh_msgs-msg:radius instead.")
  (radius m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <Field>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:offset-val is deprecated.  Use woosh_msgs-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'vertex-val :lambda-list '(m))
(cl:defmethod vertex-val ((m <Field>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:vertex-val is deprecated.  Use woosh_msgs-msg:vertex instead.")
  (vertex m))

(cl:ensure-generic-function 'nav_pos-val :lambda-list '(m))
(cl:defmethod nav_pos-val ((m <Field>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:nav_pos-val is deprecated.  Use woosh_msgs-msg:nav_pos instead.")
  (nav_pos m))

(cl:ensure-generic-function 'entry-val :lambda-list '(m))
(cl:defmethod entry-val ((m <Field>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:entry-val is deprecated.  Use woosh_msgs-msg:entry instead.")
  (entry m))

(cl:ensure-generic-function 'extrance-val :lambda-list '(m))
(cl:defmethod extrance-val ((m <Field>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:extrance-val is deprecated.  Use woosh_msgs-msg:extrance instead.")
  (extrance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Field>) ostream)
  "Serializes a message object of type '<Field>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'slope_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'slope_arrow) ostream)
  (cl:let* ((signed (cl:slot-value msg 'capacity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wait_time_out))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'nav_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vertex))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vertex))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'nav_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'nav_pos))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'entry) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'extrance) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Field>) istream)
  "Deserializes a message object of type '<Field>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'slope_angle) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'slope_arrow) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'capacity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wait_time_out) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nav_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offset) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vertex) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vertex)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'woosh_msgs-msg:NavFieldPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'nav_pos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'nav_pos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'woosh_msgs-msg:NavFieldPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'entry) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'extrance) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Field>)))
  "Returns string type for a message object of type '<Field>"
  "woosh_msgs/Field")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Field)))
  "Returns string type for a message object of type 'Field"
  "woosh_msgs/Field")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Field>)))
  "Returns md5sum for a message object of type '<Field>"
  "cd1f433a6719ae3939066ca26b7c7b36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Field)))
  "Returns md5sum for a message object of type 'Field"
  "cd1f433a6719ae3939066ca26b7c7b36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Field>)))
  "Returns full string definition for message of type '<Field>"
  (cl:format cl:nil "uint32 id		#通道id~%int32 type		#通道类型, 双行道=0,单行道=1,单向道=2,路口=3, 狭窄通道=4,定位域=5,爬坡域=6,Odom域=7~%float32 slope_angle 	#爬坡域角度~%NavFieldPoint slope_arrow   #爬坡域箭头位姿~%int32 capacity		#通道容量~%float32 wait_time_out	#停等超时模式下的超时时间~%int32 nav_mode		#导航模式,模糊避让=0,精准避让=1,停等=2,停等超时=3, 狭窄通道=10, 磁条导航=11, 二维码导航=12~%float32 max_speed		#通道最高速度,设为0,则不约束最高速度,非0则以设定的速度为机器人在该通道的最高速度~%int32 direction		#单向道的方向~%float32 radius  #半径~%float32 offset  # 偏移~%NavFieldPoint[] vertex	#域顶点~%NavFieldPoint[] nav_pos	#域中引导点数组,单向道中引导点的存储顺序决定其方向，数组里点的id有效~%NavFieldPoint entry	#单向道入口~%NavFieldPoint extrance	#单向道出口~%~%================================================================================~%MSG: woosh_msgs/NavFieldPoint~%geometry_msgs/Point pt	#Marker position~%uint32 id 		#Marker id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Field)))
  "Returns full string definition for message of type 'Field"
  (cl:format cl:nil "uint32 id		#通道id~%int32 type		#通道类型, 双行道=0,单行道=1,单向道=2,路口=3, 狭窄通道=4,定位域=5,爬坡域=6,Odom域=7~%float32 slope_angle 	#爬坡域角度~%NavFieldPoint slope_arrow   #爬坡域箭头位姿~%int32 capacity		#通道容量~%float32 wait_time_out	#停等超时模式下的超时时间~%int32 nav_mode		#导航模式,模糊避让=0,精准避让=1,停等=2,停等超时=3, 狭窄通道=10, 磁条导航=11, 二维码导航=12~%float32 max_speed		#通道最高速度,设为0,则不约束最高速度,非0则以设定的速度为机器人在该通道的最高速度~%int32 direction		#单向道的方向~%float32 radius  #半径~%float32 offset  # 偏移~%NavFieldPoint[] vertex	#域顶点~%NavFieldPoint[] nav_pos	#域中引导点数组,单向道中引导点的存储顺序决定其方向，数组里点的id有效~%NavFieldPoint entry	#单向道入口~%NavFieldPoint extrance	#单向道出口~%~%================================================================================~%MSG: woosh_msgs/NavFieldPoint~%geometry_msgs/Point pt	#Marker position~%uint32 id 		#Marker id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Field>))
  (cl:+ 0
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'slope_arrow))
     4
     4
     4
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vertex) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'nav_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'entry))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'extrance))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Field>))
  "Converts a ROS message object to a list"
  (cl:list 'Field
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':slope_angle (slope_angle msg))
    (cl:cons ':slope_arrow (slope_arrow msg))
    (cl:cons ':capacity (capacity msg))
    (cl:cons ':wait_time_out (wait_time_out msg))
    (cl:cons ':nav_mode (nav_mode msg))
    (cl:cons ':max_speed (max_speed msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':radius (radius msg))
    (cl:cons ':offset (offset msg))
    (cl:cons ':vertex (vertex msg))
    (cl:cons ':nav_pos (nav_pos msg))
    (cl:cons ':entry (entry msg))
    (cl:cons ':extrance (extrance msg))
))
