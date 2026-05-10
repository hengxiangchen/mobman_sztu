;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::OdomCtrolAvoidObstacleFeedback)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'OdomCtrolAvoidObstacleFeedback (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::ODOMCTROLAVOIDOBSTACLEFEEDBACK")
  (make-package "WOOSH_MSGS::ODOMCTROLAVOIDOBSTACLEFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude OdomCtrolAvoidObstacleFeedback.msg.html


(intern "*EXECUTING*" (find-package "WOOSH_MSGS::ODOMCTROLAVOIDOBSTACLEFEEDBACK"))
(shadow '*EXECUTING* (find-package "WOOSH_MSGS::ODOMCTROLAVOIDOBSTACLEFEEDBACK"))
(defconstant woosh_msgs::OdomCtrolAvoidObstacleFeedback::*EXECUTING* 1)
(intern "*PAUSE*" (find-package "WOOSH_MSGS::ODOMCTROLAVOIDOBSTACLEFEEDBACK"))
(shadow '*PAUSE* (find-package "WOOSH_MSGS::ODOMCTROLAVOIDOBSTACLEFEEDBACK"))
(defconstant woosh_msgs::OdomCtrolAvoidObstacleFeedback::*PAUSE* 2)
(intern "*OBSTACLE_AVOIDING*" (find-package "WOOSH_MSGS::ODOMCTROLAVOIDOBSTACLEFEEDBACK"))
(shadow '*OBSTACLE_AVOIDING* (find-package "WOOSH_MSGS::ODOMCTROLAVOIDOBSTACLEFEEDBACK"))
(defconstant woosh_msgs::OdomCtrolAvoidObstacleFeedback::*OBSTACLE_AVOIDING* 10)
(intern "*AVOID_SUCCESS*" (find-package "WOOSH_MSGS::ODOMCTROLAVOIDOBSTACLEFEEDBACK"))
(shadow '*AVOID_SUCCESS* (find-package "WOOSH_MSGS::ODOMCTROLAVOIDOBSTACLEFEEDBACK"))
(defconstant woosh_msgs::OdomCtrolAvoidObstacleFeedback::*AVOID_SUCCESS* 11)
(intern "*ILLEGAL_GOAL*" (find-package "WOOSH_MSGS::ODOMCTROLAVOIDOBSTACLEFEEDBACK"))
(shadow '*ILLEGAL_GOAL* (find-package "WOOSH_MSGS::ODOMCTROLAVOIDOBSTACLEFEEDBACK"))
(defconstant woosh_msgs::OdomCtrolAvoidObstacleFeedback::*ILLEGAL_GOAL* 12)

(defun woosh_msgs::OdomCtrolAvoidObstacleFeedback-to-symbol (const)
  (cond
        ((= const 1) 'woosh_msgs::OdomCtrolAvoidObstacleFeedback::*EXECUTING*)
        ((= const 2) 'woosh_msgs::OdomCtrolAvoidObstacleFeedback::*PAUSE*)
        ((= const 10) 'woosh_msgs::OdomCtrolAvoidObstacleFeedback::*OBSTACLE_AVOIDING*)
        ((= const 11) 'woosh_msgs::OdomCtrolAvoidObstacleFeedback::*AVOID_SUCCESS*)
        ((= const 12) 'woosh_msgs::OdomCtrolAvoidObstacleFeedback::*ILLEGAL_GOAL*)
        (t nil)))

(defclass woosh_msgs::OdomCtrolAvoidObstacleFeedback
  :super ros::object
  :slots (_percent _err_msg _status _feedback ))

(defmethod woosh_msgs::OdomCtrolAvoidObstacleFeedback
  (:init
   (&key
    ((:percent __percent) 0.0)
    ((:err_msg __err_msg) 0)
    ((:status __status) 0)
    ((:feedback __feedback) 0)
    )
   (send-super :init)
   (setq _percent (float __percent))
   (setq _err_msg (round __err_msg))
   (setq _status (round __status))
   (setq _feedback (round __feedback))
   self)
  (:percent
   (&optional __percent)
   (if __percent (setq _percent __percent)) _percent)
  (:err_msg
   (&optional __err_msg)
   (if __err_msg (setq _err_msg __err_msg)) _err_msg)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:feedback
   (&optional __feedback)
   (if __feedback (setq _feedback __feedback)) _feedback)
  (:serialization-length
   ()
   (+
    ;; float32 _percent
    4
    ;; uint64 _err_msg
    8
    ;; int32 _status
    4
    ;; int32 _feedback
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _percent
       (sys::poke _percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint64 _err_msg
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _err_msg (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _err_msg) (= (length (_err_msg . bv)) 2)) ;; bignum
              (write-long (ash (elt (_err_msg . bv) 0) 0) s)
              (write-long (ash (elt (_err_msg . bv) 1) -1) s))
             ((and (class _err_msg) (= (length (_err_msg . bv)) 1)) ;; big1
              (write-long (elt (_err_msg . bv) 0) s)
              (write-long (if (>= _err_msg 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _err_msg s)(write-long (if (>= _err_msg 0) 0 #xffffffff) s)))
     ;; int32 _status
       (write-long _status s)
     ;; int32 _feedback
       (write-long _feedback s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _percent
     (setq _percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint64 _err_msg
     
#+(or :alpha :irix6 :x86_64)
      (setf _err_msg (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _err_msg (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _feedback
     (setq _feedback (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get woosh_msgs::OdomCtrolAvoidObstacleFeedback :md5sum-) "f0f985940761d338d6e262c1fdef5f6d")
(setf (get woosh_msgs::OdomCtrolAvoidObstacleFeedback :datatype-) "woosh_msgs/OdomCtrolAvoidObstacleFeedback")
(setf (get woosh_msgs::OdomCtrolAvoidObstacleFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
float32  percent

uint64    err_msg          #状态码

int32    status
int32    EXECUTING = 1
int32    PAUSE = 2

int32    feedback
int32    OBSTACLE_AVOIDING = 10
int32    AVOID_SUCCESS = 11
int32    ILLEGAL_GOAL = 12


")



(provide :woosh_msgs/OdomCtrolAvoidObstacleFeedback "f0f985940761d338d6e262c1fdef5f6d")


