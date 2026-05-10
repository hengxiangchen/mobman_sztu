; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-srv)


;//! \htmlinclude ArTrackLocate-request.msg.html

(cl:defclass <ArTrackLocate-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ArTrackLocate-request (<ArTrackLocate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArTrackLocate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArTrackLocate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<ArTrackLocate-request> is deprecated: use woosh_msgs-srv:ArTrackLocate-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ArTrackLocate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:type-val is deprecated.  Use woosh_msgs-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArTrackLocate-request>) ostream)
  "Serializes a message object of type '<ArTrackLocate-request>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArTrackLocate-request>) istream)
  "Deserializes a message object of type '<ArTrackLocate-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArTrackLocate-request>)))
  "Returns string type for a service object of type '<ArTrackLocate-request>"
  "woosh_msgs/ArTrackLocateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArTrackLocate-request)))
  "Returns string type for a service object of type 'ArTrackLocate-request"
  "woosh_msgs/ArTrackLocateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArTrackLocate-request>)))
  "Returns md5sum for a message object of type '<ArTrackLocate-request>"
  "96c3b80438255363fd436571a1a57861")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArTrackLocate-request)))
  "Returns md5sum for a message object of type 'ArTrackLocate-request"
  "96c3b80438255363fd436571a1a57861")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArTrackLocate-request>)))
  "Returns full string definition for message of type '<ArTrackLocate-request>"
  (cl:format cl:nil "int8 type   #0:start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArTrackLocate-request)))
  "Returns full string definition for message of type 'ArTrackLocate-request"
  (cl:format cl:nil "int8 type   #0:start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArTrackLocate-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArTrackLocate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ArTrackLocate-request
    (cl:cons ':type (type msg))
))
;//! \htmlinclude ArTrackLocate-response.msg.html

(cl:defclass <ArTrackLocate-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (ar_tag_pose
    :reader ar_tag_pose
    :initarg :ar_tag_pose
    :type woosh_msgs-msg:ArTagPose
    :initform (cl:make-instance 'woosh_msgs-msg:ArTagPose)))
)

(cl:defclass ArTrackLocate-response (<ArTrackLocate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArTrackLocate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArTrackLocate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<ArTrackLocate-response> is deprecated: use woosh_msgs-srv:ArTrackLocate-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ArTrackLocate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:success-val is deprecated.  Use woosh_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ArTrackLocate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:message-val is deprecated.  Use woosh_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'ar_tag_pose-val :lambda-list '(m))
(cl:defmethod ar_tag_pose-val ((m <ArTrackLocate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:ar_tag_pose-val is deprecated.  Use woosh_msgs-srv:ar_tag_pose instead.")
  (ar_tag_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArTrackLocate-response>) ostream)
  "Serializes a message object of type '<ArTrackLocate-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ar_tag_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArTrackLocate-response>) istream)
  "Deserializes a message object of type '<ArTrackLocate-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ar_tag_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArTrackLocate-response>)))
  "Returns string type for a service object of type '<ArTrackLocate-response>"
  "woosh_msgs/ArTrackLocateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArTrackLocate-response)))
  "Returns string type for a service object of type 'ArTrackLocate-response"
  "woosh_msgs/ArTrackLocateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArTrackLocate-response>)))
  "Returns md5sum for a message object of type '<ArTrackLocate-response>"
  "96c3b80438255363fd436571a1a57861")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArTrackLocate-response)))
  "Returns md5sum for a message object of type 'ArTrackLocate-response"
  "96c3b80438255363fd436571a1a57861")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArTrackLocate-response>)))
  "Returns full string definition for message of type '<ArTrackLocate-response>"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%ArTagPose ar_tag_pose~%~%~%================================================================================~%MSG: woosh_msgs/ArTagPose~%geometry_msgs/Point distination~%geometry_msgs/Pose tag_pose~%int32 tag_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArTrackLocate-response)))
  "Returns full string definition for message of type 'ArTrackLocate-response"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%ArTagPose ar_tag_pose~%~%~%================================================================================~%MSG: woosh_msgs/ArTagPose~%geometry_msgs/Point distination~%geometry_msgs/Pose tag_pose~%int32 tag_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArTrackLocate-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ar_tag_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArTrackLocate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ArTrackLocate-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':ar_tag_pose (ar_tag_pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ArTrackLocate)))
  'ArTrackLocate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ArTrackLocate)))
  'ArTrackLocate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArTrackLocate)))
  "Returns string type for a service object of type '<ArTrackLocate>"
  "woosh_msgs/ArTrackLocate")