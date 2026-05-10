; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude PeripheralConfig.msg.html

(cl:defclass <PeripheralConfig> (roslisp-msg-protocol:ros-message)
  ((deviceType
    :reader deviceType
    :initarg :deviceType
    :type cl:fixnum
    :initform 0)
   (deviceNum
    :reader deviceNum
    :initarg :deviceNum
    :type cl:fixnum
    :initform 0)
   (setNum
    :reader setNum
    :initarg :setNum
    :type cl:fixnum
    :initform 0)
   (config
    :reader config
    :initarg :config
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass PeripheralConfig (<PeripheralConfig>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PeripheralConfig>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PeripheralConfig)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<PeripheralConfig> is deprecated: use woosh_msgs-msg:PeripheralConfig instead.")))

(cl:ensure-generic-function 'deviceType-val :lambda-list '(m))
(cl:defmethod deviceType-val ((m <PeripheralConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:deviceType-val is deprecated.  Use woosh_msgs-msg:deviceType instead.")
  (deviceType m))

(cl:ensure-generic-function 'deviceNum-val :lambda-list '(m))
(cl:defmethod deviceNum-val ((m <PeripheralConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:deviceNum-val is deprecated.  Use woosh_msgs-msg:deviceNum instead.")
  (deviceNum m))

(cl:ensure-generic-function 'setNum-val :lambda-list '(m))
(cl:defmethod setNum-val ((m <PeripheralConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:setNum-val is deprecated.  Use woosh_msgs-msg:setNum instead.")
  (setNum m))

(cl:ensure-generic-function 'config-val :lambda-list '(m))
(cl:defmethod config-val ((m <PeripheralConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:config-val is deprecated.  Use woosh_msgs-msg:config instead.")
  (config m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PeripheralConfig>) ostream)
  "Serializes a message object of type '<PeripheralConfig>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'deviceType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'deviceNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'deviceNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'setNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'setNum)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'config))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'config))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PeripheralConfig>) istream)
  "Deserializes a message object of type '<PeripheralConfig>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'deviceType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'deviceNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'deviceNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'setNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'setNum)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'config) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'config)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PeripheralConfig>)))
  "Returns string type for a message object of type '<PeripheralConfig>"
  "woosh_msgs/PeripheralConfig")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PeripheralConfig)))
  "Returns string type for a message object of type 'PeripheralConfig"
  "woosh_msgs/PeripheralConfig")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PeripheralConfig>)))
  "Returns md5sum for a message object of type '<PeripheralConfig>"
  "30e9701f5cb23ca374d0e89621584272")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PeripheralConfig)))
  "Returns md5sum for a message object of type 'PeripheralConfig"
  "30e9701f5cb23ca374d0e89621584272")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PeripheralConfig>)))
  "Returns full string definition for message of type '<PeripheralConfig>"
  (cl:format cl:nil "uint8 deviceType~%uint16 deviceNum~%uint16 setNum~%uint8[] config~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PeripheralConfig)))
  "Returns full string definition for message of type 'PeripheralConfig"
  (cl:format cl:nil "uint8 deviceType~%uint16 deviceNum~%uint16 setNum~%uint8[] config~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PeripheralConfig>))
  (cl:+ 0
     1
     2
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'config) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PeripheralConfig>))
  "Converts a ROS message object to a list"
  (cl:list 'PeripheralConfig
    (cl:cons ':deviceType (deviceType msg))
    (cl:cons ':deviceNum (deviceNum msg))
    (cl:cons ':setNum (setNum msg))
    (cl:cons ':config (config msg))
))
