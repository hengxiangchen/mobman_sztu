;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::AddReflectors)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'AddReflectors (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::ADDREFLECTORS")
  (make-package "WOOSH_MSGS::ADDREFLECTORS"))
(unless (find-package "WOOSH_MSGS::ADDREFLECTORSREQUEST")
  (make-package "WOOSH_MSGS::ADDREFLECTORSREQUEST"))
(unless (find-package "WOOSH_MSGS::ADDREFLECTORSRESPONSE")
  (make-package "WOOSH_MSGS::ADDREFLECTORSRESPONSE"))

(in-package "ROS")





(defclass woosh_msgs::AddReflectorsRequest
  :super ros::object
  :slots (_isSave _deleteReflector _id ))

(defmethod woosh_msgs::AddReflectorsRequest
  (:init
   (&key
    ((:isSave __isSave) nil)
    ((:deleteReflector __deleteReflector) nil)
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _isSave __isSave)
   (setq _deleteReflector __deleteReflector)
   (setq _id (round __id))
   self)
  (:isSave
   (&optional (__isSave :null))
   (if (not (eq __isSave :null)) (setq _isSave __isSave)) _isSave)
  (:deleteReflector
   (&optional (__deleteReflector :null))
   (if (not (eq __deleteReflector :null)) (setq _deleteReflector __deleteReflector)) _deleteReflector)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; bool _isSave
    1
    ;; bool _deleteReflector
    1
    ;; uint32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isSave
       (if _isSave (write-byte -1 s) (write-byte 0 s))
     ;; bool _deleteReflector
       (if _deleteReflector (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isSave
     (setq _isSave (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _deleteReflector
     (setq _deleteReflector (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass woosh_msgs::AddReflectorsResponse
  :super ros::object
  :slots ())

(defmethod woosh_msgs::AddReflectorsResponse
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

(defclass woosh_msgs::AddReflectors
  :super ros::object
  :slots ())

(setf (get woosh_msgs::AddReflectors :md5sum-) "3b2430547d42b81d587ff6241efc999c")
(setf (get woosh_msgs::AddReflectors :datatype-) "woosh_msgs/AddReflectors")
(setf (get woosh_msgs::AddReflectors :request) woosh_msgs::AddReflectorsRequest)
(setf (get woosh_msgs::AddReflectors :response) woosh_msgs::AddReflectorsResponse)

(defmethod woosh_msgs::AddReflectorsRequest
  (:response () (instance woosh_msgs::AddReflectorsResponse :init)))

(setf (get woosh_msgs::AddReflectorsRequest :md5sum-) "3b2430547d42b81d587ff6241efc999c")
(setf (get woosh_msgs::AddReflectorsRequest :datatype-) "woosh_msgs/AddReflectorsRequest")
(setf (get woosh_msgs::AddReflectorsRequest :definition-)
      "bool    isSave            #true:在map中添加新的reflactors； flase:定位
bool    deleteReflector   #删除地图上已添加的reflector
uint32   id                #删除指定id号的reflector
---

")

(setf (get woosh_msgs::AddReflectorsResponse :md5sum-) "3b2430547d42b81d587ff6241efc999c")
(setf (get woosh_msgs::AddReflectorsResponse :datatype-) "woosh_msgs/AddReflectorsResponse")
(setf (get woosh_msgs::AddReflectorsResponse :definition-)
      "bool    isSave            #true:在map中添加新的reflactors； flase:定位
bool    deleteReflector   #删除地图上已添加的reflector
uint32   id                #删除指定id号的reflector
---

")



(provide :woosh_msgs/AddReflectors "3b2430547d42b81d587ff6241efc999c")


