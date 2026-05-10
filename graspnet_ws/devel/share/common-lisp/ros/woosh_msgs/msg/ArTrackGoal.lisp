; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude ArTrackGoal.msg.html

(cl:defclass <ArTrackGoal> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (id_range
    :reader id_range
    :initarg :id_range
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass ArTrackGoal (<ArTrackGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArTrackGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArTrackGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<ArTrackGoal> is deprecated: use woosh_msgs-msg:ArTrackGoal instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ArTrackGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:type-val is deprecated.  Use woosh_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'id_range-val :lambda-list '(m))
(cl:defmethod id_range-val ((m <ArTrackGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:id_range-val is deprecated.  Use woosh_msgs-msg:id_range instead.")
  (id_range m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ArTrackGoal>)))
    "Constants for message type '<ArTrackGoal>"
  '((:START . 0)
    (:PAUSE . 1)
    (:RESUME . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ArTrackGoal)))
    "Constants for message type 'ArTrackGoal"
  '((:START . 0)
    (:PAUSE . 1)
    (:RESUME . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArTrackGoal>) ostream)
  "Serializes a message object of type '<ArTrackGoal>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArTrackGoal>) istream)
  "Deserializes a message object of type '<ArTrackGoal>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArTrackGoal>)))
  "Returns string type for a message object of type '<ArTrackGoal>"
  "woosh_msgs/ArTrackGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArTrackGoal)))
  "Returns string type for a message object of type 'ArTrackGoal"
  "woosh_msgs/ArTrackGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArTrackGoal>)))
  "Returns md5sum for a message object of type '<ArTrackGoal>"
  "b7317ab47cace370bd98a5a2fc8eb4df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArTrackGoal)))
  "Returns md5sum for a message object of type 'ArTrackGoal"
  "b7317ab47cace370bd98a5a2fc8eb4df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArTrackGoal>)))
  "Returns full string definition for message of type '<ArTrackGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%int32 type~%int32 START = 0~%int32 PAUSE = 1  #暂停~%int32 RESUME = 2  #继续~%int32[] id_range #需要识别的二维码的ID范围~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArTrackGoal)))
  "Returns full string definition for message of type 'ArTrackGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%int32 type~%int32 START = 0~%int32 PAUSE = 1  #暂停~%int32 RESUME = 2  #继续~%int32[] id_range #需要识别的二维码的ID范围~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArTrackGoal>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'id_range) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArTrackGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ArTrackGoal
    (cl:cons ':type (type msg))
    (cl:cons ':id_range (id_range msg))
))
