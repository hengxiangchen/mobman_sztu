;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::PowerOff)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'PowerOff (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::POWEROFF")
  (make-package "WOOSH_MSGS::POWEROFF"))
(unless (find-package "WOOSH_MSGS::POWEROFFREQUEST")
  (make-package "WOOSH_MSGS::POWEROFFREQUEST"))
(unless (find-package "WOOSH_MSGS::POWEROFFRESPONSE")
  (make-package "WOOSH_MSGS::POWEROFFRESPONSE"))

(in-package "ROS")





(defclass woosh_msgs::PowerOffRequest
  :super ros::object
  :slots ())

(defmethod woosh_msgs::PowerOffRequest
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

(defclass woosh_msgs::PowerOffResponse
  :super ros::object
  :slots ())

(defmethod woosh_msgs::PowerOffResponse
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

(defclass woosh_msgs::PowerOff
  :super ros::object
  :slots ())

(setf (get woosh_msgs::PowerOff :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get woosh_msgs::PowerOff :datatype-) "woosh_msgs/PowerOff")
(setf (get woosh_msgs::PowerOff :request) woosh_msgs::PowerOffRequest)
(setf (get woosh_msgs::PowerOff :response) woosh_msgs::PowerOffResponse)

(defmethod woosh_msgs::PowerOffRequest
  (:response () (instance woosh_msgs::PowerOffResponse :init)))

(setf (get woosh_msgs::PowerOffRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get woosh_msgs::PowerOffRequest :datatype-) "woosh_msgs/PowerOffRequest")
(setf (get woosh_msgs::PowerOffRequest :definition-)
      "---

")

(setf (get woosh_msgs::PowerOffResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get woosh_msgs::PowerOffResponse :datatype-) "woosh_msgs/PowerOffResponse")
(setf (get woosh_msgs::PowerOffResponse :definition-)
      "---

")



(provide :woosh_msgs/PowerOff "d41d8cd98f00b204e9800998ecf8427e")


