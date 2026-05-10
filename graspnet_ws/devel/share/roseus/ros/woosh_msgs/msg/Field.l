;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::Field)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'Field (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::FIELD")
  (make-package "WOOSH_MSGS::FIELD"))

(in-package "ROS")
;;//! \htmlinclude Field.msg.html


(defclass woosh_msgs::Field
  :super ros::object
  :slots (_id _type _slope_angle _slope_arrow _capacity _wait_time_out _nav_mode _max_speed _direction _radius _offset _vertex _nav_pos _entry _extrance ))

(defmethod woosh_msgs::Field
  (:init
   (&key
    ((:id __id) 0)
    ((:type __type) 0)
    ((:slope_angle __slope_angle) 0.0)
    ((:slope_arrow __slope_arrow) (instance woosh_msgs::NavFieldPoint :init))
    ((:capacity __capacity) 0)
    ((:wait_time_out __wait_time_out) 0.0)
    ((:nav_mode __nav_mode) 0)
    ((:max_speed __max_speed) 0.0)
    ((:direction __direction) 0)
    ((:radius __radius) 0.0)
    ((:offset __offset) 0.0)
    ((:vertex __vertex) ())
    ((:nav_pos __nav_pos) ())
    ((:entry __entry) (instance woosh_msgs::NavFieldPoint :init))
    ((:extrance __extrance) (instance woosh_msgs::NavFieldPoint :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _type (round __type))
   (setq _slope_angle (float __slope_angle))
   (setq _slope_arrow __slope_arrow)
   (setq _capacity (round __capacity))
   (setq _wait_time_out (float __wait_time_out))
   (setq _nav_mode (round __nav_mode))
   (setq _max_speed (float __max_speed))
   (setq _direction (round __direction))
   (setq _radius (float __radius))
   (setq _offset (float __offset))
   (setq _vertex __vertex)
   (setq _nav_pos __nav_pos)
   (setq _entry __entry)
   (setq _extrance __extrance)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:slope_angle
   (&optional __slope_angle)
   (if __slope_angle (setq _slope_angle __slope_angle)) _slope_angle)
  (:slope_arrow
   (&rest __slope_arrow)
   (if (keywordp (car __slope_arrow))
       (send* _slope_arrow __slope_arrow)
     (progn
       (if __slope_arrow (setq _slope_arrow (car __slope_arrow)))
       _slope_arrow)))
  (:capacity
   (&optional __capacity)
   (if __capacity (setq _capacity __capacity)) _capacity)
  (:wait_time_out
   (&optional __wait_time_out)
   (if __wait_time_out (setq _wait_time_out __wait_time_out)) _wait_time_out)
  (:nav_mode
   (&optional __nav_mode)
   (if __nav_mode (setq _nav_mode __nav_mode)) _nav_mode)
  (:max_speed
   (&optional __max_speed)
   (if __max_speed (setq _max_speed __max_speed)) _max_speed)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:vertex
   (&rest __vertex)
   (if (keywordp (car __vertex))
       (send* _vertex __vertex)
     (progn
       (if __vertex (setq _vertex (car __vertex)))
       _vertex)))
  (:nav_pos
   (&rest __nav_pos)
   (if (keywordp (car __nav_pos))
       (send* _nav_pos __nav_pos)
     (progn
       (if __nav_pos (setq _nav_pos (car __nav_pos)))
       _nav_pos)))
  (:entry
   (&rest __entry)
   (if (keywordp (car __entry))
       (send* _entry __entry)
     (progn
       (if __entry (setq _entry (car __entry)))
       _entry)))
  (:extrance
   (&rest __extrance)
   (if (keywordp (car __extrance))
       (send* _extrance __extrance)
     (progn
       (if __extrance (setq _extrance (car __extrance)))
       _extrance)))
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; int32 _type
    4
    ;; float32 _slope_angle
    4
    ;; woosh_msgs/NavFieldPoint _slope_arrow
    (send _slope_arrow :serialization-length)
    ;; int32 _capacity
    4
    ;; float32 _wait_time_out
    4
    ;; int32 _nav_mode
    4
    ;; float32 _max_speed
    4
    ;; int32 _direction
    4
    ;; float32 _radius
    4
    ;; float32 _offset
    4
    ;; woosh_msgs/NavFieldPoint[] _vertex
    (apply #'+ (send-all _vertex :serialization-length)) 4
    ;; woosh_msgs/NavFieldPoint[] _nav_pos
    (apply #'+ (send-all _nav_pos :serialization-length)) 4
    ;; woosh_msgs/NavFieldPoint _entry
    (send _entry :serialization-length)
    ;; woosh_msgs/NavFieldPoint _extrance
    (send _extrance :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; int32 _type
       (write-long _type s)
     ;; float32 _slope_angle
       (sys::poke _slope_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; woosh_msgs/NavFieldPoint _slope_arrow
       (send _slope_arrow :serialize s)
     ;; int32 _capacity
       (write-long _capacity s)
     ;; float32 _wait_time_out
       (sys::poke _wait_time_out (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _nav_mode
       (write-long _nav_mode s)
     ;; float32 _max_speed
       (sys::poke _max_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _direction
       (write-long _direction s)
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _offset
       (sys::poke _offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; woosh_msgs/NavFieldPoint[] _vertex
     (write-long (length _vertex) s)
     (dolist (elem _vertex)
       (send elem :serialize s)
       )
     ;; woosh_msgs/NavFieldPoint[] _nav_pos
     (write-long (length _nav_pos) s)
     (dolist (elem _nav_pos)
       (send elem :serialize s)
       )
     ;; woosh_msgs/NavFieldPoint _entry
       (send _entry :serialize s)
     ;; woosh_msgs/NavFieldPoint _extrance
       (send _extrance :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _slope_angle
     (setq _slope_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; woosh_msgs/NavFieldPoint _slope_arrow
     (send _slope_arrow :deserialize buf ptr-) (incf ptr- (send _slope_arrow :serialization-length))
   ;; int32 _capacity
     (setq _capacity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _wait_time_out
     (setq _wait_time_out (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _nav_mode
     (setq _nav_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _max_speed
     (setq _max_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _direction
     (setq _direction (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _offset
     (setq _offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; woosh_msgs/NavFieldPoint[] _vertex
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vertex (let (r) (dotimes (i n) (push (instance woosh_msgs::NavFieldPoint :init) r)) r))
     (dolist (elem- _vertex)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; woosh_msgs/NavFieldPoint[] _nav_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _nav_pos (let (r) (dotimes (i n) (push (instance woosh_msgs::NavFieldPoint :init) r)) r))
     (dolist (elem- _nav_pos)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; woosh_msgs/NavFieldPoint _entry
     (send _entry :deserialize buf ptr-) (incf ptr- (send _entry :serialization-length))
   ;; woosh_msgs/NavFieldPoint _extrance
     (send _extrance :deserialize buf ptr-) (incf ptr- (send _extrance :serialization-length))
   ;;
   self)
  )

(setf (get woosh_msgs::Field :md5sum-) "cd1f433a6719ae3939066ca26b7c7b36")
(setf (get woosh_msgs::Field :datatype-) "woosh_msgs/Field")
(setf (get woosh_msgs::Field :definition-)
      "uint32 id		#通道id
int32 type		#通道类型, 双行道=0,单行道=1,单向道=2,路口=3, 狭窄通道=4,定位域=5,爬坡域=6,Odom域=7
float32 slope_angle 	#爬坡域角度
NavFieldPoint slope_arrow   #爬坡域箭头位姿
int32 capacity		#通道容量
float32 wait_time_out	#停等超时模式下的超时时间
int32 nav_mode		#导航模式,模糊避让=0,精准避让=1,停等=2,停等超时=3, 狭窄通道=10, 磁条导航=11, 二维码导航=12
float32 max_speed		#通道最高速度,设为0,则不约束最高速度,非0则以设定的速度为机器人在该通道的最高速度
int32 direction		#单向道的方向
float32 radius  #半径
float32 offset  # 偏移
NavFieldPoint[] vertex	#域顶点
NavFieldPoint[] nav_pos	#域中引导点数组,单向道中引导点的存储顺序决定其方向，数组里点的id有效
NavFieldPoint entry	#单向道入口
NavFieldPoint extrance	#单向道出口

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



(provide :woosh_msgs/Field "cd1f433a6719ae3939066ca26b7c7b36")


