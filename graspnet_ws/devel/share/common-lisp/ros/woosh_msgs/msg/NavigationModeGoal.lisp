; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude NavigationModeGoal.msg.html

(cl:defclass <NavigationModeGoal> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (navigation_mode
    :reader navigation_mode
    :initarg :navigation_mode
    :type cl:fixnum
    :initform 0)
   (waiting_timeout
    :reader waiting_timeout
    :initarg :waiting_timeout
    :type cl:float
    :initform 0.0)
   (max_speed
    :reader max_speed
    :initarg :max_speed
    :type cl:float
    :initform 0.0)
   (permitted_passage
    :reader permitted_passage
    :initarg :permitted_passage
    :type cl:boolean
    :initform cl:nil)
   (capacity
    :reader capacity
    :initarg :capacity
    :type cl:integer
    :initform 0)
   (nav_dir
    :reader nav_dir
    :initarg :nav_dir
    :type cl:integer
    :initform 0))
)

(cl:defclass NavigationModeGoal (<NavigationModeGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigationModeGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigationModeGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<NavigationModeGoal> is deprecated: use woosh_msgs-msg:NavigationModeGoal instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <NavigationModeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:id-val is deprecated.  Use woosh_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'navigation_mode-val :lambda-list '(m))
(cl:defmethod navigation_mode-val ((m <NavigationModeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:navigation_mode-val is deprecated.  Use woosh_msgs-msg:navigation_mode instead.")
  (navigation_mode m))

(cl:ensure-generic-function 'waiting_timeout-val :lambda-list '(m))
(cl:defmethod waiting_timeout-val ((m <NavigationModeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:waiting_timeout-val is deprecated.  Use woosh_msgs-msg:waiting_timeout instead.")
  (waiting_timeout m))

(cl:ensure-generic-function 'max_speed-val :lambda-list '(m))
(cl:defmethod max_speed-val ((m <NavigationModeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:max_speed-val is deprecated.  Use woosh_msgs-msg:max_speed instead.")
  (max_speed m))

(cl:ensure-generic-function 'permitted_passage-val :lambda-list '(m))
(cl:defmethod permitted_passage-val ((m <NavigationModeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:permitted_passage-val is deprecated.  Use woosh_msgs-msg:permitted_passage instead.")
  (permitted_passage m))

(cl:ensure-generic-function 'capacity-val :lambda-list '(m))
(cl:defmethod capacity-val ((m <NavigationModeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:capacity-val is deprecated.  Use woosh_msgs-msg:capacity instead.")
  (capacity m))

(cl:ensure-generic-function 'nav_dir-val :lambda-list '(m))
(cl:defmethod nav_dir-val ((m <NavigationModeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:nav_dir-val is deprecated.  Use woosh_msgs-msg:nav_dir instead.")
  (nav_dir m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigationModeGoal>) ostream)
  "Serializes a message object of type '<NavigationModeGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'navigation_mode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'waiting_timeout))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'permitted_passage) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nav_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nav_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nav_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nav_dir)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigationModeGoal>) istream)
  "Deserializes a message object of type '<NavigationModeGoal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'navigation_mode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'waiting_timeout) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'permitted_passage) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nav_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nav_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nav_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nav_dir)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigationModeGoal>)))
  "Returns string type for a message object of type '<NavigationModeGoal>"
  "woosh_msgs/NavigationModeGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationModeGoal)))
  "Returns string type for a message object of type 'NavigationModeGoal"
  "woosh_msgs/NavigationModeGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigationModeGoal>)))
  "Returns md5sum for a message object of type '<NavigationModeGoal>"
  "6b3a848f30a01f4b14655f430e1f898f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigationModeGoal)))
  "Returns md5sum for a message object of type 'NavigationModeGoal"
  "6b3a848f30a01f4b14655f430e1f898f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigationModeGoal>)))
  "Returns full string definition for message of type '<NavigationModeGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint32 id		#通道id~%uint8 navigation_mode  # 导航模式 0： 模糊避让导航 1：精准避让导航 2：停等导航 3：等待避让导航，等待一定时间之后，再执行避让~%float32 waiting_timeout # 导航模式为3时（等待避让），时间必须大于0~%float32 max_speed       #最大的导航速度~%bool permitted_passage  #允许通行，路径变更之后，是否允许通行，如果允许则可以按照新的路径行走，否则不允许沿变更路径行走~%uint32 capacity		#通道车量~%uint32 nav_dir          # 导航方向 0： 默认底层自主决定导航方向，1： 前进导航，2：后退导航, 3: 沿着路经方向走（路经在前面就前进导航，路经在后面就是后退导航）~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigationModeGoal)))
  "Returns full string definition for message of type 'NavigationModeGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint32 id		#通道id~%uint8 navigation_mode  # 导航模式 0： 模糊避让导航 1：精准避让导航 2：停等导航 3：等待避让导航，等待一定时间之后，再执行避让~%float32 waiting_timeout # 导航模式为3时（等待避让），时间必须大于0~%float32 max_speed       #最大的导航速度~%bool permitted_passage  #允许通行，路径变更之后，是否允许通行，如果允许则可以按照新的路径行走，否则不允许沿变更路径行走~%uint32 capacity		#通道车量~%uint32 nav_dir          # 导航方向 0： 默认底层自主决定导航方向，1： 前进导航，2：后退导航, 3: 沿着路经方向走（路经在前面就前进导航，路经在后面就是后退导航）~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigationModeGoal>))
  (cl:+ 0
     4
     1
     4
     4
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigationModeGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigationModeGoal
    (cl:cons ':id (id msg))
    (cl:cons ':navigation_mode (navigation_mode msg))
    (cl:cons ':waiting_timeout (waiting_timeout msg))
    (cl:cons ':max_speed (max_speed msg))
    (cl:cons ':permitted_passage (permitted_passage msg))
    (cl:cons ':capacity (capacity msg))
    (cl:cons ':nav_dir (nav_dir msg))
))
