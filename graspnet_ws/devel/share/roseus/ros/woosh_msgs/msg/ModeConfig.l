;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::ModeConfig)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'ModeConfig (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::MODECONFIG")
  (make-package "WOOSH_MSGS::MODECONFIG"))

(in-package "ROS")
;;//! \htmlinclude ModeConfig.msg.html


(defclass woosh_msgs::ModeConfig
  :super ros::object
  :slots (_mode _status ))

(defmethod woosh_msgs::ModeConfig
  (:init
   (&key
    ((:mode __mode) 0)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _status (round __status))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get woosh_msgs::ModeConfig :md5sum-) "31202a93cf12686e4f3edec877644512")
(setf (get woosh_msgs::ModeConfig :datatype-) "woosh_msgs/ModeConfig")
(setf (get woosh_msgs::ModeConfig :definition-)
      "uint8 mode
uint8 status

")



(provide :woosh_msgs/ModeConfig "31202a93cf12686e4f3edec877644512")


