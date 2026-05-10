;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::StepControl)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'StepControl (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::STEPCONTROL")
  (make-package "WOOSH_MSGS::STEPCONTROL"))

(in-package "ROS")
;;//! \htmlinclude StepControl.msg.html


(defclass woosh_msgs::StepControl
  :super ros::object
  :slots (_executeMode _data _speed _angle ))

(defmethod woosh_msgs::StepControl
  (:init
   (&key
    ((:executeMode __executeMode) 0)
    ((:data __data) 0.0)
    ((:speed __speed) 0.0)
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _executeMode (round __executeMode))
   (setq _data (float __data))
   (setq _speed (float __speed))
   (setq _angle (float __angle))
   self)
  (:executeMode
   (&optional __executeMode)
   (if __executeMode (setq _executeMode __executeMode)) _executeMode)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; uint8 _executeMode
    1
    ;; float32 _data
    4
    ;; float32 _speed
    4
    ;; float32 _angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _executeMode
       (write-byte _executeMode s)
     ;; float32 _data
       (sys::poke _data (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _executeMode
     (setq _executeMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _data
     (setq _data (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get woosh_msgs::StepControl :md5sum-) "34371121edf84e6fad9159e3118fc977")
(setf (get woosh_msgs::StepControl :datatype-) "woosh_msgs/StepControl")
(setf (get woosh_msgs::StepControl :definition-)
      "uint8 executeMode #1 表示X方向运动，2 表示旋转，3表示y方向运动，4表示斜向运动
float32 data      #运动的距离或者旋转角度
float32 speed     #运动的速度
float32 angle     # 斜向运动的角度

")



(provide :woosh_msgs/StepControl "34371121edf84e6fad9159e3118fc977")


