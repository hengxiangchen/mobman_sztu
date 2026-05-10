; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude ArTrackChargeGoal.msg.html

(cl:defclass <ArTrackChargeGoal> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (id_range
    :reader id_range
    :initarg :id_range
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (marker_to_aimpoint
    :reader marker_to_aimpoint
    :initarg :marker_to_aimpoint
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (aimpoint_to_target
    :reader aimpoint_to_target
    :initarg :aimpoint_to_target
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ArTrackChargeGoal (<ArTrackChargeGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArTrackChargeGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArTrackChargeGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<ArTrackChargeGoal> is deprecated: use woosh_msgs-msg:ArTrackChargeGoal instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ArTrackChargeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:type-val is deprecated.  Use woosh_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'id_range-val :lambda-list '(m))
(cl:defmethod id_range-val ((m <ArTrackChargeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:id_range-val is deprecated.  Use woosh_msgs-msg:id_range instead.")
  (id_range m))

(cl:ensure-generic-function 'marker_to_aimpoint-val :lambda-list '(m))
(cl:defmethod marker_to_aimpoint-val ((m <ArTrackChargeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:marker_to_aimpoint-val is deprecated.  Use woosh_msgs-msg:marker_to_aimpoint instead.")
  (marker_to_aimpoint m))

(cl:ensure-generic-function 'aimpoint_to_target-val :lambda-list '(m))
(cl:defmethod aimpoint_to_target-val ((m <ArTrackChargeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:aimpoint_to_target-val is deprecated.  Use woosh_msgs-msg:aimpoint_to_target instead.")
  (aimpoint_to_target m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ArTrackChargeGoal>)))
    "Constants for message type '<ArTrackChargeGoal>"
  '((:START . 0)
    (:PAUSE . 1)
    (:RESUME . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ArTrackChargeGoal)))
    "Constants for message type 'ArTrackChargeGoal"
  '((:START . 0)
    (:PAUSE . 1)
    (:RESUME . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArTrackChargeGoal>) ostream)
  "Serializes a message object of type '<ArTrackChargeGoal>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'id_range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'id_range))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'marker_to_aimpoint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'marker_to_aimpoint))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'aimpoint_to_target))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'aimpoint_to_target))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArTrackChargeGoal>) istream)
  "Deserializes a message object of type '<ArTrackChargeGoal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'id_range) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'id_range)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'marker_to_aimpoint) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'marker_to_aimpoint)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'aimpoint_to_target) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'aimpoint_to_target)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArTrackChargeGoal>)))
  "Returns string type for a message object of type '<ArTrackChargeGoal>"
  "woosh_msgs/ArTrackChargeGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArTrackChargeGoal)))
  "Returns string type for a message object of type 'ArTrackChargeGoal"
  "woosh_msgs/ArTrackChargeGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArTrackChargeGoal>)))
  "Returns md5sum for a message object of type '<ArTrackChargeGoal>"
  "52d3803323482ae59d738233805961ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArTrackChargeGoal)))
  "Returns md5sum for a message object of type 'ArTrackChargeGoal"
  "52d3803323482ae59d738233805961ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArTrackChargeGoal>)))
  "Returns full string definition for message of type '<ArTrackChargeGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%int32 type~%int32 START = 0~%int32 PAUSE = 1  #暂停~%int32 RESUME = 2  #继续~%int32[] id_range #需要识别的二维码的ID范围~%float32[] marker_to_aimpoint~%float32[] aimpoint_to_target~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArTrackChargeGoal)))
  "Returns full string definition for message of type 'ArTrackChargeGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%int32 type~%int32 START = 0~%int32 PAUSE = 1  #暂停~%int32 RESUME = 2  #继续~%int32[] id_range #需要识别的二维码的ID范围~%float32[] marker_to_aimpoint~%float32[] aimpoint_to_target~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArTrackChargeGoal>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'id_range) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'marker_to_aimpoint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'aimpoint_to_target) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArTrackChargeGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ArTrackChargeGoal
    (cl:cons ':type (type msg))
    (cl:cons ':id_range (id_range msg))
    (cl:cons ':marker_to_aimpoint (marker_to_aimpoint msg))
    (cl:cons ':aimpoint_to_target (aimpoint_to_target msg))
))
