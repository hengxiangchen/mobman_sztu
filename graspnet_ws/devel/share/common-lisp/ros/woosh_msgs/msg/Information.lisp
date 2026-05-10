; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-msg)


;//! \htmlinclude Information.msg.html

(cl:defclass <Information> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (hardwareVersion
    :reader hardwareVersion
    :initarg :hardwareVersion
    :type cl:string
    :initform "")
   (softwareVersion
    :reader softwareVersion
    :initarg :softwareVersion
    :type cl:string
    :initform "")
   (IAPSoftwareVersion
    :reader IAPSoftwareVersion
    :initarg :IAPSoftwareVersion
    :type cl:string
    :initform "")
   (movebaseType
    :reader movebaseType
    :initarg :movebaseType
    :type cl:string
    :initform "")
   (parameter
    :reader parameter
    :initarg :parameter
    :type woosh_msgs-msg:Parameter
    :initform (cl:make-instance 'woosh_msgs-msg:Parameter)))
)

(cl:defclass Information (<Information>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Information>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Information)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-msg:<Information> is deprecated: use woosh_msgs-msg:Information instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Information>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:header-val is deprecated.  Use woosh_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'hardwareVersion-val :lambda-list '(m))
(cl:defmethod hardwareVersion-val ((m <Information>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:hardwareVersion-val is deprecated.  Use woosh_msgs-msg:hardwareVersion instead.")
  (hardwareVersion m))

(cl:ensure-generic-function 'softwareVersion-val :lambda-list '(m))
(cl:defmethod softwareVersion-val ((m <Information>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:softwareVersion-val is deprecated.  Use woosh_msgs-msg:softwareVersion instead.")
  (softwareVersion m))

(cl:ensure-generic-function 'IAPSoftwareVersion-val :lambda-list '(m))
(cl:defmethod IAPSoftwareVersion-val ((m <Information>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:IAPSoftwareVersion-val is deprecated.  Use woosh_msgs-msg:IAPSoftwareVersion instead.")
  (IAPSoftwareVersion m))

(cl:ensure-generic-function 'movebaseType-val :lambda-list '(m))
(cl:defmethod movebaseType-val ((m <Information>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:movebaseType-val is deprecated.  Use woosh_msgs-msg:movebaseType instead.")
  (movebaseType m))

(cl:ensure-generic-function 'parameter-val :lambda-list '(m))
(cl:defmethod parameter-val ((m <Information>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-msg:parameter-val is deprecated.  Use woosh_msgs-msg:parameter instead.")
  (parameter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Information>) ostream)
  "Serializes a message object of type '<Information>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'hardwareVersion))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'hardwareVersion))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'softwareVersion))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'softwareVersion))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'IAPSoftwareVersion))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'IAPSoftwareVersion))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'movebaseType))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'movebaseType))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parameter) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Information>) istream)
  "Deserializes a message object of type '<Information>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hardwareVersion) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'hardwareVersion) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'softwareVersion) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'softwareVersion) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'IAPSoftwareVersion) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'IAPSoftwareVersion) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'movebaseType) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'movebaseType) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parameter) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Information>)))
  "Returns string type for a message object of type '<Information>"
  "woosh_msgs/Information")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Information)))
  "Returns string type for a message object of type 'Information"
  "woosh_msgs/Information")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Information>)))
  "Returns md5sum for a message object of type '<Information>"
  "0f0fb1764f6f87e8178f98663f3ce6a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Information)))
  "Returns md5sum for a message object of type 'Information"
  "0f0fb1764f6f87e8178f98663f3ce6a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Information>)))
  "Returns full string definition for message of type '<Information>"
  (cl:format cl:nil "Header header~%string hardwareVersion~%string softwareVersion~%string IAPSoftwareVersion~%string movebaseType~%Parameter parameter~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: woosh_msgs/Parameter~%Header header~%float32 wheelPerimeter~%float32 wheelDistant~%float32 ratioLeft~%float32 ratioRight~%uint32 pulsePerCircle~%float32 maxRPM~%float32 minSpeed~%float32 maxLinear~%float32 maxAngular~%float32 joystickMaxLinear~%float32 joystickMaxAngular~%float32 maxSpeed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Information)))
  "Returns full string definition for message of type 'Information"
  (cl:format cl:nil "Header header~%string hardwareVersion~%string softwareVersion~%string IAPSoftwareVersion~%string movebaseType~%Parameter parameter~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: woosh_msgs/Parameter~%Header header~%float32 wheelPerimeter~%float32 wheelDistant~%float32 ratioLeft~%float32 ratioRight~%uint32 pulsePerCircle~%float32 maxRPM~%float32 minSpeed~%float32 maxLinear~%float32 maxAngular~%float32 joystickMaxLinear~%float32 joystickMaxAngular~%float32 maxSpeed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Information>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'hardwareVersion))
     4 (cl:length (cl:slot-value msg 'softwareVersion))
     4 (cl:length (cl:slot-value msg 'IAPSoftwareVersion))
     4 (cl:length (cl:slot-value msg 'movebaseType))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parameter))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Information>))
  "Converts a ROS message object to a list"
  (cl:list 'Information
    (cl:cons ':header (header msg))
    (cl:cons ':hardwareVersion (hardwareVersion msg))
    (cl:cons ':softwareVersion (softwareVersion msg))
    (cl:cons ':IAPSoftwareVersion (IAPSoftwareVersion msg))
    (cl:cons ':movebaseType (movebaseType msg))
    (cl:cons ':parameter (parameter msg))
))
