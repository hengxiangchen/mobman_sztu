;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::NavFieldPoint)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'NavFieldPoint (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::NAVFIELDPOINT")
  (make-package "WOOSH_MSGS::NAVFIELDPOINT"))

(in-package "ROS")
;;//! \htmlinclude NavFieldPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass woosh_msgs::NavFieldPoint
  :super ros::object
  :slots (_pt _id ))

(defmethod woosh_msgs::NavFieldPoint
  (:init
   (&key
    ((:pt __pt) (instance geometry_msgs::Point :init))
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _pt __pt)
   (setq _id (round __id))
   self)
  (:pt
   (&rest __pt)
   (if (keywordp (car __pt))
       (send* _pt __pt)
     (progn
       (if __pt (setq _pt (car __pt)))
       _pt)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _pt
    (send _pt :serialization-length)
    ;; uint32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _pt
       (send _pt :serialize s)
     ;; uint32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _pt
     (send _pt :deserialize buf ptr-) (incf ptr- (send _pt :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get woosh_msgs::NavFieldPoint :md5sum-) "eb13b00633b9c5d2d37ee845ea08015a")
(setf (get woosh_msgs::NavFieldPoint :datatype-) "woosh_msgs/NavFieldPoint")
(setf (get woosh_msgs::NavFieldPoint :definition-)
      "geometry_msgs/Point pt	#Marker position
uint32 id 		#Marker id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :woosh_msgs/NavFieldPoint "eb13b00633b9c5d2d37ee845ea08015a")


