; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude AutoDock2Result.msg.html

(cl:defclass <AutoDock2Result> (roslisp-msg-protocol:ros-message)
  ((err_msg
    :reader err_msg
    :initarg :err_msg
    :type cl:integer
    :initform 0)
   (result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0)
   (feature_direction
    :reader feature_direction
    :initarg :feature_direction
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AutoDock2Result (<AutoDock2Result>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoDock2Result>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoDock2Result)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<AutoDock2Result> is deprecated: use woosh_msgs-msg:AutoDock2Result instead.")))

(cl:ensure-generic-function 'err_msg-val :lambda-list '(m))
(cl:defmethod err_msg-val ((m <AutoDock2Result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:err_msg-val is deprecated.  Use woosh_msgs-msg:err_msg instead.")
  (err_msg m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <AutoDock2Result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:result-val is deprecated.  Use woosh_msgs-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'feature_direction-val :lambda-list '(m))
(cl:defmethod feature_direction-val ((m <AutoDock2Result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:feature_direction-val is deprecated.  Use woosh_msgs-msg:feature_direction instead.")
  (feature_direction m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AutoDock2Result>)))
    "Constants for message type '<AutoDock2Result>"
  '((:CANCLE . 1)
    (:SUCCESS . 2)
    (:FAILED . 3)
    (:EMPTY . 0)
    (:LEFT . 1)
    (:RIGHT . 2)
    (:FRONT . 3)
    (:BACK . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AutoDock2Result)))
    "Constants for message type 'AutoDock2Result"
  '((:CANCLE . 1)
    (:SUCCESS . 2)
    (:FAILED . 3)
    (:EMPTY . 0)
    (:LEFT . 1)
    (:RIGHT . 2)
    (:FRONT . 3)
    (:BACK . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoDock2Result>) ostream)
  "Serializes a message object of type '<AutoDock2Result>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'err_msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'err_msg)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'feature_direction)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoDock2Result>) istream)
  "Deserializes a message object of type '<AutoDock2Result>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'err_msg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'err_msg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'err_msg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'err_msg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'err_msg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'err_msg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'err_msg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'err_msg)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'feature_direction)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoDock2Result>)))
  "Returns string type for a message object of type '<AutoDock2Result>"
  "woosh_msgs/AutoDock2Result")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoDock2Result)))
  "Returns string type for a message object of type 'AutoDock2Result"
  "woosh_msgs/AutoDock2Result")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoDock2Result>)))
  "Returns md5sum for a message object of type '<AutoDock2Result>"
  "0629474088e26e08f4eb21fd510f593f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoDock2Result)))
  "Returns md5sum for a message object of type 'AutoDock2Result"
  "0629474088e26e08f4eb21fd510f593f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoDock2Result>)))
  "Returns full string definition for message of type '<AutoDock2Result>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint64  err_msg~%~%int8    result~%int8    CANCLE = 1~%int8    SUCCESS = 2~%int8    FAILED = 3~%~%uint8   feature_direction~%uint8   EMPTY = 0~%uint8   LEFT = 1~%uint8   RIGHT = 2~%uint8   FRONT = 3~%uint8   BACK = 4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoDock2Result)))
  "Returns full string definition for message of type 'AutoDock2Result"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint64  err_msg~%~%int8    result~%int8    CANCLE = 1~%int8    SUCCESS = 2~%int8    FAILED = 3~%~%uint8   feature_direction~%uint8   EMPTY = 0~%uint8   LEFT = 1~%uint8   RIGHT = 2~%uint8   FRONT = 3~%uint8   BACK = 4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoDock2Result>))
  (cl:+ 0
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoDock2Result>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoDock2Result
    (cl:cons ':err_msg (err_msg msg))
    (cl:cons ':result (result msg))
    (cl:cons ':feature_direction (feature_direction msg))
))
