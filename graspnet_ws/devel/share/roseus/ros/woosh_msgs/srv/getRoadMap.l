;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::getRoadMap)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'getRoadMap (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::GETROADMAP")
  (make-package "WOOSH_MSGS::GETROADMAP"))
(unless (find-package "WOOSH_MSGS::GETROADMAPREQUEST")
  (make-package "WOOSH_MSGS::GETROADMAPREQUEST"))
(unless (find-package "WOOSH_MSGS::GETROADMAPRESPONSE")
  (make-package "WOOSH_MSGS::GETROADMAPRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass woosh_msgs::getRoadMapRequest
  :super ros::object
  :slots (_one_way _bidirect ))

(defmethod woosh_msgs::getRoadMapRequest
  (:init
   (&key
    ((:one_way __one_way) ())
    ((:bidirect __bidirect) ())
    )
   (send-super :init)
   (setq _one_way __one_way)
   (setq _bidirect __bidirect)
   self)
  (:one_way
   (&rest __one_way)
   (if (keywordp (car __one_way))
       (send* _one_way __one_way)
     (progn
       (if __one_way (setq _one_way (car __one_way)))
       _one_way)))
  (:bidirect
   (&rest __bidirect)
   (if (keywordp (car __bidirect))
       (send* _bidirect __bidirect)
     (progn
       (if __bidirect (setq _bidirect (car __bidirect)))
       _bidirect)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _one_way
    (apply #'+ (send-all _one_way :serialization-length)) 4
    ;; geometry_msgs/Point[] _bidirect
    (apply #'+ (send-all _bidirect :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _one_way
     (write-long (length _one_way) s)
     (dolist (elem _one_way)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _bidirect
     (write-long (length _bidirect) s)
     (dolist (elem _bidirect)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _one_way
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _one_way (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _one_way)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _bidirect
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bidirect (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _bidirect)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass woosh_msgs::getRoadMapResponse
  :super ros::object
  :slots ())

(defmethod woosh_msgs::getRoadMapResponse
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

(defclass woosh_msgs::getRoadMap
  :super ros::object
  :slots ())

(setf (get woosh_msgs::getRoadMap :md5sum-) "1910be0d1ef00ac4cb0394dab1854fd2")
(setf (get woosh_msgs::getRoadMap :datatype-) "woosh_msgs/getRoadMap")
(setf (get woosh_msgs::getRoadMap :request) woosh_msgs::getRoadMapRequest)
(setf (get woosh_msgs::getRoadMap :response) woosh_msgs::getRoadMapResponse)

(defmethod woosh_msgs::getRoadMapRequest
  (:response () (instance woosh_msgs::getRoadMapResponse :init)))

(setf (get woosh_msgs::getRoadMapRequest :md5sum-) "1910be0d1ef00ac4cb0394dab1854fd2")
(setf (get woosh_msgs::getRoadMapRequest :datatype-) "woosh_msgs/getRoadMapRequest")
(setf (get woosh_msgs::getRoadMapRequest :definition-)
      "geometry_msgs/Point[] one_way
geometry_msgs/Point[] bidirect


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---

")

(setf (get woosh_msgs::getRoadMapResponse :md5sum-) "1910be0d1ef00ac4cb0394dab1854fd2")
(setf (get woosh_msgs::getRoadMapResponse :datatype-) "woosh_msgs/getRoadMapResponse")
(setf (get woosh_msgs::getRoadMapResponse :definition-)
      "geometry_msgs/Point[] one_way
geometry_msgs/Point[] bidirect


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---

")



(provide :woosh_msgs/getRoadMap "1910be0d1ef00ac4cb0394dab1854fd2")


