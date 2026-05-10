; Auto-generated. Do not edit!


(cl:in-package woosh_msgs-srv)


;//! \htmlinclude getRoadMap-request.msg.html

(cl:defclass <getRoadMap-request> (roslisp-msg-protocol:ros-message)
  ((one_way
    :reader one_way
    :initarg :one_way
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (bidirect
    :reader bidirect
    :initarg :bidirect
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass getRoadMap-request (<getRoadMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getRoadMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getRoadMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<getRoadMap-request> is deprecated: use woosh_msgs-srv:getRoadMap-request instead.")))

(cl:ensure-generic-function 'one_way-val :lambda-list '(m))
(cl:defmethod one_way-val ((m <getRoadMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:one_way-val is deprecated.  Use woosh_msgs-srv:one_way instead.")
  (one_way m))

(cl:ensure-generic-function 'bidirect-val :lambda-list '(m))
(cl:defmethod bidirect-val ((m <getRoadMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader woosh_msgs-srv:bidirect-val is deprecated.  Use woosh_msgs-srv:bidirect instead.")
  (bidirect m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getRoadMap-request>) ostream)
  "Serializes a message object of type '<getRoadMap-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'one_way))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'one_way))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bidirect))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bidirect))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getRoadMap-request>) istream)
  "Deserializes a message object of type '<getRoadMap-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'one_way) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'one_way)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bidirect) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bidirect)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getRoadMap-request>)))
  "Returns string type for a service object of type '<getRoadMap-request>"
  "woosh_msgs/getRoadMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getRoadMap-request)))
  "Returns string type for a service object of type 'getRoadMap-request"
  "woosh_msgs/getRoadMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getRoadMap-request>)))
  "Returns md5sum for a message object of type '<getRoadMap-request>"
  "1910be0d1ef00ac4cb0394dab1854fd2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getRoadMap-request)))
  "Returns md5sum for a message object of type 'getRoadMap-request"
  "1910be0d1ef00ac4cb0394dab1854fd2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getRoadMap-request>)))
  "Returns full string definition for message of type '<getRoadMap-request>"
  (cl:format cl:nil "geometry_msgs/Point[] one_way~%geometry_msgs/Point[] bidirect~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getRoadMap-request)))
  "Returns full string definition for message of type 'getRoadMap-request"
  (cl:format cl:nil "geometry_msgs/Point[] one_way~%geometry_msgs/Point[] bidirect~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getRoadMap-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'one_way) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bidirect) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getRoadMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'getRoadMap-request
    (cl:cons ':one_way (one_way msg))
    (cl:cons ':bidirect (bidirect msg))
))
;//! \htmlinclude getRoadMap-response.msg.html

(cl:defclass <getRoadMap-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass getRoadMap-response (<getRoadMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getRoadMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getRoadMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name woosh_msgs-srv:<getRoadMap-response> is deprecated: use woosh_msgs-srv:getRoadMap-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getRoadMap-response>) ostream)
  "Serializes a message object of type '<getRoadMap-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getRoadMap-response>) istream)
  "Deserializes a message object of type '<getRoadMap-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getRoadMap-response>)))
  "Returns string type for a service object of type '<getRoadMap-response>"
  "woosh_msgs/getRoadMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getRoadMap-response)))
  "Returns string type for a service object of type 'getRoadMap-response"
  "woosh_msgs/getRoadMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getRoadMap-response>)))
  "Returns md5sum for a message object of type '<getRoadMap-response>"
  "1910be0d1ef00ac4cb0394dab1854fd2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getRoadMap-response)))
  "Returns md5sum for a message object of type 'getRoadMap-response"
  "1910be0d1ef00ac4cb0394dab1854fd2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getRoadMap-response>)))
  "Returns full string definition for message of type '<getRoadMap-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getRoadMap-response)))
  "Returns full string definition for message of type 'getRoadMap-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getRoadMap-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getRoadMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'getRoadMap-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'getRoadMap)))
  'getRoadMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'getRoadMap)))
  'getRoadMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getRoadMap)))
  "Returns string type for a service object of type '<getRoadMap>"
  "woosh_msgs/getRoadMap")