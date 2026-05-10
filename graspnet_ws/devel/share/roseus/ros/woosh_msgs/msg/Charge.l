;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::Charge)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'Charge (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::CHARGE")
  (make-package "WOOSH_MSGS::CHARGE"))

(in-package "ROS")
;;//! \htmlinclude Charge.msg.html


(intern "*MANUALMODE*" (find-package "WOOSH_MSGS::CHARGE"))
(shadow '*MANUALMODE* (find-package "WOOSH_MSGS::CHARGE"))
(defconstant woosh_msgs::Charge::*MANUALMODE* 0)
(intern "*AUTOMODE*" (find-package "WOOSH_MSGS::CHARGE"))
(shadow '*AUTOMODE* (find-package "WOOSH_MSGS::CHARGE"))
(defconstant woosh_msgs::Charge::*AUTOMODE* 1)

(defun woosh_msgs::Charge-to-symbol (const)
  (cond
        ((= const 0) 'woosh_msgs::Charge::*manualMode*)
        ((= const 1) 'woosh_msgs::Charge::*autoMode*)
        (t nil)))

(defclass woosh_msgs::Charge
  :super ros::object
  :slots (_chargeMode ))

(defmethod woosh_msgs::Charge
  (:init
   (&key
    ((:chargeMode __chargeMode) 0)
    )
   (send-super :init)
   (setq _chargeMode (round __chargeMode))
   self)
  (:chargeMode
   (&optional __chargeMode)
   (if __chargeMode (setq _chargeMode __chargeMode)) _chargeMode)
  (:serialization-length
   ()
   (+
    ;; uint8 _chargeMode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _chargeMode
       (write-byte _chargeMode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _chargeMode
     (setq _chargeMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get woosh_msgs::Charge :md5sum-) "446f3dbd75e1b0a9087aefb6619cc591")
(setf (get woosh_msgs::Charge :datatype-) "woosh_msgs/Charge")
(setf (get woosh_msgs::Charge :definition-)
      "uint8 chargeMode

#status
uint8 manualMode = 0
uint8 autoMode = 1

")



(provide :woosh_msgs/Charge "446f3dbd75e1b0a9087aefb6619cc591")


