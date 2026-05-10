;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::NavMode)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'NavMode (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::NAVMODE")
  (make-package "WOOSH_MSGS::NAVMODE"))

(in-package "ROS")
;;//! \htmlinclude NavMode.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass woosh_msgs::NavMode
  :super ros::object
  :slots (_id _type _triggered_mode _in _out ))

(defmethod woosh_msgs::NavMode
  (:init
   (&key
    ((:id __id) 0)
    ((:type __type) 0)
    ((:triggered_mode __triggered_mode) 0)
    ((:in __in) (instance geometry_msgs::Point :init))
    ((:out __out) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _type (round __type))
   (setq _triggered_mode (round __triggered_mode))
   (setq _in __in)
   (setq _out __out)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:triggered_mode
   (&optional __triggered_mode)
   (if __triggered_mode (setq _triggered_mode __triggered_mode)) _triggered_mode)
  (:in
   (&rest __in)
   (if (keywordp (car __in))
       (send* _in __in)
     (progn
       (if __in (setq _in (car __in)))
       _in)))
  (:out
   (&rest __out)
   (if (keywordp (car __out))
       (send* _out __out)
     (progn
       (if __out (setq _out (car __out)))
       _out)))
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; int32 _type
    4
    ;; int8 _triggered_mode
    1
    ;; geometry_msgs/Point _in
    (send _in :serialization-length)
    ;; geometry_msgs/Point _out
    (send _out :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; int32 _type
       (write-long _type s)
     ;; int8 _triggered_mode
       (write-byte _triggered_mode s)
     ;; geometry_msgs/Point _in
       (send _in :serialize s)
     ;; geometry_msgs/Point _out
       (send _out :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _triggered_mode
     (setq _triggered_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _triggered_mode 127) (setq _triggered_mode (- _triggered_mode 256)))
   ;; geometry_msgs/Point _in
     (send _in :deserialize buf ptr-) (incf ptr- (send _in :serialization-length))
   ;; geometry_msgs/Point _out
     (send _out :deserialize buf ptr-) (incf ptr- (send _out :serialization-length))
   ;;
   self)
  )

(setf (get woosh_msgs::NavMode :md5sum-) "7cd910cf133377ea47a83949c11e5636")
(setf (get woosh_msgs::NavMode :datatype-) "woosh_msgs/NavMode")
(setf (get woosh_msgs::NavMode :definition-)
      "uint32 id                #通道id
int32 type               #通道类型, 双行道=0,单行道=1,单向道=2,路口=3, 狭窄通道=4,定位域=5,爬坡域=6,Odom域=7,自动门域=8,限速域=9
int8 triggered_mode      #触发模式  ，  进方域：0  ，  出方域：1    进圆域：2    出圆域：3
geometry_msgs/Point in   #通道入点
geometry_msgs/Point out  #通道出点
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :woosh_msgs/NavMode "7cd910cf133377ea47a83949c11e5636")


