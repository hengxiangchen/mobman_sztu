;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::deployment_marker)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'deployment_marker (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::DEPLOYMENT_MARKER")
  (make-package "WOOSH_MSGS::DEPLOYMENT_MARKER"))

(in-package "ROS")
;;//! \htmlinclude deployment_marker.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass woosh_msgs::deployment_marker
  :super ros::object
  :slots (_markerID _pose _group ))

(defmethod woosh_msgs::deployment_marker
  (:init
   (&key
    ((:markerID __markerID) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:group __group) 0)
    )
   (send-super :init)
   (setq _markerID (round __markerID))
   (setq _pose __pose)
   (setq _group (round __group))
   self)
  (:markerID
   (&optional __markerID)
   (if __markerID (setq _markerID __markerID)) _markerID)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:group
   (&optional __group)
   (if __group (setq _group __group)) _group)
  (:serialization-length
   ()
   (+
    ;; uint32 _markerID
    4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; uint16 _group
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _markerID
       (write-long _markerID s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; uint16 _group
       (write-word _group s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _markerID
     (setq _markerID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; uint16 _group
     (setq _group (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get woosh_msgs::deployment_marker :md5sum-) "37751f140e34699d48128a706ed74fc6")
(setf (get woosh_msgs::deployment_marker :datatype-) "woosh_msgs/deployment_marker")
(setf (get woosh_msgs::deployment_marker :definition-)
      "uint32 markerID
geometry_msgs/Pose pose
uint16  group

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :woosh_msgs/deployment_marker "37751f140e34699d48128a706ed74fc6")


