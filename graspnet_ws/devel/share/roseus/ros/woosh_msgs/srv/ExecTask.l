;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::ExecTask)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'ExecTask (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::EXECTASK")
  (make-package "WOOSH_MSGS::EXECTASK"))
(unless (find-package "WOOSH_MSGS::EXECTASKREQUEST")
  (make-package "WOOSH_MSGS::EXECTASKREQUEST"))
(unless (find-package "WOOSH_MSGS::EXECTASKRESPONSE")
  (make-package "WOOSH_MSGS::EXECTASKRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass woosh_msgs::ExecTaskRequest
  :super ros::object
  :slots (_task_exect _task_id _task_type _direction _task_type_no _mark_no _poses _custom ))

(defmethod woosh_msgs::ExecTaskRequest
  (:init
   (&key
    ((:task_exect __task_exect) 0)
    ((:task_id __task_id) 0)
    ((:task_type __task_type) 0)
    ((:direction __direction) 0)
    ((:task_type_no __task_type_no) 0)
    ((:mark_no __mark_no) "")
    ((:poses __poses) ())
    ((:custom __custom) 0)
    )
   (send-super :init)
   (setq _task_exect (round __task_exect))
   (setq _task_id (round __task_id))
   (setq _task_type (round __task_type))
   (setq _direction (round __direction))
   (setq _task_type_no (round __task_type_no))
   (setq _mark_no (string __mark_no))
   (setq _poses __poses)
   (setq _custom (round __custom))
   self)
  (:task_exect
   (&optional __task_exect)
   (if __task_exect (setq _task_exect __task_exect)) _task_exect)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:task_type
   (&optional __task_type)
   (if __task_type (setq _task_type __task_type)) _task_type)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:task_type_no
   (&optional __task_type_no)
   (if __task_type_no (setq _task_type_no __task_type_no)) _task_type_no)
  (:mark_no
   (&optional __mark_no)
   (if __mark_no (setq _mark_no __mark_no)) _mark_no)
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:custom
   (&optional __custom)
   (if __custom (setq _custom __custom)) _custom)
  (:serialization-length
   ()
   (+
    ;; uint8 _task_exect
    1
    ;; int64 _task_id
    8
    ;; uint8 _task_type
    1
    ;; uint8 _direction
    1
    ;; uint32 _task_type_no
    4
    ;; string _mark_no
    4 (length _mark_no)
    ;; geometry_msgs/PoseStamped[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ;; byte _custom
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _task_exect
       (write-byte _task_exect s)
     ;; int64 _task_id
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
     ;; uint8 _task_type
       (write-byte _task_type s)
     ;; uint8 _direction
       (write-byte _direction s)
     ;; uint32 _task_type_no
       (write-long _task_type_no s)
     ;; string _mark_no
       (write-long (length _mark_no) s) (princ _mark_no s)
     ;; geometry_msgs/PoseStamped[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;; byte _custom
       (write-byte _custom s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _task_exect
     (setq _task_exect (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int64 _task_id
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
   ;; uint8 _task_type
     (setq _task_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _direction
     (setq _direction (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _task_type_no
     (setq _task_type_no (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _mark_no
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mark_no (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseStamped :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; byte _custom
     (setq _custom (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _custom 127) (setq _custom (- _custom 256)))
   ;;
   self)
  )

(defclass woosh_msgs::ExecTaskResponse
  :super ros::object
  :slots (_success _message _statusCode ))

(defmethod woosh_msgs::ExecTaskResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:statusCode __statusCode) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _statusCode (round __statusCode))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:statusCode
   (&optional __statusCode)
   (if __statusCode (setq _statusCode __statusCode)) _statusCode)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; uint64 _statusCode
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; uint64 _statusCode
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _statusCode (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _statusCode) (= (length (_statusCode . bv)) 2)) ;; bignum
              (write-long (ash (elt (_statusCode . bv) 0) 0) s)
              (write-long (ash (elt (_statusCode . bv) 1) -1) s))
             ((and (class _statusCode) (= (length (_statusCode . bv)) 1)) ;; big1
              (write-long (elt (_statusCode . bv) 0) s)
              (write-long (if (>= _statusCode 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _statusCode s)(write-long (if (>= _statusCode 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint64 _statusCode
     
#+(or :alpha :irix6 :x86_64)
      (setf _statusCode (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _statusCode (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass woosh_msgs::ExecTask
  :super ros::object
  :slots ())

(setf (get woosh_msgs::ExecTask :md5sum-) "22be4bcc7dfdb3b89d96a915d92d36fc")
(setf (get woosh_msgs::ExecTask :datatype-) "woosh_msgs/ExecTask")
(setf (get woosh_msgs::ExecTask :request) woosh_msgs::ExecTaskRequest)
(setf (get woosh_msgs::ExecTask :response) woosh_msgs::ExecTaskResponse)

(defmethod woosh_msgs::ExecTaskRequest
  (:response () (instance woosh_msgs::ExecTaskResponse :init)))

(setf (get woosh_msgs::ExecTaskRequest :md5sum-) "22be4bcc7dfdb3b89d96a915d92d36fc")
(setf (get woosh_msgs::ExecTaskRequest :datatype-) "woosh_msgs/ExecTaskRequest")
(setf (get woosh_msgs::ExecTaskRequest :definition-)
      "uint8 task_exect      #任务执行请求，1： 执行，2：暂停，3： 继续， 4：取消, 6:等待打断
int64 task_id         #任务ID
uint8 task_type       #任务类型, 1: 拣选 2：泊车 3： 充电  4： 搬运
uint8 direction       #动作方向, 0： 未定义 1： 上料  2：下料, 不是上下料任务填0，可选项
uint32 task_type_no   #类型组合,默认0，自定义，可选项
string mark_no        #目标点（储位）编号，如果填写编号，则 任务路经项 可以不用填写，若要填写,任务路经的最后一个点，必须和此储位点一致
geometry_msgs/PoseStamped[] poses #任务路经，如果是一个点（目标点），则表示由系统自己规划，最总到达此目标点，可选项
byte custom           # 自定义字段，因项目而异，可选项

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

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
---
bool success   #执行成功/失败，
string message # informational, e.g. for error messages
uint64 statusCode #状态码  1:未初始化，2：空闲，3：泊车中，4：任务中，5：警告，6：异常，8：充电中，9：构图中


")

(setf (get woosh_msgs::ExecTaskResponse :md5sum-) "22be4bcc7dfdb3b89d96a915d92d36fc")
(setf (get woosh_msgs::ExecTaskResponse :datatype-) "woosh_msgs/ExecTaskResponse")
(setf (get woosh_msgs::ExecTaskResponse :definition-)
      "uint8 task_exect      #任务执行请求，1： 执行，2：暂停，3： 继续， 4：取消, 6:等待打断
int64 task_id         #任务ID
uint8 task_type       #任务类型, 1: 拣选 2：泊车 3： 充电  4： 搬运
uint8 direction       #动作方向, 0： 未定义 1： 上料  2：下料, 不是上下料任务填0，可选项
uint32 task_type_no   #类型组合,默认0，自定义，可选项
string mark_no        #目标点（储位）编号，如果填写编号，则 任务路经项 可以不用填写，若要填写,任务路经的最后一个点，必须和此储位点一致
geometry_msgs/PoseStamped[] poses #任务路经，如果是一个点（目标点），则表示由系统自己规划，最总到达此目标点，可选项
byte custom           # 自定义字段，因项目而异，可选项

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

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
---
bool success   #执行成功/失败，
string message # informational, e.g. for error messages
uint64 statusCode #状态码  1:未初始化，2：空闲，3：泊车中，4：任务中，5：警告，6：异常，8：充电中，9：构图中


")



(provide :woosh_msgs/ExecTask "22be4bcc7dfdb3b89d96a915d92d36fc")


