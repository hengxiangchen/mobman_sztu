;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::WheelConfig)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'WheelConfig (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::WHEELCONFIG")
  (make-package "WOOSH_MSGS::WHEELCONFIG"))

(in-package "ROS")
;;//! \htmlinclude WheelConfig.msg.html


(defclass woosh_msgs::WheelConfig
  :super ros::object
  :slots (_wheelPerimeter _wheelDistant ))

(defmethod woosh_msgs::WheelConfig
  (:init
   (&key
    ((:wheelPerimeter __wheelPerimeter) 0.0)
    ((:wheelDistant __wheelDistant) 0.0)
    )
   (send-super :init)
   (setq _wheelPerimeter (float __wheelPerimeter))
   (setq _wheelDistant (float __wheelDistant))
   self)
  (:wheelPerimeter
   (&optional __wheelPerimeter)
   (if __wheelPerimeter (setq _wheelPerimeter __wheelPerimeter)) _wheelPerimeter)
  (:wheelDistant
   (&optional __wheelDistant)
   (if __wheelDistant (setq _wheelDistant __wheelDistant)) _wheelDistant)
  (:serialization-length
   ()
   (+
    ;; float32 _wheelPerimeter
    4
    ;; float32 _wheelDistant
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _wheelPerimeter
       (sys::poke _wheelPerimeter (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wheelDistant
       (sys::poke _wheelDistant (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _wheelPerimeter
     (setq _wheelPerimeter (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wheelDistant
     (setq _wheelDistant (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get woosh_msgs::WheelConfig :md5sum-) "f53031119c87c0c3b85e13970f5569ba")
(setf (get woosh_msgs::WheelConfig :datatype-) "woosh_msgs/WheelConfig")
(setf (get woosh_msgs::WheelConfig :definition-)
      "float32 wheelPerimeter
float32 wheelDistant

")



(provide :woosh_msgs/WheelConfig "f53031119c87c0c3b85e13970f5569ba")


