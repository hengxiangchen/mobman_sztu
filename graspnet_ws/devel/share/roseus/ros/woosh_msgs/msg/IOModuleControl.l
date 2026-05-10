;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::IOModuleControl)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'IOModuleControl (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::IOMODULECONTROL")
  (make-package "WOOSH_MSGS::IOMODULECONTROL"))

(in-package "ROS")
;;//! \htmlinclude IOModuleControl.msg.html


(defclass woosh_msgs::IOModuleControl
  :super ros::object
  :slots (_mode _module _submodule _mask ))

(defmethod woosh_msgs::IOModuleControl
  (:init
   (&key
    ((:mode __mode) 0)
    ((:module __module) 0)
    ((:submodule __submodule) 0)
    ((:mask __mask) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _module (round __module))
   (setq _submodule (round __submodule))
   (setq _mask (round __mask))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:module
   (&optional __module)
   (if __module (setq _module __module)) _module)
  (:submodule
   (&optional __submodule)
   (if __submodule (setq _submodule __submodule)) _submodule)
  (:mask
   (&optional __mask)
   (if __mask (setq _mask __mask)) _mask)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ;; uint8 _module
    1
    ;; uint8 _submodule
    1
    ;; uint32 _mask
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _module
       (write-byte _module s)
     ;; uint8 _submodule
       (write-byte _submodule s)
     ;; uint32 _mask
       (write-long _mask s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _module
     (setq _module (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _submodule
     (setq _submodule (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _mask
     (setq _mask (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get woosh_msgs::IOModuleControl :md5sum-) "aca0fa9fb5a15d009a37810bb307efcb")
(setf (get woosh_msgs::IOModuleControl :datatype-) "woosh_msgs/IOModuleControl")
(setf (get woosh_msgs::IOModuleControl :definition-)
      "uint8 mode
uint8 module
uint8 submodule
uint32 mask

")



(provide :woosh_msgs/IOModuleControl "aca0fa9fb5a15d009a37810bb307efcb")


