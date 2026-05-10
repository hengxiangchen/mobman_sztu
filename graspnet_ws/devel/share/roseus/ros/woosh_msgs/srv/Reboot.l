;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::Reboot)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'Reboot (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::REBOOT")
  (make-package "WOOSH_MSGS::REBOOT"))
(unless (find-package "WOOSH_MSGS::REBOOTREQUEST")
  (make-package "WOOSH_MSGS::REBOOTREQUEST"))
(unless (find-package "WOOSH_MSGS::REBOOTRESPONSE")
  (make-package "WOOSH_MSGS::REBOOTRESPONSE"))

(in-package "ROS")





(defclass woosh_msgs::RebootRequest
  :super ros::object
  :slots ())

(defmethod woosh_msgs::RebootRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass woosh_msgs::RebootResponse
  :super ros::object
  :slots ())

(defmethod woosh_msgs::RebootResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass woosh_msgs::Reboot
  :super ros::object
  :slots ())

(setf (get woosh_msgs::Reboot :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get woosh_msgs::Reboot :datatype-) "woosh_msgs/Reboot")
(setf (get woosh_msgs::Reboot :request) woosh_msgs::RebootRequest)
(setf (get woosh_msgs::Reboot :response) woosh_msgs::RebootResponse)

(defmethod woosh_msgs::RebootRequest
  (:response () (instance woosh_msgs::RebootResponse :init)))

(setf (get woosh_msgs::RebootRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get woosh_msgs::RebootRequest :datatype-) "woosh_msgs/RebootRequest")
(setf (get woosh_msgs::RebootRequest :definition-)
      "---

")

(setf (get woosh_msgs::RebootResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get woosh_msgs::RebootResponse :datatype-) "woosh_msgs/RebootResponse")
(setf (get woosh_msgs::RebootResponse :definition-)
      "---

")



(provide :woosh_msgs/Reboot "d41d8cd98f00b204e9800998ecf8427e")


