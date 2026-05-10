;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::reflector_errorID)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'reflector_errorID (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::REFLECTOR_ERRORID")
  (make-package "WOOSH_MSGS::REFLECTOR_ERRORID"))

(in-package "ROS")
;;//! \htmlinclude reflector_errorID.msg.html


(defclass woosh_msgs::reflector_errorID
  :super ros::object
  :slots (_ID1 _ID2 _ID3 ))

(defmethod woosh_msgs::reflector_errorID
  (:init
   (&key
    ((:ID1 __ID1) 0)
    ((:ID2 __ID2) 0)
    ((:ID3 __ID3) 0)
    )
   (send-super :init)
   (setq _ID1 (round __ID1))
   (setq _ID2 (round __ID2))
   (setq _ID3 (round __ID3))
   self)
  (:ID1
   (&optional __ID1)
   (if __ID1 (setq _ID1 __ID1)) _ID1)
  (:ID2
   (&optional __ID2)
   (if __ID2 (setq _ID2 __ID2)) _ID2)
  (:ID3
   (&optional __ID3)
   (if __ID3 (setq _ID3 __ID3)) _ID3)
  (:serialization-length
   ()
   (+
    ;; uint32 _ID1
    4
    ;; uint32 _ID2
    4
    ;; uint32 _ID3
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _ID1
       (write-long _ID1 s)
     ;; uint32 _ID2
       (write-long _ID2 s)
     ;; uint32 _ID3
       (write-long _ID3 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _ID1
     (setq _ID1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _ID2
     (setq _ID2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _ID3
     (setq _ID3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get woosh_msgs::reflector_errorID :md5sum-) "0f95342ff8d3c62efed10a6fed87a878")
(setf (get woosh_msgs::reflector_errorID :datatype-) "woosh_msgs/reflector_errorID")
(setf (get woosh_msgs::reflector_errorID :definition-)
      "uint32 ID1
uint32 ID2
uint32 ID3

")



(provide :woosh_msgs/reflector_errorID "0f95342ff8d3c62efed10a6fed87a878")


