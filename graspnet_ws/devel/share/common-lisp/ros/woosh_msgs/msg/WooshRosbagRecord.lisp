; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude WooshRosbagRecord.msg.html

(cl:defclass <WooshRosbagRecord> (roslisp-msg-protocol:ros-message)
  ((startOrstop
    :reader startOrstop
    :initarg :startOrstop
    :type cl:boolean
    :initform cl:nil)
   (removeBag
    :reader removeBag
    :initarg :removeBag
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WooshRosbagRecord (<WooshRosbagRecord>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WooshRosbagRecord>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WooshRosbagRecord)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<WooshRosbagRecord> is deprecated: use woosh_msgs-msg:WooshRosbagRecord instead.")))

(cl:ensure-generic-function 'startOrstop-val :lambda-list '(m))
(cl:defmethod startOrstop-val ((m <WooshRosbagRecord>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:startOrstop-val is deprecated.  Use woosh_msgs-msg:startOrstop instead.")
  (startOrstop m))

(cl:ensure-generic-function 'removeBag-val :lambda-list '(m))
(cl:defmethod removeBag-val ((m <WooshRosbagRecord>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:removeBag-val is deprecated.  Use woosh_msgs-msg:removeBag instead.")
  (removeBag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WooshRosbagRecord>) ostream)
  "Serializes a message object of type '<WooshRosbagRecord>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'startOrstop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'removeBag) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WooshRosbagRecord>) istream)
  "Deserializes a message object of type '<WooshRosbagRecord>"
    (cl:setf (cl:slot-value msg 'startOrstop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'removeBag) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WooshRosbagRecord>)))
  "Returns string type for a message object of type '<WooshRosbagRecord>"
  "woosh_msgs/WooshRosbagRecord")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WooshRosbagRecord)))
  "Returns string type for a message object of type 'WooshRosbagRecord"
  "woosh_msgs/WooshRosbagRecord")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WooshRosbagRecord>)))
  "Returns md5sum for a message object of type '<WooshRosbagRecord>"
  "65d3c77019d7f0e27129b759c962321f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WooshRosbagRecord)))
  "Returns md5sum for a message object of type 'WooshRosbagRecord"
  "65d3c77019d7f0e27129b759c962321f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WooshRosbagRecord>)))
  "Returns full string definition for message of type '<WooshRosbagRecord>"
  (cl:format cl:nil "bool startOrstop #true:start  false:stop~%bool removeBag   #true:remove false:keep~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WooshRosbagRecord)))
  "Returns full string definition for message of type 'WooshRosbagRecord"
  (cl:format cl:nil "bool startOrstop #true:start  false:stop~%bool removeBag   #true:remove false:keep~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WooshRosbagRecord>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WooshRosbagRecord>))
  "Converts a ROS message object to a list"
  (cl:list 'WooshRosbagRecord
    (cl:cons ':startOrstop (startOrstop msg))
    (cl:cons ':removeBag (removeBag msg))
))
