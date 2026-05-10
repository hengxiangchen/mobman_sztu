;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::WooshRosbagRecord)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'WooshRosbagRecord (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::WOOSHROSBAGRECORD")
  (make-package "WOOSH_MSGS::WOOSHROSBAGRECORD"))

(in-package "ROS")
;;//! \htmlinclude WooshRosbagRecord.msg.html


(defclass woosh_msgs::WooshRosbagRecord
  :super ros::object
  :slots (_startOrstop _removeBag ))

(defmethod woosh_msgs::WooshRosbagRecord
  (:init
   (&key
    ((:startOrstop __startOrstop) nil)
    ((:removeBag __removeBag) nil)
    )
   (send-super :init)
   (setq _startOrstop __startOrstop)
   (setq _removeBag __removeBag)
   self)
  (:startOrstop
   (&optional (__startOrstop :null))
   (if (not (eq __startOrstop :null)) (setq _startOrstop __startOrstop)) _startOrstop)
  (:removeBag
   (&optional (__removeBag :null))
   (if (not (eq __removeBag :null)) (setq _removeBag __removeBag)) _removeBag)
  (:serialization-length
   ()
   (+
    ;; bool _startOrstop
    1
    ;; bool _removeBag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _startOrstop
       (if _startOrstop (write-byte -1 s) (write-byte 0 s))
     ;; bool _removeBag
       (if _removeBag (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _startOrstop
     (setq _startOrstop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _removeBag
     (setq _removeBag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get woosh_msgs::WooshRosbagRecord :md5sum-) "65d3c77019d7f0e27129b759c962321f")
(setf (get woosh_msgs::WooshRosbagRecord :datatype-) "woosh_msgs/WooshRosbagRecord")
(setf (get woosh_msgs::WooshRosbagRecord :definition-)
      "bool startOrstop #true:start  false:stop
bool removeBag   #true:remove false:keep

")



(provide :woosh_msgs/WooshRosbagRecord "65d3c77019d7f0e27129b759c962321f")


