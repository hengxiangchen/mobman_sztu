; Auto-generated. Do not edit!


(cl:in-package graspnet_ws-srv)


;//! \htmlinclude ArmMoveGoal-request.msg.html

(cl:defclass <ArmMoveGoal-request> (roslisp-msg-protocol:ros-message)
  ((array1
    :reader array1
    :initarg :array1
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (array2
    :reader array2
    :initarg :array2
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ArmMoveGoal-request (<ArmMoveGoal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmMoveGoal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmMoveGoal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspnet_ws-srv:<ArmMoveGoal-request> is deprecated: use graspnet_ws-srv:ArmMoveGoal-request instead.")))

(cl:ensure-generic-function 'array1-val :lambda-list '(m))
(cl:defmethod array1-val ((m <ArmMoveGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspnet_ws-srv:array1-val is deprecated.  Use graspnet_ws-srv:array1 instead.")
  (array1 m))

(cl:ensure-generic-function 'array2-val :lambda-list '(m))
(cl:defmethod array2-val ((m <ArmMoveGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspnet_ws-srv:array2-val is deprecated.  Use graspnet_ws-srv:array2 instead.")
  (array2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmMoveGoal-request>) ostream)
  "Serializes a message object of type '<ArmMoveGoal-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'array1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'array1))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'array2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'array2))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmMoveGoal-request>) istream)
  "Deserializes a message object of type '<ArmMoveGoal-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'array1) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'array1)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'array2) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'array2)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmMoveGoal-request>)))
  "Returns string type for a service object of type '<ArmMoveGoal-request>"
  "graspnet_ws/ArmMoveGoalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmMoveGoal-request)))
  "Returns string type for a service object of type 'ArmMoveGoal-request"
  "graspnet_ws/ArmMoveGoalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmMoveGoal-request>)))
  "Returns md5sum for a message object of type '<ArmMoveGoal-request>"
  "e703bc5a1f2ac12df2a6a9e2abd0ba96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmMoveGoal-request)))
  "Returns md5sum for a message object of type 'ArmMoveGoal-request"
  "e703bc5a1f2ac12df2a6a9e2abd0ba96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmMoveGoal-request>)))
  "Returns full string definition for message of type '<ArmMoveGoal-request>"
  (cl:format cl:nil "float64[] array1~%float64[] array2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmMoveGoal-request)))
  "Returns full string definition for message of type 'ArmMoveGoal-request"
  (cl:format cl:nil "float64[] array1~%float64[] array2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmMoveGoal-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'array1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'array2) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmMoveGoal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmMoveGoal-request
    (cl:cons ':array1 (array1 msg))
    (cl:cons ':array2 (array2 msg))
))
;//! \htmlinclude ArmMoveGoal-response.msg.html

(cl:defclass <ArmMoveGoal-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass ArmMoveGoal-response (<ArmMoveGoal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmMoveGoal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmMoveGoal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspnet_ws-srv:<ArmMoveGoal-response> is deprecated: use graspnet_ws-srv:ArmMoveGoal-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ArmMoveGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspnet_ws-srv:success-val is deprecated.  Use graspnet_ws-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ArmMoveGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspnet_ws-srv:message-val is deprecated.  Use graspnet_ws-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmMoveGoal-response>) ostream)
  "Serializes a message object of type '<ArmMoveGoal-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmMoveGoal-response>) istream)
  "Deserializes a message object of type '<ArmMoveGoal-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmMoveGoal-response>)))
  "Returns string type for a service object of type '<ArmMoveGoal-response>"
  "graspnet_ws/ArmMoveGoalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmMoveGoal-response)))
  "Returns string type for a service object of type 'ArmMoveGoal-response"
  "graspnet_ws/ArmMoveGoalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmMoveGoal-response>)))
  "Returns md5sum for a message object of type '<ArmMoveGoal-response>"
  "e703bc5a1f2ac12df2a6a9e2abd0ba96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmMoveGoal-response)))
  "Returns md5sum for a message object of type 'ArmMoveGoal-response"
  "e703bc5a1f2ac12df2a6a9e2abd0ba96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmMoveGoal-response>)))
  "Returns full string definition for message of type '<ArmMoveGoal-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmMoveGoal-response)))
  "Returns full string definition for message of type 'ArmMoveGoal-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmMoveGoal-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmMoveGoal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmMoveGoal-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ArmMoveGoal)))
  'ArmMoveGoal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ArmMoveGoal)))
  'ArmMoveGoal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmMoveGoal)))
  "Returns string type for a service object of type '<ArmMoveGoal>"
  "graspnet_ws/ArmMoveGoal")