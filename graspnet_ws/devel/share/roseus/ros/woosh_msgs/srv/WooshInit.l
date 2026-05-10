;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::WooshInit)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'WooshInit (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::WOOSHINIT")
  (make-package "WOOSH_MSGS::WOOSHINIT"))
(unless (find-package "WOOSH_MSGS::WOOSHINITREQUEST")
  (make-package "WOOSH_MSGS::WOOSHINITREQUEST"))
(unless (find-package "WOOSH_MSGS::WOOSHINITRESPONSE")
  (make-package "WOOSH_MSGS::WOOSHINITRESPONSE"))

(in-package "ROS")





(defclass woosh_msgs::WooshInitRequest
  :super ros::object
  :slots ())

(defmethod woosh_msgs::WooshInitRequest
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

(defclass woosh_msgs::WooshInitResponse
  :super ros::object
  :slots (_success _message ))

(defmethod woosh_msgs::WooshInitResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass woosh_msgs::WooshInit
  :super ros::object
  :slots ())

(setf (get woosh_msgs::WooshInit :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get woosh_msgs::WooshInit :datatype-) "woosh_msgs/WooshInit")
(setf (get woosh_msgs::WooshInit :request) woosh_msgs::WooshInitRequest)
(setf (get woosh_msgs::WooshInit :response) woosh_msgs::WooshInitResponse)

(defmethod woosh_msgs::WooshInitRequest
  (:response () (instance woosh_msgs::WooshInitResponse :init)))

(setf (get woosh_msgs::WooshInitRequest :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get woosh_msgs::WooshInitRequest :datatype-) "woosh_msgs/WooshInitRequest")
(setf (get woosh_msgs::WooshInitRequest :definition-)
      "---
bool success
string message

")

(setf (get woosh_msgs::WooshInitResponse :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get woosh_msgs::WooshInitResponse :datatype-) "woosh_msgs/WooshInitResponse")
(setf (get woosh_msgs::WooshInitResponse :definition-)
      "---
bool success
string message

")



(provide :woosh_msgs/WooshInit "937c9679a518e3a18d831e57125ea522")


