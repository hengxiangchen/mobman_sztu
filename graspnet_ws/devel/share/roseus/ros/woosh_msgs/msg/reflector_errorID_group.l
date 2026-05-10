;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::reflector_errorID_group)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'reflector_errorID_group (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::REFLECTOR_ERRORID_GROUP")
  (make-package "WOOSH_MSGS::REFLECTOR_ERRORID_GROUP"))

(in-package "ROS")
;;//! \htmlinclude reflector_errorID_group.msg.html


(defclass woosh_msgs::reflector_errorID_group
  :super ros::object
  :slots (_reflector_errorIDs ))

(defmethod woosh_msgs::reflector_errorID_group
  (:init
   (&key
    ((:reflector_errorIDs __reflector_errorIDs) ())
    )
   (send-super :init)
   (setq _reflector_errorIDs __reflector_errorIDs)
   self)
  (:reflector_errorIDs
   (&rest __reflector_errorIDs)
   (if (keywordp (car __reflector_errorIDs))
       (send* _reflector_errorIDs __reflector_errorIDs)
     (progn
       (if __reflector_errorIDs (setq _reflector_errorIDs (car __reflector_errorIDs)))
       _reflector_errorIDs)))
  (:serialization-length
   ()
   (+
    ;; woosh_msgs/reflector_errorID[] _reflector_errorIDs
    (apply #'+ (send-all _reflector_errorIDs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; woosh_msgs/reflector_errorID[] _reflector_errorIDs
     (write-long (length _reflector_errorIDs) s)
     (dolist (elem _reflector_errorIDs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; woosh_msgs/reflector_errorID[] _reflector_errorIDs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reflector_errorIDs (let (r) (dotimes (i n) (push (instance woosh_msgs::reflector_errorID :init) r)) r))
     (dolist (elem- _reflector_errorIDs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get woosh_msgs::reflector_errorID_group :md5sum-) "6e143066129136a656399632cc78743b")
(setf (get woosh_msgs::reflector_errorID_group :datatype-) "woosh_msgs/reflector_errorID_group")
(setf (get woosh_msgs::reflector_errorID_group :definition-)
      "reflector_errorID[] reflector_errorIDs

================================================================================
MSG: woosh_msgs/reflector_errorID
uint32 ID1
uint32 ID2
uint32 ID3

")



(provide :woosh_msgs/reflector_errorID_group "6e143066129136a656399632cc78743b")


