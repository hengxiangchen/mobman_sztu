;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::Follower)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'Follower (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::FOLLOWER")
  (make-package "WOOSH_MSGS::FOLLOWER"))

(in-package "ROS")
;;//! \htmlinclude Follower.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass woosh_msgs::Follower
  :super ros::object
  :slots (_header _seq _rssiFirst _rssiAll _battery _keys _tagID _distance _angle _anchorStatus _quality ))

(defmethod woosh_msgs::Follower
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:seq __seq) 0)
    ((:rssiFirst __rssiFirst) 0)
    ((:rssiAll __rssiAll) 0)
    ((:battery __battery) 0)
    ((:keys __keys) 0)
    ((:tagID __tagID) 0)
    ((:distance __distance) 0.0)
    ((:angle __angle) 0.0)
    ((:anchorStatus __anchorStatus) 0)
    ((:quality __quality) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _seq (round __seq))
   (setq _rssiFirst (round __rssiFirst))
   (setq _rssiAll (round __rssiAll))
   (setq _battery (round __battery))
   (setq _keys (round __keys))
   (setq _tagID (round __tagID))
   (setq _distance (float __distance))
   (setq _angle (float __angle))
   (setq _anchorStatus (round __anchorStatus))
   (setq _quality (round __quality))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:rssiFirst
   (&optional __rssiFirst)
   (if __rssiFirst (setq _rssiFirst __rssiFirst)) _rssiFirst)
  (:rssiAll
   (&optional __rssiAll)
   (if __rssiAll (setq _rssiAll __rssiAll)) _rssiAll)
  (:battery
   (&optional __battery)
   (if __battery (setq _battery __battery)) _battery)
  (:keys
   (&optional __keys)
   (if __keys (setq _keys __keys)) _keys)
  (:tagID
   (&optional __tagID)
   (if __tagID (setq _tagID __tagID)) _tagID)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:anchorStatus
   (&optional __anchorStatus)
   (if __anchorStatus (setq _anchorStatus __anchorStatus)) _anchorStatus)
  (:quality
   (&optional __quality)
   (if __quality (setq _quality __quality)) _quality)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _seq
    1
    ;; int8 _rssiFirst
    1
    ;; int8 _rssiAll
    1
    ;; uint8 _battery
    1
    ;; uint8 _keys
    1
    ;; uint16 _tagID
    2
    ;; float32 _distance
    4
    ;; float32 _angle
    4
    ;; uint8 _anchorStatus
    1
    ;; uint8 _quality
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _seq
       (write-byte _seq s)
     ;; int8 _rssiFirst
       (write-byte _rssiFirst s)
     ;; int8 _rssiAll
       (write-byte _rssiAll s)
     ;; uint8 _battery
       (write-byte _battery s)
     ;; uint8 _keys
       (write-byte _keys s)
     ;; uint16 _tagID
       (write-word _tagID s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _anchorStatus
       (write-byte _anchorStatus s)
     ;; uint8 _quality
       (write-byte _quality s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _seq
     (setq _seq (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8 _rssiFirst
     (setq _rssiFirst (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _rssiFirst 127) (setq _rssiFirst (- _rssiFirst 256)))
   ;; int8 _rssiAll
     (setq _rssiAll (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _rssiAll 127) (setq _rssiAll (- _rssiAll 256)))
   ;; uint8 _battery
     (setq _battery (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _keys
     (setq _keys (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _tagID
     (setq _tagID (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _anchorStatus
     (setq _anchorStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _quality
     (setq _quality (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get woosh_msgs::Follower :md5sum-) "3d72f0a2a91edeee0e92612da6dfeafa")
(setf (get woosh_msgs::Follower :datatype-) "woosh_msgs/Follower")
(setf (get woosh_msgs::Follower :definition-)
      "Header header
uint8 seq
int8 rssiFirst
int8 rssiAll
uint8 battery
uint8 keys
uint16 tagID
float32 distance
float32 angle
uint8 anchorStatus
uint8 quality

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



(provide :woosh_msgs/Follower "3d72f0a2a91edeee0e92612da6dfeafa")


