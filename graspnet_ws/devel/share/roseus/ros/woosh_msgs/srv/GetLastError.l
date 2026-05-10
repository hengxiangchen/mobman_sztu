;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::GetLastError)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'GetLastError (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::GETLASTERROR")
  (make-package "WOOSH_MSGS::GETLASTERROR"))
(unless (find-package "WOOSH_MSGS::GETLASTERRORREQUEST")
  (make-package "WOOSH_MSGS::GETLASTERRORREQUEST"))
(unless (find-package "WOOSH_MSGS::GETLASTERRORRESPONSE")
  (make-package "WOOSH_MSGS::GETLASTERRORRESPONSE"))

(in-package "ROS")





(defclass woosh_msgs::GetLastErrorRequest
  :super ros::object
  :slots (_clear ))

(defmethod woosh_msgs::GetLastErrorRequest
  (:init
   (&key
    ((:clear __clear) nil)
    )
   (send-super :init)
   (setq _clear __clear)
   self)
  (:clear
   (&optional (__clear :null))
   (if (not (eq __clear :null)) (setq _clear __clear)) _clear)
  (:serialization-length
   ()
   (+
    ;; bool _clear
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _clear
       (if _clear (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _clear
     (setq _clear (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass woosh_msgs::GetLastErrorResponse
  :super ros::object
  :slots (_last_error ))

(defmethod woosh_msgs::GetLastErrorResponse
  (:init
   (&key
    ((:last_error __last_error) "")
    )
   (send-super :init)
   (setq _last_error (string __last_error))
   self)
  (:last_error
   (&optional __last_error)
   (if __last_error (setq _last_error __last_error)) _last_error)
  (:serialization-length
   ()
   (+
    ;; string _last_error
    4 (length _last_error)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _last_error
       (write-long (length _last_error) s) (princ _last_error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _last_error
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _last_error (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass woosh_msgs::GetLastError
  :super ros::object
  :slots ())

(setf (get woosh_msgs::GetLastError :md5sum-) "b40afb2571e9bdb7a133903e7060837b")
(setf (get woosh_msgs::GetLastError :datatype-) "woosh_msgs/GetLastError")
(setf (get woosh_msgs::GetLastError :request) woosh_msgs::GetLastErrorRequest)
(setf (get woosh_msgs::GetLastError :response) woosh_msgs::GetLastErrorResponse)

(defmethod woosh_msgs::GetLastErrorRequest
  (:response () (instance woosh_msgs::GetLastErrorResponse :init)))

(setf (get woosh_msgs::GetLastErrorRequest :md5sum-) "b40afb2571e9bdb7a133903e7060837b")
(setf (get woosh_msgs::GetLastErrorRequest :datatype-) "woosh_msgs/GetLastErrorRequest")
(setf (get woosh_msgs::GetLastErrorRequest :definition-)
      "bool clear
---
string last_error

")

(setf (get woosh_msgs::GetLastErrorResponse :md5sum-) "b40afb2571e9bdb7a133903e7060837b")
(setf (get woosh_msgs::GetLastErrorResponse :datatype-) "woosh_msgs/GetLastErrorResponse")
(setf (get woosh_msgs::GetLastErrorResponse :definition-)
      "bool clear
---
string last_error

")



(provide :woosh_msgs/GetLastError "b40afb2571e9bdb7a133903e7060837b")


