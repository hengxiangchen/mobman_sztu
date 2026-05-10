;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::SetSafetyField)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'SetSafetyField (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::SETSAFETYFIELD")
  (make-package "WOOSH_MSGS::SETSAFETYFIELD"))
(unless (find-package "WOOSH_MSGS::SETSAFETYFIELDREQUEST")
  (make-package "WOOSH_MSGS::SETSAFETYFIELDREQUEST"))
(unless (find-package "WOOSH_MSGS::SETSAFETYFIELDRESPONSE")
  (make-package "WOOSH_MSGS::SETSAFETYFIELDRESPONSE"))

(in-package "ROS")





(defclass woosh_msgs::SetSafetyFieldRequest
  :super ros::object
  :slots (_safetyField ))

(defmethod woosh_msgs::SetSafetyFieldRequest
  (:init
   (&key
    ((:safetyField __safetyField) 0)
    )
   (send-super :init)
   (setq _safetyField (round __safetyField))
   self)
  (:safetyField
   (&optional __safetyField)
   (if __safetyField (setq _safetyField __safetyField)) _safetyField)
  (:serialization-length
   ()
   (+
    ;; uint8 _safetyField
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _safetyField
       (write-byte _safetyField s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _safetyField
     (setq _safetyField (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass woosh_msgs::SetSafetyFieldResponse
  :super ros::object
  :slots (_enable _safetyField _success _message ))

(defmethod woosh_msgs::SetSafetyFieldResponse
  (:init
   (&key
    ((:enable __enable) nil)
    ((:safetyField __safetyField) 0)
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _enable __enable)
   (setq _safetyField (round __safetyField))
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:safetyField
   (&optional __safetyField)
   (if __safetyField (setq _safetyField __safetyField)) _safetyField)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ;; uint8 _safetyField
    1
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _safetyField
       (write-byte _safetyField s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _safetyField
     (setq _safetyField (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass woosh_msgs::SetSafetyField
  :super ros::object
  :slots ())

(setf (get woosh_msgs::SetSafetyField :md5sum-) "fb961668e1417ae513efc8848f6b7d57")
(setf (get woosh_msgs::SetSafetyField :datatype-) "woosh_msgs/SetSafetyField")
(setf (get woosh_msgs::SetSafetyField :request) woosh_msgs::SetSafetyFieldRequest)
(setf (get woosh_msgs::SetSafetyField :response) woosh_msgs::SetSafetyFieldResponse)

(defmethod woosh_msgs::SetSafetyFieldRequest
  (:response () (instance woosh_msgs::SetSafetyFieldResponse :init)))

(setf (get woosh_msgs::SetSafetyFieldRequest :md5sum-) "fb961668e1417ae513efc8848f6b7d57")
(setf (get woosh_msgs::SetSafetyFieldRequest :datatype-) "woosh_msgs/SetSafetyFieldRequest")
(setf (get woosh_msgs::SetSafetyFieldRequest :definition-)
      "uint8 safetyField
---
bool enable
uint8 safetyField
bool success
string message
")

(setf (get woosh_msgs::SetSafetyFieldResponse :md5sum-) "fb961668e1417ae513efc8848f6b7d57")
(setf (get woosh_msgs::SetSafetyFieldResponse :datatype-) "woosh_msgs/SetSafetyFieldResponse")
(setf (get woosh_msgs::SetSafetyFieldResponse :definition-)
      "uint8 safetyField
---
bool enable
uint8 safetyField
bool success
string message
")



(provide :woosh_msgs/SetSafetyField "fb961668e1417ae513efc8848f6b7d57")


