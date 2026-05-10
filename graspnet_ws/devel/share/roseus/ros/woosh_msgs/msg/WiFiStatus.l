;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::WiFiStatus)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'WiFiStatus (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::WIFISTATUS")
  (make-package "WOOSH_MSGS::WIFISTATUS"))

(in-package "ROS")
;;//! \htmlinclude WiFiStatus.msg.html


(defclass woosh_msgs::WiFiStatus
  :super ros::object
  :slots (_data ))

(defmethod woosh_msgs::WiFiStatus
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get woosh_msgs::WiFiStatus :md5sum-) "992ce8a1687cec8c8bd883ec73ca41d1")
(setf (get woosh_msgs::WiFiStatus :datatype-) "woosh_msgs/WiFiStatus")
(setf (get woosh_msgs::WiFiStatus :definition-)
      "string data

")



(provide :woosh_msgs/WiFiStatus "992ce8a1687cec8c8bd883ec73ca41d1")


