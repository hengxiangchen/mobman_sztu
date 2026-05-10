;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::OdomCtrolAvoidObstacleGoal)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'OdomCtrolAvoidObstacleGoal (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::ODOMCTROLAVOIDOBSTACLEGOAL")
  (make-package "WOOSH_MSGS::ODOMCTROLAVOIDOBSTACLEGOAL"))

(in-package "ROS")
;;//! \htmlinclude OdomCtrolAvoidObstacleGoal.msg.html


(intern "*STRAIGHT*" (find-package "WOOSH_MSGS::ODOMCTROLAVOIDOBSTACLEGOAL"))
(shadow '*STRAIGHT* (find-package "WOOSH_MSGS::ODOMCTROLAVOIDOBSTACLEGOAL"))
(defconstant woosh_msgs::OdomCtrolAvoidObstacleGoal::*STRAIGHT* 0)
(intern "*ROTATE*" (find-package "WOOSH_MSGS::ODOMCTROLAVOIDOBSTACLEGOAL"))
(shadow '*ROTATE* (find-package "WOOSH_MSGS::ODOMCTROLAVOIDOBSTACLEGOAL"))
(defconstant woosh_msgs::OdomCtrolAvoidObstacleGoal::*ROTATE* 1)
(intern "*PAUSE*" (find-package "WOOSH_MSGS::ODOMCTROLAVOIDOBSTACLEGOAL"))
(shadow '*PAUSE* (find-package "WOOSH_MSGS::ODOMCTROLAVOIDOBSTACLEGOAL"))
(defconstant woosh_msgs::OdomCtrolAvoidObstacleGoal::*PAUSE* 2)
(intern "*RESUM*" (find-package "WOOSH_MSGS::ODOMCTROLAVOIDOBSTACLEGOAL"))
(shadow '*RESUM* (find-package "WOOSH_MSGS::ODOMCTROLAVOIDOBSTACLEGOAL"))
(defconstant woosh_msgs::OdomCtrolAvoidObstacleGoal::*RESUM* 3)

(defun woosh_msgs::OdomCtrolAvoidObstacleGoal-to-symbol (const)
  (cond
        ((= const 0) 'woosh_msgs::OdomCtrolAvoidObstacleGoal::*STRAIGHT*)
        ((= const 1) 'woosh_msgs::OdomCtrolAvoidObstacleGoal::*ROTATE*)
        ((= const 2) 'woosh_msgs::OdomCtrolAvoidObstacleGoal::*PAUSE*)
        ((= const 3) 'woosh_msgs::OdomCtrolAvoidObstacleGoal::*RESUM*)
        (t nil)))

(defclass woosh_msgs::OdomCtrolAvoidObstacleGoal
  :super ros::object
  :slots (_arg _speed _arg_type _useMoveAvoid _close_obstacleDetect_percent _xMax _xMin _yMax _yMin ))

(defmethod woosh_msgs::OdomCtrolAvoidObstacleGoal
  (:init
   (&key
    ((:arg __arg) 0.0)
    ((:speed __speed) 0.0)
    ((:arg_type __arg_type) 0)
    ((:useMoveAvoid __useMoveAvoid) 0)
    ((:close_obstacleDetect_percent __close_obstacleDetect_percent) 0.0)
    ((:xMax __xMax) 0.0)
    ((:xMin __xMin) 0.0)
    ((:yMax __yMax) 0.0)
    ((:yMin __yMin) 0.0)
    )
   (send-super :init)
   (setq _arg (float __arg))
   (setq _speed (float __speed))
   (setq _arg_type (round __arg_type))
   (setq _useMoveAvoid (round __useMoveAvoid))
   (setq _close_obstacleDetect_percent (float __close_obstacleDetect_percent))
   (setq _xMax (float __xMax))
   (setq _xMin (float __xMin))
   (setq _yMax (float __yMax))
   (setq _yMin (float __yMin))
   self)
  (:arg
   (&optional __arg)
   (if __arg (setq _arg __arg)) _arg)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:arg_type
   (&optional __arg_type)
   (if __arg_type (setq _arg_type __arg_type)) _arg_type)
  (:useMoveAvoid
   (&optional __useMoveAvoid)
   (if __useMoveAvoid (setq _useMoveAvoid __useMoveAvoid)) _useMoveAvoid)
  (:close_obstacleDetect_percent
   (&optional __close_obstacleDetect_percent)
   (if __close_obstacleDetect_percent (setq _close_obstacleDetect_percent __close_obstacleDetect_percent)) _close_obstacleDetect_percent)
  (:xMax
   (&optional __xMax)
   (if __xMax (setq _xMax __xMax)) _xMax)
  (:xMin
   (&optional __xMin)
   (if __xMin (setq _xMin __xMin)) _xMin)
  (:yMax
   (&optional __yMax)
   (if __yMax (setq _yMax __yMax)) _yMax)
  (:yMin
   (&optional __yMin)
   (if __yMin (setq _yMin __yMin)) _yMin)
  (:serialization-length
   ()
   (+
    ;; float32 _arg
    4
    ;; float32 _speed
    4
    ;; int32 _arg_type
    4
    ;; int32 _useMoveAvoid
    4
    ;; float32 _close_obstacleDetect_percent
    4
    ;; float32 _xMax
    4
    ;; float32 _xMin
    4
    ;; float32 _yMax
    4
    ;; float32 _yMin
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _arg
       (sys::poke _arg (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _arg_type
       (write-long _arg_type s)
     ;; int32 _useMoveAvoid
       (write-long _useMoveAvoid s)
     ;; float32 _close_obstacleDetect_percent
       (sys::poke _close_obstacleDetect_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _xMax
       (sys::poke _xMax (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _xMin
       (sys::poke _xMin (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yMax
       (sys::poke _yMax (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yMin
       (sys::poke _yMin (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _arg
     (setq _arg (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _arg_type
     (setq _arg_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _useMoveAvoid
     (setq _useMoveAvoid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _close_obstacleDetect_percent
     (setq _close_obstacleDetect_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _xMax
     (setq _xMax (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _xMin
     (setq _xMin (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yMax
     (setq _yMax (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yMin
     (setq _yMin (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get woosh_msgs::OdomCtrolAvoidObstacleGoal :md5sum-) "e192a7094eab6262b4eb709c51e2d87b")
(setf (get woosh_msgs::OdomCtrolAvoidObstacleGoal :datatype-) "woosh_msgs/OdomCtrolAvoidObstacleGoal")
(setf (get woosh_msgs::OdomCtrolAvoidObstacleGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
float32  arg                           #参数
float32  speed                         #速度
int32    arg_type                      #arg_type=0：arg表示距离，正值往前，负值往后; arg_type=1：arg表示原地旋转弧度; arg_type=2 : 暂停; arg_type=3：继续
int32    useMoveAvoid                  #0:开启避障功能; 1:关闭避障功能
float32  close_obstacleDetect_percent  #关闭避障检测时的百分比,大于0,小于等于100,默认值为100
float32  xMax
float32  xMin
float32  yMax
float32  yMin
int32    STRAIGHT = 0
int32    ROTATE = 1
int32    PAUSE = 2
int32    RESUM = 3

")



(provide :woosh_msgs/OdomCtrolAvoidObstacleGoal "e192a7094eab6262b4eb709c51e2d87b")


