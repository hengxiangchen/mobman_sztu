; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude reflector_errorID_group.msg.html

(cl:defclass <reflector_errorID_group> (roslisp-msg-protocol:ros-message)
  ((reflector_errorIDs
    :reader reflector_errorIDs
    :initarg :reflector_errorIDs
    :type (cl:vector woosh_msgs-msg:reflector_errorID)
   :initform (cl:make-array 0 :element-type 'woosh_msgs-msg:reflector_errorID :initial-element (cl:make-instance 'woosh_msgs-msg:reflector_errorID))))
)

(cl:defclass reflector_errorID_group (<reflector_errorID_group>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <reflector_errorID_group>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'reflector_errorID_group)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<reflector_errorID_group> is deprecated: use woosh_msgs-msg:reflector_errorID_group instead.")))

(cl:ensure-generic-function 'reflector_errorIDs-val :lambda-list '(m))
(cl:defmethod reflector_errorIDs-val ((m <reflector_errorID_group>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:reflector_errorIDs-val is deprecated.  Use woosh_msgs-msg:reflector_errorIDs instead.")
  (reflector_errorIDs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <reflector_errorID_group>) ostream)
  "Serializes a message object of type '<reflector_errorID_group>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reflector_errorIDs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'reflector_errorIDs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <reflector_errorID_group>) istream)
  "Deserializes a message object of type '<reflector_errorID_group>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reflector_errorIDs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reflector_errorIDs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'woosh_msgs-msg:reflector_errorID))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<reflector_errorID_group>)))
  "Returns string type for a message object of type '<reflector_errorID_group>"
  "woosh_msgs/reflector_errorID_group")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'reflector_errorID_group)))
  "Returns string type for a message object of type 'reflector_errorID_group"
  "woosh_msgs/reflector_errorID_group")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<reflector_errorID_group>)))
  "Returns md5sum for a message object of type '<reflector_errorID_group>"
  "6e143066129136a656399632cc78743b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'reflector_errorID_group)))
  "Returns md5sum for a message object of type 'reflector_errorID_group"
  "6e143066129136a656399632cc78743b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<reflector_errorID_group>)))
  "Returns full string definition for message of type '<reflector_errorID_group>"
  (cl:format cl:nil "reflector_errorID[] reflector_errorIDs~%~%================================================================================~%MSG: woosh_msgs/reflector_errorID~%uint32 ID1~%uint32 ID2~%uint32 ID3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'reflector_errorID_group)))
  "Returns full string definition for message of type 'reflector_errorID_group"
  (cl:format cl:nil "reflector_errorID[] reflector_errorIDs~%~%================================================================================~%MSG: woosh_msgs/reflector_errorID~%uint32 ID1~%uint32 ID2~%uint32 ID3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <reflector_errorID_group>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reflector_errorIDs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <reflector_errorID_group>))
  "Converts a ROS message object to a list"
  (cl:list 'reflector_errorID_group
    (cl:cons ':reflector_errorIDs (reflector_errorIDs msg))
))
