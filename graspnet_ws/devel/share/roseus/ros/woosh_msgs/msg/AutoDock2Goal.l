;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::AutoDock2Goal)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'AutoDock2Goal (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::AUTODOCK2GOAL")
  (make-package "WOOSH_MSGS::AUTODOCK2GOAL"))

(in-package "ROS")
;;//! \htmlinclude AutoDock2Goal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*ALL_SHAPE*" (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(shadow '*ALL_SHAPE* (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(defconstant woosh_msgs::AutoDock2Goal::*ALL_SHAPE* 0)
(intern "*VL_SHAPE*" (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(shadow '*VL_SHAPE* (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(defconstant woosh_msgs::AutoDock2Goal::*VL_SHAPE* 1)
(intern "*PARALLEL_SHAPE*" (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(shadow '*PARALLEL_SHAPE* (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(defconstant woosh_msgs::AutoDock2Goal::*PARALLEL_SHAPE* 2)
(intern "*CONVEX_SHAPE*" (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(shadow '*CONVEX_SHAPE* (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(defconstant woosh_msgs::AutoDock2Goal::*CONVEX_SHAPE* 3)
(intern "*NARROW_PASSAGE_SHAPE*" (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(shadow '*NARROW_PASSAGE_SHAPE* (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(defconstant woosh_msgs::AutoDock2Goal::*NARROW_PASSAGE_SHAPE* 4)
(intern "*ELEVATOR_SHAPE*" (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(shadow '*ELEVATOR_SHAPE* (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(defconstant woosh_msgs::AutoDock2Goal::*ELEVATOR_SHAPE* 5)
(intern "*RECTANGLE_SHAPE*" (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(shadow '*RECTANGLE_SHAPE* (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(defconstant woosh_msgs::AutoDock2Goal::*RECTANGLE_SHAPE* 6)
(intern "*ENTER*" (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(shadow '*ENTER* (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(defconstant woosh_msgs::AutoDock2Goal::*ENTER* 0)
(intern "*PAUSE*" (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(shadow '*PAUSE* (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(defconstant woosh_msgs::AutoDock2Goal::*PAUSE* 1)
(intern "*RESUM*" (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(shadow '*RESUM* (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(defconstant woosh_msgs::AutoDock2Goal::*RESUM* 2)
(intern "*LEAVE*" (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(shadow '*LEAVE* (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(defconstant woosh_msgs::AutoDock2Goal::*LEAVE* 3)
(intern "*RESET*" (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(shadow '*RESET* (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(defconstant woosh_msgs::AutoDock2Goal::*RESET* 4)
(intern "*BACKWARD*" (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(shadow '*BACKWARD* (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(defconstant woosh_msgs::AutoDock2Goal::*BACKWARD* 0)
(intern "*FRONTWARD*" (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(shadow '*FRONTWARD* (find-package "WOOSH_MSGS::AUTODOCK2GOAL"))
(defconstant woosh_msgs::AutoDock2Goal::*FRONTWARD* 1)

(defun woosh_msgs::AutoDock2Goal-to-symbol (const)
  (cond
        ((= const 0) 'woosh_msgs::AutoDock2Goal::*ALL_SHAPE*)
        ((= const 1) 'woosh_msgs::AutoDock2Goal::*VL_SHAPE*)
        ((= const 2) 'woosh_msgs::AutoDock2Goal::*PARALLEL_SHAPE*)
        ((= const 3) 'woosh_msgs::AutoDock2Goal::*CONVEX_SHAPE*)
        ((= const 4) 'woosh_msgs::AutoDock2Goal::*NARROW_PASSAGE_SHAPE*)
        ((= const 5) 'woosh_msgs::AutoDock2Goal::*ELEVATOR_SHAPE*)
        ((= const 6) 'woosh_msgs::AutoDock2Goal::*RECTANGLE_SHAPE*)
        ((= const 0) 'woosh_msgs::AutoDock2Goal::*ENTER*)
        ((= const 1) 'woosh_msgs::AutoDock2Goal::*PAUSE*)
        ((= const 2) 'woosh_msgs::AutoDock2Goal::*RESUM*)
        ((= const 3) 'woosh_msgs::AutoDock2Goal::*LEAVE*)
        ((= const 4) 'woosh_msgs::AutoDock2Goal::*RESET*)
        ((= const 0) 'woosh_msgs::AutoDock2Goal::*BACKWARD*)
        ((= const 1) 'woosh_msgs::AutoDock2Goal::*FRONTWARD*)
        (t nil)))

(defclass woosh_msgs::AutoDock2Goal
  :super ros::object
  :slots (_tag_no _board_shape _type _dock_direction _targetPose ))

(defmethod woosh_msgs::AutoDock2Goal
  (:init
   (&key
    ((:tag_no __tag_no) "")
    ((:board_shape __board_shape) 0)
    ((:type __type) 0)
    ((:dock_direction __dock_direction) 0)
    ((:targetPose __targetPose) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _tag_no (string __tag_no))
   (setq _board_shape (round __board_shape))
   (setq _type (round __type))
   (setq _dock_direction (round __dock_direction))
   (setq _targetPose __targetPose)
   self)
  (:tag_no
   (&optional __tag_no)
   (if __tag_no (setq _tag_no __tag_no)) _tag_no)
  (:board_shape
   (&optional __board_shape)
   (if __board_shape (setq _board_shape __board_shape)) _board_shape)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:dock_direction
   (&optional __dock_direction)
   (if __dock_direction (setq _dock_direction __dock_direction)) _dock_direction)
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
    ;; int8 _board_shape
    1
    ;; int8 _type
    1
    ;; int8 _dock_direction
    1
    ;; geometry_msgs/Pose2D _targetPose
    (send _targetPose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _tag_no
       (write-long (length _tag_no) s) (princ _tag_no s)
     ;; int8 _board_shape
       (write-byte _board_shape s)
     ;; int8 _type
       (write-byte _type s)
     ;; int8 _dock_direction
       (write-byte _dock_direction s)
     ;; geometry_msgs/Pose2D _targetPose
       (send _targetPose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _tag_no
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tag_no (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _board_shape
     (setq _board_shape (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _board_shape 127) (setq _board_shape (- _board_shape 256)))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; int8 _dock_direction
     (setq _dock_direction (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _dock_direction 127) (setq _dock_direction (- _dock_direction 256)))
   ;; geometry_msgs/Pose2D _targetPose
     (send _targetPose :deserialize buf ptr-) (incf ptr- (send _targetPose :serialization-length))
   ;;
   self)
  )

(setf (get woosh_msgs::AutoDock2Goal :md5sum-) "59093fc5b352f7e2936d701a4c288571")
(setf (get woosh_msgs::AutoDock2Goal :datatype-) "woosh_msgs/AutoDock2Goal")
(setf (get woosh_msgs::AutoDock2Goal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
string  tag_no                      #tag编号

int8    board_shape
int8    ALL_SHAPE = 0               #操作所有特征板
int8    VL_SHAPE = 1                #VL型特征板
int8    PARALLEL_SHAPE = 2          #平行特征板
int8    CONVEX_SHAPE = 3            #凸性特征板
int8    NARROW_PASSAGE_SHAPE = 4    #狭窄通道特征形状
int8    ELEVATOR_SHAPE = 5          #电梯口特征形状
int8    RECTANGLE_SHAPE = 6            #料车

int8    type
int8    ENTER = 0
int8    PAUSE = 1
int8    RESUM = 2
int8    LEAVE = 3
int8    RESET = 4

int8    dock_direction              #对接方向
int8    BACKWARD = 0
int8    FRONTWARD = 1

geometry_msgs/Pose2D  targetPose    #当此接口用于狭窄通道的时候，此变量起作用。用于判断狭窄通道出口位置点。

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



(provide :woosh_msgs/AutoDock2Goal "59093fc5b352f7e2936d701a4c288571")


