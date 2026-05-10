;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::Weight)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'Weight (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::WEIGHT")
  (make-package "WOOSH_MSGS::WEIGHT"))

(in-package "ROS")
;;//! \htmlinclude Weight.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass woosh_msgs::Weight
  :super ros::object
  :slots (_header _isOverweighted _weight ))

(defmethod woosh_msgs::Weight
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:isOverweighted __isOverweighted) nil)
    ((:weight __weight) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _isOverweighted __isOverweighted)
   (setq _weight (float __weight))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:isOverweighted
   (&optional (__isOverweighted :null))
   (if (not (eq __isOverweighted :null)) (setq _isOverweighted __isOverweighted)) _isOverweighted)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _isOverweighted
    1
    ;; float32 _weight
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _isOverweighted
       (if _isOverweighted (write-byte -1 s) (write-byte 0 s))
     ;; float32 _weight
       (sys::poke _weight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _isOverweighted
     (setq _isOverweighted (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _weight
     (setq _weight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get woosh_msgs::Weight :md5sum-) "ce9784424004c6edb73b94f6cc433447")
(setf (get woosh_msgs::Weight :datatype-) "woosh_msgs/Weight")
(setf (get woosh_msgs::Weight :definition-)
      "Header header
bool isOverweighted
float32 weight

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :woosh_msgs/Weight "ce9784424004c6edb73b94f6cc433447")


