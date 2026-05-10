;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::ArTagPose)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'ArTagPose (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::ARTAGPOSE")
  (make-package "WOOSH_MSGS::ARTAGPOSE"))

(in-package "ROS")
;;//! \htmlinclude ArTagPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass woosh_msgs::ArTagPose
  :super ros::object
  :slots (_distination _tag_pose _tag_id ))

(defmethod woosh_msgs::ArTagPose
  (:init
   (&key
    ((:distination __distination) (instance geometry_msgs::Point :init))
    ((:tag_pose __tag_pose) (instance geometry_msgs::Pose :init))
    ((:tag_id __tag_id) 0)
    )
   (send-super :init)
   (setq _distination __distination)
   (setq _tag_pose __tag_pose)
   (setq _tag_id (round __tag_id))
   self)
  (:distination
   (&rest __distination)
   (if (keywordp (car __distination))
       (send* _distination __distination)
     (progn
       (if __distination (setq _distination (car __distination)))
       _distination)))
  (:tag_pose
   (&rest __tag_pose)
   (if (keywordp (car __tag_pose))
       (send* _tag_pose __tag_pose)
     (progn
       (if __tag_pose (setq _tag_pose (car __tag_pose)))
       _tag_pose)))
  (:tag_id
   (&optional __tag_id)
   (if __tag_id (setq _tag_id __tag_id)) _tag_id)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _distination
    (send _distination :serialization-length)
    ;; geometry_msgs/Pose _tag_pose
    (send _tag_pose :serialization-length)
    ;; int32 _tag_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _distination
       (send _distination :serialize s)
     ;; geometry_msgs/Pose _tag_pose
       (send _tag_pose :serialize s)
     ;; int32 _tag_id
       (write-long _tag_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _distination
     (send _distination :deserialize buf ptr-) (incf ptr- (send _distination :serialization-length))
   ;; geometry_msgs/Pose _tag_pose
     (send _tag_pose :deserialize buf ptr-) (incf ptr- (send _tag_pose :serialization-length))
   ;; int32 _tag_id
     (setq _tag_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get woosh_msgs::ArTagPose :md5sum-) "4c61879d8040fe8796fb4042d4277e94")
(setf (get woosh_msgs::ArTagPose :datatype-) "woosh_msgs/ArTagPose")
(setf (get woosh_msgs::ArTagPose :definition-)
      "geometry_msgs/Point distination
geometry_msgs/Pose tag_pose
int32 tag_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :woosh_msgs/ArTagPose "4c61879d8040fe8796fb4042d4277e94")


