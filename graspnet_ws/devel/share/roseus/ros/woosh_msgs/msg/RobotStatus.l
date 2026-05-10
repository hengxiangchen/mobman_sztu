;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::RobotStatus)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'RobotStatus (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::ROBOTSTATUS")
  (make-package "WOOSH_MSGS::ROBOTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RobotStatus.msg.html


(defclass woosh_msgs::RobotStatus
  :super ros::object
  :slots (_task_id _task_type _task_state _action_type _action_state _robot_state _robot_mode _work_mode _wait_id _dest _msg _time ))

(defmethod woosh_msgs::RobotStatus
  (:init
   (&key
    ((:task_id __task_id) 0)
    ((:task_type __task_type) 0)
    ((:task_state __task_state) 0)
    ((:action_type __action_type) 0)
    ((:action_state __action_state) 0)
    ((:robot_state __robot_state) 0)
    ((:robot_mode __robot_mode) 0)
    ((:work_mode __work_mode) 0)
    ((:wait_id __wait_id) 0)
    ((:dest __dest) "")
    ((:msg __msg) "")
    ((:time __time) 0)
    )
   (send-super :init)
   (setq _task_id (round __task_id))
   (setq _task_type (round __task_type))
   (setq _task_state (round __task_state))
   (setq _action_type (round __action_type))
   (setq _action_state (round __action_state))
   (setq _robot_state (round __robot_state))
   (setq _robot_mode (round __robot_mode))
   (setq _work_mode (round __work_mode))
   (setq _wait_id (round __wait_id))
   (setq _dest (string __dest))
   (setq _msg (string __msg))
   (setq _time (round __time))
   self)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:task_type
   (&optional __task_type)
   (if __task_type (setq _task_type __task_type)) _task_type)
  (:task_state
   (&optional __task_state)
   (if __task_state (setq _task_state __task_state)) _task_state)
  (:action_type
   (&optional __action_type)
   (if __action_type (setq _action_type __action_type)) _action_type)
  (:action_state
   (&optional __action_state)
   (if __action_state (setq _action_state __action_state)) _action_state)
  (:robot_state
   (&optional __robot_state)
   (if __robot_state (setq _robot_state __robot_state)) _robot_state)
  (:robot_mode
   (&optional __robot_mode)
   (if __robot_mode (setq _robot_mode __robot_mode)) _robot_mode)
  (:work_mode
   (&optional __work_mode)
   (if __work_mode (setq _work_mode __work_mode)) _work_mode)
  (:wait_id
   (&optional __wait_id)
   (if __wait_id (setq _wait_id __wait_id)) _wait_id)
  (:dest
   (&optional __dest)
   (if __dest (setq _dest __dest)) _dest)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; uint64 _task_id
    8
    ;; int32 _task_type
    4
    ;; int8 _task_state
    1
    ;; int8 _action_type
    1
    ;; int8 _action_state
    1
    ;; int8 _robot_state
    1
    ;; int8 _robot_mode
    1
    ;; int8 _work_mode
    1
    ;; int32 _wait_id
    4
    ;; string _dest
    4 (length _dest)
    ;; string _msg
    4 (length _msg)
    ;; int32 _time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _task_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _task_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _task_id) (= (length (_task_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_task_id . bv) 0) 0) s)
              (write-long (ash (elt (_task_id . bv) 1) -1) s))
             ((and (class _task_id) (= (length (_task_id . bv)) 1)) ;; big1
              (write-long (elt (_task_id . bv) 0) s)
              (write-long (if (>= _task_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _task_id s)(write-long (if (>= _task_id 0) 0 #xffffffff) s)))
     ;; int32 _task_type
       (write-long _task_type s)
     ;; int8 _task_state
       (write-byte _task_state s)
     ;; int8 _action_type
       (write-byte _action_type s)
     ;; int8 _action_state
       (write-byte _action_state s)
     ;; int8 _robot_state
       (write-byte _robot_state s)
     ;; int8 _robot_mode
       (write-byte _robot_mode s)
     ;; int8 _work_mode
       (write-byte _work_mode s)
     ;; int32 _wait_id
       (write-long _wait_id s)
     ;; string _dest
       (write-long (length _dest) s) (princ _dest s)
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;; int32 _time
       (write-long _time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _task_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _task_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _task_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int32 _task_type
     (setq _task_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _task_state
     (setq _task_state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _task_state 127) (setq _task_state (- _task_state 256)))
   ;; int8 _action_type
     (setq _action_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _action_type 127) (setq _action_type (- _action_type 256)))
   ;; int8 _action_state
     (setq _action_state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _action_state 127) (setq _action_state (- _action_state 256)))
   ;; int8 _robot_state
     (setq _robot_state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _robot_state 127) (setq _robot_state (- _robot_state 256)))
   ;; int8 _robot_mode
     (setq _robot_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _robot_mode 127) (setq _robot_mode (- _robot_mode 256)))
   ;; int8 _work_mode
     (setq _work_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _work_mode 127) (setq _work_mode (- _work_mode 256)))
   ;; int32 _wait_id
     (setq _wait_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _dest
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dest (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _time
     (setq _time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get woosh_msgs::RobotStatus :md5sum-) "8f5b2fa7b958d521c2034a877d5d6e07")
(setf (get woosh_msgs::RobotStatus :datatype-) "woosh_msgs/RobotStatus")
(setf (get woosh_msgs::RobotStatus :definition-)
      "uint64 task_id           #任务id
int32 task_type          #任务类型, 0：未定义，1: 拣选， 2：泊车， 3： 充电，4： 搬运
int8 task_state         #任务状态，0: 未定义，3： 执行中，4： 暂停中，5： 动作等待， 7： 完成的，8：取消的， 9： 失败的
int8 action_type        #动作类型  0: 未定义，1：导航，2：单步控制，3：二次定位进入，4：二次定位退出，5：搬运动作，6：等待，7：充电
int8 action_state       #动作状态  0： 未定义，1： 执行中，2：警告，3：取消，4：完成，5：失败，10：暂停，11：管制
int8 robot_state        #机器人状态 0： 未定义，1：未初始化，2： 空闲，3：泊车中，4：任务中，5：警告，6：异常，8：充电中，9：构图中
int8 robot_mode         #机器人的模式 0：未定义，1：自动，2：手动，3：维护
int8 work_mode          #机器人工作模式 0: 未定义，1：部署模式，2：任务模式，3：调度模式
int32 wait_id           #动作等待ID
string dest             #目标点
string msg              #消息
int32 time              #最后更新时间(s)

")



(provide :woosh_msgs/RobotStatus "8f5b2fa7b958d521c2034a877d5d6e07")


