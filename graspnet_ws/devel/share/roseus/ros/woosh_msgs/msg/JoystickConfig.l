;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::JoystickConfig)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'JoystickConfig (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::JOYSTICKCONFIG")
  (make-package "WOOSH_MSGS::JOYSTICKCONFIG"))

(in-package "ROS")
;;//! \htmlinclude JoystickConfig.msg.html


(defclass woosh_msgs::JoystickConfig
  :super ros::object
  :slots (_maxLinear _maxAngular ))

(defmethod woosh_msgs::JoystickConfig
  (:init
   (&key
    ((:maxLinear __maxLinear) 0.0)
    ((:maxAngular __maxAngular) 0.0)
    )
   (send-super :init)
   (setq _maxLinear (float __maxLinear))
   (setq _maxAngular (float __maxAngular))
   self)
  (:maxLinear
   (&optional __maxLinear)
   (if __maxLinear (setq _maxLinear __maxLinear)) _maxLinear)
  (:maxAngular
   (&optional __maxAngular)
   (if __maxAngular (setq _maxAngular __maxAngular)) _maxAngular)
  (:serialization-length
   ()
   (+
    ;; float32 _maxLinear
    4
    ;; float32 _maxAngular
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _maxLinear
       (sys::poke _maxLinear (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _maxAngular
       (sys::poke _maxAngular (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _maxLinear
     (setq _maxLinear (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _maxAngular
     (setq _maxAngular (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get woosh_msgs::JoystickConfig :md5sum-) "7b4bec2a79f3f32272b58c3fa7b2518a")
(setf (get woosh_msgs::JoystickConfig :datatype-) "woosh_msgs/JoystickConfig")
(setf (get woosh_msgs::JoystickConfig :definition-)
      "float32 maxLinear
float32 maxAngular

")



(provide :woosh_msgs/JoystickConfig "7b4bec2a79f3f32272b58c3fa7b2518a")


