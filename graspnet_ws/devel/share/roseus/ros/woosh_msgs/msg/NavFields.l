;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::NavFields)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'NavFields (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::NAVFIELDS")
  (make-package "WOOSH_MSGS::NAVFIELDS"))

(in-package "ROS")
;;//! \htmlinclude NavFields.msg.html


(defclass woosh_msgs::NavFields
  :super ros::object
  :slots (_fields ))

(defmethod woosh_msgs::NavFields
  (:init
   (&key
    ((:fields __fields) ())
    )
   (send-super :init)
   (setq _fields __fields)
   self)
  (:fields
   (&rest __fields)
   (if (keywordp (car __fields))
       (send* _fields __fields)
     (progn
       (if __fields (setq _fields (car __fields)))
       _fields)))
  (:serialization-length
   ()
   (+
    ;; woosh_msgs/Field[] _fields
    (apply #'+ (send-all _fields :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; woosh_msgs/Field[] _fields
     (write-long (length _fields) s)
     (dolist (elem _fields)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; woosh_msgs/Field[] _fields
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fields (let (r) (dotimes (i n) (push (instance woosh_msgs::Field :init) r)) r))
     (dolist (elem- _fields)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get woosh_msgs::NavFields :md5sum-) "01039fb61b56e051721719ac2301c854")
(setf (get woosh_msgs::NavFields :datatype-) "woosh_msgs/NavFields")
(setf (get woosh_msgs::NavFields :definition-)
      "Field[] fields

================================================================================
MSG: woosh_msgs/Field
uint32 id		#通道id
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



(provide :woosh_msgs/NavFields "01039fb61b56e051721719ac2301c854")


