;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::AutoDockGoal)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'AutoDockGoal (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::AUTODOCKGOAL")
  (make-package "WOOSH_MSGS::AUTODOCKGOAL"))

(in-package "ROS")
;;//! \htmlinclude AutoDockGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*START*" (find-package "WOOSH_MSGS::AUTODOCKGOAL"))
(shadow '*START* (find-package "WOOSH_MSGS::AUTODOCKGOAL"))
(defconstant woosh_msgs::AutoDockGoal::*START* 0)
(intern "*PAUSE*" (find-package "WOOSH_MSGS::AUTODOCKGOAL"))
(shadow '*PAUSE* (find-package "WOOSH_MSGS::AUTODOCKGOAL"))
(defconstant woosh_msgs::AutoDockGoal::*PAUSE* 1)
(intern "*RESUM*" (find-package "WOOSH_MSGS::AUTODOCKGOAL"))
(shadow '*RESUM* (find-package "WOOSH_MSGS::AUTODOCKGOAL"))
(defconstant woosh_msgs::AutoDockGoal::*RESUM* 2)
(intern "*LEAVE*" (find-package "WOOSH_MSGS::AUTODOCKGOAL"))
(shadow '*LEAVE* (find-package "WOOSH_MSGS::AUTODOCKGOAL"))
(defconstant woosh_msgs::AutoDockGoal::*LEAVE* 3)
(intern "*RESET*" (find-package "WOOSH_MSGS::AUTODOCKGOAL"))
(shadow '*RESET* (find-package "WOOSH_MSGS::AUTODOCKGOAL"))
(defconstant woosh_msgs::AutoDockGoal::*RESET* 4)
(intern "*UP*" (find-package "WOOSH_MSGS::AUTODOCKGOAL"))
(shadow '*UP* (find-package "WOOSH_MSGS::AUTODOCKGOAL"))
(defconstant woosh_msgs::AutoDockGoal::*UP* 0)
(intern "*DOWN*" (find-package "WOOSH_MSGS::AUTODOCKGOAL"))
(shadow '*DOWN* (find-package "WOOSH_MSGS::AUTODOCKGOAL"))
(defconstant woosh_msgs::AutoDockGoal::*DOWN* 1)

(defun woosh_msgs::AutoDockGoal-to-symbol (const)
  (cond
        ((= const 0) 'woosh_msgs::AutoDockGoal::*START*)
        ((= const 1) 'woosh_msgs::AutoDockGoal::*PAUSE*)
        ((= const 2) 'woosh_msgs::AutoDockGoal::*RESUM*)
        ((= const 3) 'woosh_msgs::AutoDockGoal::*LEAVE*)
        ((= const 4) 'woosh_msgs::AutoDockGoal::*RESET*)
        ((= const 0) 'woosh_msgs::AutoDockGoal::*UP*)
        ((= const 1) 'woosh_msgs::AutoDockGoal::*DOWN*)
        (t nil)))

(defclass woosh_msgs::AutoDockGoal
  :super ros::object
  :slots (_tag_no _type _lift_type _leave_distance _targetPose ))

(defmethod woosh_msgs::AutoDockGoal
  (:init
   (&key
    ((:tag_no __tag_no) "")
    ((:type __type) 0)
    ((:lift_type __lift_type) 0)
    ((:leave_distance __leave_distance) 0.0)
    ((:targetPose __targetPose) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _tag_no (string __tag_no))
   (setq _type (round __type))
   (setq _lift_type (round __lift_type))
   (setq _leave_distance (float __leave_distance))
   (setq _targetPose __targetPose)
   self)
  (:tag_no
   (&optional __tag_no)
   (if __tag_no (setq _tag_no __tag_no)) _tag_no)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:lift_type
   (&optional __lift_type)
   (if __lift_type (setq _lift_type __lift_type)) _lift_type)
  (:leave_distance
   (&optional __leave_distance)
   (if __leave_distance (setq _leave_distance __leave_distance)) _leave_distance)
  (:targetPose
   (&rest __targetPose)
   (if (keywordp (car __targetPose))
       (send* _targetPose __targetPose)
     (progn
       (if __targetPose (setq _targetPose (car __targetPose)))
       _targetPose)))
  (:serialization-length
   ()
   (+
    ;; string _tag_no
    4 (length _tag_no)
    ;; int32 _type
    4
    ;; int32 _lift_type
    4
    ;; float32 _leave_distance
    4
    ;; geometry_msgs/Pose2D _targetPose
    (send _targetPose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _tag_no
       (write-long (length _tag_no) s) (princ _tag_no s)
     ;; int32 _type
       (write-long _type s)
     ;; int32 _lift_type
       (write-long _lift_type s)
     ;; float32 _leave_distance
       (sys::poke _leave_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Pose2D _targetPose
       (send _targetPose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _tag_no
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tag_no (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lift_type
     (setq _lift_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _leave_distance
     (setq _leave_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Pose2D _targetPose
     (send _targetPose :deserialize buf ptr-) (incf ptr- (send _targetPose :serialization-length))
   ;;
   self)
  )

(setf (get woosh_msgs::AutoDockGoal :md5sum-) "f1af45c96b8d3744f0cc741ad7382081")
(setf (get woosh_msgs::AutoDockGoal :datatype-) "woosh_msgs/AutoDockGoal")
(setf (get woosh_msgs::AutoDockGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
string  tag_no  #tag编号

int32   type
int32   START = 0
int32   PAUSE = 1
int32   RESUM = 2
int32   LEAVE = 3
int32   RESET = 4

int32   lift_type
int32   UP = 0
int32   DOWN = 1

float32 leave_distance  #-999
geometry_msgs/Pose2D  targetPose

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

")



(provide :woosh_msgs/AutoDockGoal "f1af45c96b8d3744f0cc741ad7382081")


