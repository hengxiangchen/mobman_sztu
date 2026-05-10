;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::LED)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'LED (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::LED")
  (make-package "WOOSH_MSGS::LED"))

(in-package "ROS")
;;//! \htmlinclude LED.msg.html


(defclass woosh_msgs::LED
  :super ros::object
  :slots (_submodule _urgency _abnormal _normal _color ))

(defmethod woosh_msgs::LED
  (:init
   (&key
    ((:submodule __submodule) 0)
    ((:urgency __urgency) 0)
    ((:abnormal __abnormal) 0)
    ((:normal __normal) 0)
    ((:color __color) 0)
    )
   (send-super :init)
   (setq _submodule (round __submodule))
   (setq _urgency (round __urgency))
   (setq _abnormal (round __abnormal))
   (setq _normal (round __normal))
   (setq _color (round __color))
   self)
  (:submodule
   (&optional __submodule)
   (if __submodule (setq _submodule __submodule)) _submodule)
  (:urgency
   (&optional __urgency)
   (if __urgency (setq _urgency __urgency)) _urgency)
  (:abnormal
   (&optional __abnormal)
   (if __abnormal (setq _abnormal __abnormal)) _abnormal)
  (:normal
   (&optional __normal)
   (if __normal (setq _normal __normal)) _normal)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:serialization-length
   ()
   (+
    ;; uint8 _submodule
    1
    ;; uint8 _urgency
    1
    ;; uint8 _abnormal
    1
    ;; uint8 _normal
    1
    ;; uint32 _color
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _submodule
       (write-byte _submodule s)
     ;; uint8 _urgency
       (write-byte _urgency s)
     ;; uint8 _abnormal
       (write-byte _abnormal s)
     ;; uint8 _normal
       (write-byte _normal s)
     ;; uint32 _color
       (write-long _color s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _submodule
     (setq _submodule (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _urgency
     (setq _urgency (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _abnormal
     (setq _abnormal (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _normal
     (setq _normal (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _color
     (setq _color (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get woosh_msgs::LED :md5sum-) "3751062b64f080928398f47d67ca9edb")
(setf (get woosh_msgs::LED :datatype-) "woosh_msgs/LED")
(setf (get woosh_msgs::LED :definition-)
      "uint8 submodule
uint8 urgency
uint8 abnormal
uint8 normal
uint32 color

")



(provide :woosh_msgs/LED "3751062b64f080928398f47d67ca9edb")


