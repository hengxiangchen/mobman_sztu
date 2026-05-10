;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::PathesGraph)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'PathesGraph (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::PATHESGRAPH")
  (make-package "WOOSH_MSGS::PATHESGRAPH"))

(in-package "ROS")
;;//! \htmlinclude PathesGraph.msg.html


(defclass woosh_msgs::PathesGraph
  :super ros::object
  :slots (_vertices _edges ))

(defmethod woosh_msgs::PathesGraph
  (:init
   (&key
    ((:vertices __vertices) ())
    ((:edges __edges) ())
    )
   (send-super :init)
   (setq _vertices __vertices)
   (setq _edges __edges)
   self)
  (:vertices
   (&rest __vertices)
   (if (keywordp (car __vertices))
       (send* _vertices __vertices)
     (progn
       (if __vertices (setq _vertices (car __vertices)))
       _vertices)))
  (:edges
   (&rest __edges)
   (if (keywordp (car __edges))
       (send* _edges __edges)
     (progn
       (if __edges (setq _edges (car __edges)))
       _edges)))
  (:serialization-length
   ()
   (+
    ;; woosh_msgs/GraphVertex[] _vertices
    (apply #'+ (send-all _vertices :serialization-length)) 4
    ;; woosh_msgs/GraphEdge[] _edges
    (apply #'+ (send-all _edges :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; woosh_msgs/GraphVertex[] _vertices
     (write-long (length _vertices) s)
     (dolist (elem _vertices)
       (send elem :serialize s)
       )
     ;; woosh_msgs/GraphEdge[] _edges
     (write-long (length _edges) s)
     (dolist (elem _edges)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; woosh_msgs/GraphVertex[] _vertices
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vertices (let (r) (dotimes (i n) (push (instance woosh_msgs::GraphVertex :init) r)) r))
     (dolist (elem- _vertices)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; woosh_msgs/GraphEdge[] _edges
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _edges (let (r) (dotimes (i n) (push (instance woosh_msgs::GraphEdge :init) r)) r))
     (dolist (elem- _edges)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get woosh_msgs::PathesGraph :md5sum-) "9a8d1368b575e04ad9be7364531b9b65")
(setf (get woosh_msgs::PathesGraph :datatype-) "woosh_msgs/PathesGraph")
(setf (get woosh_msgs::PathesGraph :definition-)
      "GraphVertex[] vertices	#节点集合
GraphEdge[] edges	#边集合

================================================================================
MSG: woosh_msgs/GraphVertex
NavFieldPoint mark
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

================================================================================
MSG: woosh_msgs/GraphEdge
uint32 source		#边源marker的id
uint32 target		#边汇marker的id
uint32 field_id		#边所在域的id，如果边不在域内，则id为0
float32 weight		#边权重，主要影响路径规划
float32 busy_level	#繁忙系数，越大，路径规划器更不倾向选择该边
float32 path_length	#路径长度
nav_msgs/Path path	#边路径点

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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



(provide :woosh_msgs/PathesGraph "9a8d1368b575e04ad9be7364531b9b65")


