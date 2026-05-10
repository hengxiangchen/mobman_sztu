; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude ArTrackResult.msg.html

(cl:defclass <ArTrackResult> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (tag_number
    :reader tag_number
    :initarg :tag_number
    :type cl:integer
    :initform 0)
   (ArTagPose
    :reader ArTagPose
    :initarg :ArTagPose
    :type (cl:vector woosh_msgs-msg:ArTagPose)
   :initform (cl:make-array 0 :element-type 'woosh_msgs-msg:ArTagPose :initial-element (cl:make-instance 'woosh_msgs-msg:ArTagPose)))
   (statusCode
    :reader statusCode
    :initarg :statusCode
    :type cl:integer
    :initform 0))
)

(cl:defclass ArTrackResult (<ArTrackResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArTrackResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArTrackResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<ArTrackResult> is deprecated: use woosh_msgs-msg:ArTrackResult instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ArTrackResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:result-val is deprecated.  Use woosh_msgs-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'tag_number-val :lambda-list '(m))
(cl:defmethod tag_number-val ((m <ArTrackResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:tag_number-val is deprecated.  Use woosh_msgs-msg:tag_number instead.")
  (tag_number m))

(cl:ensure-generic-function 'ArTagPose-val :lambda-list '(m))
(cl:defmethod ArTagPose-val ((m <ArTrackResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:ArTagPose-val is deprecated.  Use woosh_msgs-msg:ArTagPose instead.")
  (ArTagPose m))

(cl:ensure-generic-function 'statusCode-val :lambda-list '(m))
(cl:defmethod statusCode-val ((m <ArTrackResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:statusCode-val is deprecated.  Use woosh_msgs-msg:statusCode instead.")
  (statusCode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ArTrackResult>)))
    "Constants for message type '<ArTrackResult>"
  '((:SUCCESS . 0)
    (:FAIL . 1)
    (:CANCEL . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ArTrackResult)))
    "Constants for message type 'ArTrackResult"
  '((:SUCCESS . 0)
    (:FAIL . 1)
    (:CANCEL . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArTrackResult>) ostream)
  "Serializes a message object of type '<ArTrackResult>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'tag_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ArTagPose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ArTagPose))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'statusCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'statusCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'statusCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'statusCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'statusCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'statusCode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArTrackResult>) istream)
  "Deserializes a message object of type '<ArTrackResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tag_number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ArTagPose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ArTagPose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'woosh_msgs-msg:ArTagPose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArTrackResult>)))
  "Returns string type for a message object of type '<ArTrackResult>"
  "woosh_msgs/ArTrackResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArTrackResult)))
  "Returns string type for a message object of type 'ArTrackResult"
  "woosh_msgs/ArTrackResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArTrackResult>)))
  "Returns md5sum for a message object of type '<ArTrackResult>"
  "8a00c2c504b30b330655ba9e3b095785")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArTrackResult)))
  "Returns md5sum for a message object of type 'ArTrackResult"
  "8a00c2c504b30b330655ba9e3b095785")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArTrackResult>)))
  "Returns full string definition for message of type '<ArTrackResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%int32 result~%int32 SUCCESS = 0 #成功~%int32 FAIL = 1  #失败~%int32 CANCEL = 2 #取消~%~%int32 tag_number #识别到二维码的数量~%woosh_msgs/ArTagPose[] ArTagPose #二维码的ID和相对于base_footprint的位姿，以及导航点的x,y,θ~%uint64 statusCode #状态码~%~%================================================================================~%MSG: woosh_msgs/ArTagPose~%geometry_msgs/Point distination~%geometry_msgs/Pose tag_pose~%int32 tag_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArTrackResult)))
  "Returns full string definition for message of type 'ArTrackResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%int32 result~%int32 SUCCESS = 0 #成功~%int32 FAIL = 1  #失败~%int32 CANCEL = 2 #取消~%~%int32 tag_number #识别到二维码的数量~%woosh_msgs/ArTagPose[] ArTagPose #二维码的ID和相对于base_footprint的位姿，以及导航点的x,y,θ~%uint64 statusCode #状态码~%~%================================================================================~%MSG: woosh_msgs/ArTagPose~%geometry_msgs/Point distination~%geometry_msgs/Pose tag_pose~%int32 tag_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArTrackResult>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ArTagPose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArTrackResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ArTrackResult
    (cl:cons ':result (result msg))
    (cl:cons ':tag_number (tag_number msg))
    (cl:cons ':ArTagPose (ArTagPose msg))
    (cl:cons ':statusCode (statusCode msg))
))
