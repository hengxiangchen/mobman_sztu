;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::GraphVertex)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'GraphVertex (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::GRAPHVERTEX")
  (make-package "WOOSH_MSGS::GRAPHVERTEX"))

(in-package "ROS")
;;//! \htmlinclude GraphVertex.msg.html


(defclass woosh_msgs::GraphVertex
  :super ros::object
  :slots (_mark _field_id ))

(defmethod woosh_msgs::GraphVertex
  (:init
   (&key
    ((:mark __mark) (instance woosh_msgs::NavFieldPoint :init))
    ((:field_id __field_id) 0)
    )
   (send-super :init)
   (setq _mark __mark)
   (setq _field_id (round __field_id))
   self)
  (:mark
   (&rest __mark)
   (if (keywordp (car __mark))
       (send* _mark __mark)
     (progn
       (if __mark (setq _mark (car __mark)))
       _mark)))
  (:field_id
   (&optional __field_id)
   (if __field_id (setq _field_id __field_id)) _field_id)
  (:serialization-length
   ()
   (+
    ;; woosh_msgs/NavFieldPoint _mark
    (send _mark :serialization-length)
    ;; int32 _field_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; woosh_msgs/NavFieldPoint _mark
       (send _mark :serialize s)
     ;; int32 _field_id
       (write-long _field_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; woosh_msgs/NavFieldPoint _mark
     (send _mark :deserialize buf ptr-) (incf ptr- (send _mark :serialization-length))
   ;; int32 _field_id
     (setq _field_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get woosh_msgs::GraphVertex :md5sum-) "62869234d6d1db121c045433a043e865")
(setf (get woosh_msgs::GraphVertex :datatype-) "woosh_msgs/GraphVertex")
(setf (get woosh_msgs::GraphVertex :definition-)
      "NavFieldPoint mark
int32 field_id

================================================================================
MSG: woosh_msgs/NavFieldPoint
geometry_msgs/Point pt	#Marker position
uint32 id 		#Marker id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :woosh_msgs/GraphVertex "62869234d6d1db121c045433a043e865")


