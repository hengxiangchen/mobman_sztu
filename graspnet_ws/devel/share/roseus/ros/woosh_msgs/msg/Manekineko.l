;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::Manekineko)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'Manekineko (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::MANEKINEKO")
  (make-package "WOOSH_MSGS::MANEKINEKO"))

(in-package "ROS")
;;//! \htmlinclude Manekineko.msg.html


(defclass woosh_msgs::Manekineko
  :super ros::object
  :slots (_LeftMode _LeftRadian _LeftAngularVelocity _RightMode _RightRadian _RightAngularVelocity ))

(defmethod woosh_msgs::Manekineko
  (:init
   (&key
    ((:LeftMode __LeftMode) 0)
    ((:LeftRadian __LeftRadian) 0.0)
    ((:LeftAngularVelocity __LeftAngularVelocity) 0.0)
    ((:RightMode __RightMode) 0)
    ((:RightRadian __RightRadian) 0.0)
    ((:RightAngularVelocity __RightAngularVelocity) 0.0)
    )
   (send-super :init)
   (setq _LeftMode (round __LeftMode))
   (setq _LeftRadian (float __LeftRadian))
   (setq _LeftAngularVelocity (float __LeftAngularVelocity))
   (setq _RightMode (round __RightMode))
   (setq _RightRadian (float __RightRadian))
   (setq _RightAngularVelocity (float __RightAngularVelocity))
   self)
  (:LeftMode
   (&optional __LeftMode)
   (if __LeftMode (setq _LeftMode __LeftMode)) _LeftMode)
  (:LeftRadian
   (&optional __LeftRadian)
   (if __LeftRadian (setq _LeftRadian __LeftRadian)) _LeftRadian)
  (:LeftAngularVelocity
   (&optional __LeftAngularVelocity)
   (if __LeftAngularVelocity (setq _LeftAngularVelocity __LeftAngularVelocity)) _LeftAngularVelocity)
  (:RightMode
   (&optional __RightMode)
   (if __RightMode (setq _RightMode __RightMode)) _RightMode)
  (:RightRadian
   (&optional __RightRadian)
   (if __RightRadian (setq _RightRadian __RightRadian)) _RightRadian)
  (:RightAngularVelocity
   (&optional __RightAngularVelocity)
   (if __RightAngularVelocity (setq _RightAngularVelocity __RightAngularVelocity)) _RightAngularVelocity)
  (:serialization-length
   ()
   (+
    ;; uint8 _LeftMode
    1
    ;; float32 _LeftRadian
    4
    ;; float32 _LeftAngularVelocity
    4
    ;; uint8 _RightMode
    1
    ;; float32 _RightRadian
    4
    ;; float32 _RightAngularVelocity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _LeftMode
       (write-byte _LeftMode s)
     ;; float32 _LeftRadian
       (sys::poke _LeftRadian (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _LeftAngularVelocity
       (sys::poke _LeftAngularVelocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _RightMode
       (write-byte _RightMode s)
     ;; float32 _RightRadian
       (sys::poke _RightRadian (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _RightAngularVelocity
       (sys::poke _RightAngularVelocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _LeftMode
     (setq _LeftMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _LeftRadian
     (setq _LeftRadian (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _LeftAngularVelocity
     (setq _LeftAngularVelocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _RightMode
     (setq _RightMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _RightRadian
     (setq _RightRadian (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _RightAngularVelocity
     (setq _RightAngularVelocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get woosh_msgs::Manekineko :md5sum-) "e93473ba02e79c4c770856e2b34478bf")
(setf (get woosh_msgs::Manekineko :datatype-) "woosh_msgs/Manekineko")
(setf (get woosh_msgs::Manekineko :definition-)
      "uint8 LeftMode
float32 LeftRadian #unit: rad
float32 LeftAngularVelocity #unit: rad/s
uint8 RightMode
float32 RightRadian #unit: rad
float32 RightAngularVelocity #unit: rad/s

")



(provide :woosh_msgs/Manekineko "e93473ba02e79c4c770856e2b34478bf")


