;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::RollerControlGoal)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'RollerControlGoal (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::ROLLERCONTROLGOAL")
  (make-package "WOOSH_MSGS::ROLLERCONTROLGOAL"))

(in-package "ROS")
;;//! \htmlinclude RollerControlGoal.msg.html


(intern "*CANCEL*" (find-package "WOOSH_MSGS::ROLLERCONTROLGOAL"))
(shadow '*CANCEL* (find-package "WOOSH_MSGS::ROLLERCONTROLGOAL"))
(defconstant woosh_msgs::RollerControlGoal::*CANCEL* 0)
(intern "*EXCUTE*" (find-package "WOOSH_MSGS::ROLLERCONTROLGOAL"))
(shadow '*EXCUTE* (find-package "WOOSH_MSGS::ROLLERCONTROLGOAL"))
(defconstant woosh_msgs::RollerControlGoal::*EXCUTE* 1)
(intern "*PAUSE*" (find-package "WOOSH_MSGS::ROLLERCONTROLGOAL"))
(shadow '*PAUSE* (find-package "WOOSH_MSGS::ROLLERCONTROLGOAL"))
(defconstant woosh_msgs::RollerControlGoal::*PAUSE* 2)
(intern "*RESUM*" (find-package "WOOSH_MSGS::ROLLERCONTROLGOAL"))
(shadow '*RESUM* (find-package "WOOSH_MSGS::ROLLERCONTROLGOAL"))
(defconstant woosh_msgs::RollerControlGoal::*RESUM* 3)
(intern "*FRONT_LOAD*" (find-package "WOOSH_MSGS::ROLLERCONTROLGOAL"))
(shadow '*FRONT_LOAD* (find-package "WOOSH_MSGS::ROLLERCONTROLGOAL"))
(defconstant woosh_msgs::RollerControlGoal::*FRONT_LOAD* 1)
(intern "*FRONT_UNLOAD*" (find-package "WOOSH_MSGS::ROLLERCONTROLGOAL"))
(shadow '*FRONT_UNLOAD* (find-package "WOOSH_MSGS::ROLLERCONTROLGOAL"))
(defconstant woosh_msgs::RollerControlGoal::*FRONT_UNLOAD* 2)
(intern "*BACK_LOAD*" (find-package "WOOSH_MSGS::ROLLERCONTROLGOAL"))
(shadow '*BACK_LOAD* (find-package "WOOSH_MSGS::ROLLERCONTROLGOAL"))
(defconstant woosh_msgs::RollerControlGoal::*BACK_LOAD* 3)
(intern "*BACK_UNLOAD*" (find-package "WOOSH_MSGS::ROLLERCONTROLGOAL"))
(shadow '*BACK_UNLOAD* (find-package "WOOSH_MSGS::ROLLERCONTROLGOAL"))
(defconstant woosh_msgs::RollerControlGoal::*BACK_UNLOAD* 4)
(intern "*NONE*" (find-package "WOOSH_MSGS::ROLLERCONTROLGOAL"))
(shadow '*NONE* (find-package "WOOSH_MSGS::ROLLERCONTROLGOAL"))
(defconstant woosh_msgs::RollerControlGoal::*NONE* 0)
(intern "*CHECK*" (find-package "WOOSH_MSGS::ROLLERCONTROLGOAL"))
(shadow '*CHECK* (find-package "WOOSH_MSGS::ROLLERCONTROLGOAL"))
(defconstant woosh_msgs::RollerControlGoal::*CHECK* 1)
(intern "*PROCESSCTRL*" (find-package "WOOSH_MSGS::ROLLERCONTROLGOAL"))
(shadow '*PROCESSCTRL* (find-package "WOOSH_MSGS::ROLLERCONTROLGOAL"))
(defconstant woosh_msgs::RollerControlGoal::*PROCESSCTRL* 2)

(defun woosh_msgs::RollerControlGoal-to-symbol (const)
  (cond
        ((= const 0) 'woosh_msgs::RollerControlGoal::*CANCEL*)
        ((= const 1) 'woosh_msgs::RollerControlGoal::*EXCUTE*)
        ((= const 2) 'woosh_msgs::RollerControlGoal::*PAUSE*)
        ((= const 3) 'woosh_msgs::RollerControlGoal::*RESUM*)
        ((= const 1) 'woosh_msgs::RollerControlGoal::*FRONT_LOAD*)
        ((= const 2) 'woosh_msgs::RollerControlGoal::*FRONT_UNLOAD*)
        ((= const 3) 'woosh_msgs::RollerControlGoal::*BACK_LOAD*)
        ((= const 4) 'woosh_msgs::RollerControlGoal::*BACK_UNLOAD*)
        ((= const 0) 'woosh_msgs::RollerControlGoal::*NONE*)
        ((= const 1) 'woosh_msgs::RollerControlGoal::*CHECK*)
        ((= const 2) 'woosh_msgs::RollerControlGoal::*PROCESSCTRL*)
        (t nil)))

(defclass woosh_msgs::RollerControlGoal
  :super ros::object
  :slots (_mode _executeMode _connectMode ))

(defmethod woosh_msgs::RollerControlGoal
  (:init
   (&key
    ((:mode __mode) 0)
    ((:executeMode __executeMode) 0)
    ((:connectMode __connectMode) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _executeMode (round __executeMode))
   (setq _connectMode (round __connectMode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:executeMode
   (&optional __executeMode)
   (if __executeMode (setq _executeMode __executeMode)) _executeMode)
  (:connectMode
   (&optional __connectMode)
   (if __connectMode (setq _connectMode __connectMode)) _connectMode)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ;; uint8 _executeMode
    1
    ;; uint8 _connectMode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _executeMode
       (write-byte _executeMode s)
     ;; uint8 _connectMode
       (write-byte _connectMode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _executeMode
     (setq _executeMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _connectMode
     (setq _connectMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get woosh_msgs::RollerControlGoal :md5sum-) "c052de08f3408efa27d6c5e9c0917c63")
(setf (get woosh_msgs::RollerControlGoal :datatype-) "woosh_msgs/RollerControlGoal")
(setf (get woosh_msgs::RollerControlGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
uint8 mode
uint8 executeMode
uint8 connectMode

#mode
uint8 CANCEL = 0
uint8 EXCUTE = 1
uint8 PAUSE = 2
uint8 RESUM = 3

#executeMode
uint8 FRONT_LOAD = 1
uint8 FRONT_UNLOAD = 2
uint8 BACK_LOAD = 3
uint8 BACK_UNLOAD = 4

#connectMode
uint8 NONE = 0
uint8 CHECK = 1
uint8 PROCESSCTRL = 2

")



(provide :woosh_msgs/RollerControlGoal "c052de08f3408efa27d6c5e9c0917c63")


