;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::AutoDockResult)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'AutoDockResult (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::AUTODOCKRESULT")
  (make-package "WOOSH_MSGS::AUTODOCKRESULT"))

(in-package "ROS")
;;//! \htmlinclude AutoDockResult.msg.html


(intern "*CANCLE*" (find-package "WOOSH_MSGS::AUTODOCKRESULT"))
(shadow '*CANCLE* (find-package "WOOSH_MSGS::AUTODOCKRESULT"))
(defconstant woosh_msgs::AutoDockResult::*CANCLE* 1)
(intern "*SUCCESS*" (find-package "WOOSH_MSGS::AUTODOCKRESULT"))
(shadow '*SUCCESS* (find-package "WOOSH_MSGS::AUTODOCKRESULT"))
(defconstant woosh_msgs::AutoDockResult::*SUCCESS* 2)
(intern "*FAILED*" (find-package "WOOSH_MSGS::AUTODOCKRESULT"))
(shadow '*FAILED* (find-package "WOOSH_MSGS::AUTODOCKRESULT"))
(defconstant woosh_msgs::AutoDockResult::*FAILED* 3)
(intern "*LEFT*" (find-package "WOOSH_MSGS::AUTODOCKRESULT"))
(shadow '*LEFT* (find-package "WOOSH_MSGS::AUTODOCKRESULT"))
(defconstant woosh_msgs::AutoDockResult::*LEFT* 11)
(intern "*RIGHT*" (find-package "WOOSH_MSGS::AUTODOCKRESULT"))
(shadow '*RIGHT* (find-package "WOOSH_MSGS::AUTODOCKRESULT"))
(defconstant woosh_msgs::AutoDockResult::*RIGHT* 12)
(intern "*FRONT*" (find-package "WOOSH_MSGS::AUTODOCKRESULT"))
(shadow '*FRONT* (find-package "WOOSH_MSGS::AUTODOCKRESULT"))
(defconstant woosh_msgs::AutoDockResult::*FRONT* 13)
(intern "*BACK*" (find-package "WOOSH_MSGS::AUTODOCKRESULT"))
(shadow '*BACK* (find-package "WOOSH_MSGS::AUTODOCKRESULT"))
(defconstant woosh_msgs::AutoDockResult::*BACK* 14)

(defun woosh_msgs::AutoDockResult-to-symbol (const)
  (cond
        ((= const 1) 'woosh_msgs::AutoDockResult::*CANCLE*)
        ((= const 2) 'woosh_msgs::AutoDockResult::*SUCCESS*)
        ((= const 3) 'woosh_msgs::AutoDockResult::*FAILED*)
        ((= const 11) 'woosh_msgs::AutoDockResult::*LEFT*)
        ((= const 12) 'woosh_msgs::AutoDockResult::*RIGHT*)
        ((= const 13) 'woosh_msgs::AutoDockResult::*FRONT*)
        ((= const 14) 'woosh_msgs::AutoDockResult::*BACK*)
        (t nil)))

(defclass woosh_msgs::AutoDockResult
  :super ros::object
  :slots (_err_msg _result _roller_direction ))

(defmethod woosh_msgs::AutoDockResult
  (:init
   (&key
    ((:err_msg __err_msg) 0)
    ((:result __result) 0)
    ((:roller_direction __roller_direction) 0)
    )
   (send-super :init)
   (setq _err_msg (round __err_msg))
   (setq _result (round __result))
   (setq _roller_direction (round __roller_direction))
   self)
  (:err_msg
   (&optional __err_msg)
   (if __err_msg (setq _err_msg __err_msg)) _err_msg)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:roller_direction
   (&optional __roller_direction)
   (if __roller_direction (setq _roller_direction __roller_direction)) _roller_direction)
  (:serialization-length
   ()
   (+
    ;; uint64 _err_msg
    8
    ;; int32 _result
    4
    ;; uint8 _roller_direction
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
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
     ;; int32 _result
       (write-long _result s)
     ;; uint8 _roller_direction
       (write-byte _roller_direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _roller_direction
     (setq _roller_direction (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get woosh_msgs::AutoDockResult :md5sum-) "d8ec9fafe10e6a566804e6743191ffd0")
(setf (get woosh_msgs::AutoDockResult :datatype-) "woosh_msgs/AutoDockResult")
(setf (get woosh_msgs::AutoDockResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
uint64  err_msg

int32   result
int32   CANCLE = 1
int32   SUCCESS = 2
int32   FAILED = 3

uint8   roller_direction
uint8   LEFT = 11
uint8   RIGHT = 12
uint8   FRONT = 13
uint8   BACK = 14

")



(provide :woosh_msgs/AutoDockResult "d8ec9fafe10e6a566804e6743191ffd0")


