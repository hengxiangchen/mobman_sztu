; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude Charge.msg.html

(cl:defclass <Charge> (roslisp-msg-protocol:ros-message)
  ((chargeMode
    :reader chargeMode
    :initarg :chargeMode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Charge (<Charge>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Charge>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Charge)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<Charge> is deprecated: use woosh_msgs-msg:Charge instead.")))

(cl:ensure-generic-function 'chargeMode-val :lambda-list '(m))
(cl:defmethod chargeMode-val ((m <Charge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:chargeMode-val is deprecated.  Use woosh_msgs-msg:chargeMode instead.")
  (chargeMode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Charge>)))
    "Constants for message type '<Charge>"
  '((:MANUALMODE . 0)
    (:AUTOMODE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Charge)))
    "Constants for message type 'Charge"
  '((:MANUALMODE . 0)
    (:AUTOMODE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Charge>) ostream)
  "Serializes a message object of type '<Charge>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chargeMode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Charge>) istream)
  "Deserializes a message object of type '<Charge>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chargeMode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Charge>)))
  "Returns string type for a message object of type '<Charge>"
  "woosh_msgs/Charge")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Charge)))
  "Returns string type for a message object of type 'Charge"
  "woosh_msgs/Charge")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Charge>)))
  "Returns md5sum for a message object of type '<Charge>"
  "446f3dbd75e1b0a9087aefb6619cc591")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Charge)))
  "Returns md5sum for a message object of type 'Charge"
  "446f3dbd75e1b0a9087aefb6619cc591")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Charge>)))
  "Returns full string definition for message of type '<Charge>"
  (cl:format cl:nil "uint8 chargeMode~%~%#status~%uint8 manualMode = 0~%uint8 autoMode = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Charge)))
  "Returns full string definition for message of type 'Charge"
  (cl:format cl:nil "uint8 chargeMode~%~%#status~%uint8 manualMode = 0~%uint8 autoMode = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Charge>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Charge>))
  "Converts a ROS message object to a list"
  (cl:list 'Charge
    (cl:cons ':chargeMode (chargeMode msg))
))
