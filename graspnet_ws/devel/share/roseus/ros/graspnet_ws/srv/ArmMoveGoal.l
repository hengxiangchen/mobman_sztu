;; Auto-generated. Do not edit!


(when (boundp 'graspnet_ws::ArmMoveGoal)
  (if (not (find-package "GRASPNET_WS"))
    (make-package "GRASPNET_WS"))
  (shadow 'ArmMoveGoal (find-package "GRASPNET_WS")))
(unless (find-package "GRASPNET_WS::ARMMOVEGOAL")
  (make-package "GRASPNET_WS::ARMMOVEGOAL"))
(unless (find-package "GRASPNET_WS::ARMMOVEGOALREQUEST")
  (make-package "GRASPNET_WS::ARMMOVEGOALREQUEST"))
(unless (find-package "GRASPNET_WS::ARMMOVEGOALRESPONSE")
  (make-package "GRASPNET_WS::ARMMOVEGOALRESPONSE"))

(in-package "ROS")





(defclass graspnet_ws::ArmMoveGoalRequest
  :super ros::object
  :slots (_array1 _array2 ))

(defmethod graspnet_ws::ArmMoveGoalRequest
  (:init
   (&key
    ((:array1 __array1) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:array2 __array2) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _array1 __array1)
   (setq _array2 __array2)
   self)
  (:array1
   (&optional __array1)
   (if __array1 (setq _array1 __array1)) _array1)
  (:array2
   (&optional __array2)
   (if __array2 (setq _array2 __array2)) _array2)
  (:serialization-length
   ()
   (+
    ;; float64[] _array1
    (* 8    (length _array1)) 4
    ;; float64[] _array2
    (* 8    (length _array2)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _array1
     (write-long (length _array1) s)
     (dotimes (i (length _array1))
       (sys::poke (elt _array1 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _array2
     (write-long (length _array2) s)
     (dotimes (i (length _array2))
       (sys::poke (elt _array2 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _array1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _array1 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _array1 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _array2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _array2 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _array2 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass graspnet_ws::ArmMoveGoalResponse
  :super ros::object
  :slots (_success _message ))

(defmethod graspnet_ws::ArmMoveGoalResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass graspnet_ws::ArmMoveGoal
  :super ros::object
  :slots ())

(setf (get graspnet_ws::ArmMoveGoal :md5sum-) "e703bc5a1f2ac12df2a6a9e2abd0ba96")
(setf (get graspnet_ws::ArmMoveGoal :datatype-) "graspnet_ws/ArmMoveGoal")
(setf (get graspnet_ws::ArmMoveGoal :request) graspnet_ws::ArmMoveGoalRequest)
(setf (get graspnet_ws::ArmMoveGoal :response) graspnet_ws::ArmMoveGoalResponse)

(defmethod graspnet_ws::ArmMoveGoalRequest
  (:response () (instance graspnet_ws::ArmMoveGoalResponse :init)))

(setf (get graspnet_ws::ArmMoveGoalRequest :md5sum-) "e703bc5a1f2ac12df2a6a9e2abd0ba96")
(setf (get graspnet_ws::ArmMoveGoalRequest :datatype-) "graspnet_ws/ArmMoveGoalRequest")
(setf (get graspnet_ws::ArmMoveGoalRequest :definition-)
      "float64[] array1
float64[] array2
---
bool success
string message



")

(setf (get graspnet_ws::ArmMoveGoalResponse :md5sum-) "e703bc5a1f2ac12df2a6a9e2abd0ba96")
(setf (get graspnet_ws::ArmMoveGoalResponse :datatype-) "graspnet_ws/ArmMoveGoalResponse")
(setf (get graspnet_ws::ArmMoveGoalResponse :definition-)
      "float64[] array1
float64[] array2
---
bool success
string message



")



(provide :graspnet_ws/ArmMoveGoal "e703bc5a1f2ac12df2a6a9e2abd0ba96")


