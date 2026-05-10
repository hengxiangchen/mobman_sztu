;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::AutoDock2Result)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'AutoDock2Result (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::AUTODOCK2RESULT")
  (make-package "WOOSH_MSGS::AUTODOCK2RESULT"))

(in-package "ROS")
;;//! \htmlinclude AutoDock2Result.msg.html


(intern "*CANCLE*" (find-package "WOOSH_MSGS::AUTODOCK2RESULT"))
(shadow '*CANCLE* (find-package "WOOSH_MSGS::AUTODOCK2RESULT"))
(defconstant woosh_msgs::AutoDock2Result::*CANCLE* 1)
(intern "*SUCCESS*" (find-package "WOOSH_MSGS::AUTODOCK2RESULT"))
(shadow '*SUCCESS* (find-package "WOOSH_MSGS::AUTODOCK2RESULT"))
(defconstant woosh_msgs::AutoDock2Result::*SUCCESS* 2)
(intern "*FAILED*" (find-package "WOOSH_MSGS::AUTODOCK2RESULT"))
(shadow '*FAILED* (find-package "WOOSH_MSGS::AUTODOCK2RESULT"))
(defconstant woosh_msgs::AutoDock2Result::*FAILED* 3)
(intern "*EMPTY*" (find-package "WOOSH_MSGS::AUTODOCK2RESULT"))
(shadow '*EMPTY* (find-package "WOOSH_MSGS::AUTODOCK2RESULT"))
(defconstant woosh_msgs::AutoDock2Result::*EMPTY* 0)
(intern "*LEFT*" (find-package "WOOSH_MSGS::AUTODOCK2RESULT"))
(shadow '*LEFT* (find-package "WOOSH_MSGS::AUTODOCK2RESULT"))
(defconstant woosh_msgs::AutoDock2Result::*LEFT* 1)
(intern "*RIGHT*" (find-package "WOOSH_MSGS::AUTODOCK2RESULT"))
(shadow '*RIGHT* (find-package "WOOSH_MSGS::AUTODOCK2RESULT"))
(defconstant woosh_msgs::AutoDock2Result::*RIGHT* 2)
(intern "*FRONT*" (find-package "WOOSH_MSGS::AUTODOCK2RESULT"))
(shadow '*FRONT* (find-package "WOOSH_MSGS::AUTODOCK2RESULT"))
(defconstant woosh_msgs::AutoDock2Result::*FRONT* 3)
(intern "*BACK*" (find-package "WOOSH_MSGS::AUTODOCK2RESULT"))
(shadow '*BACK* (find-package "WOOSH_MSGS::AUTODOCK2RESULT"))
(defconstant woosh_msgs::AutoDock2Result::*BACK* 4)

(defun woosh_msgs::AutoDock2Result-to-symbol (const)
  (cond
        ((= const 1) 'woosh_msgs::AutoDock2Result::*CANCLE*)
        ((= const 2) 'woosh_msgs::AutoDock2Result::*SUCCESS*)
        ((= const 3) 'woosh_msgs::AutoDock2Result::*FAILED*)
        ((= const 0) 'woosh_msgs::AutoDock2Result::*EMPTY*)
        ((= const 1) 'woosh_msgs::AutoDock2Result::*LEFT*)
        ((= const 2) 'woosh_msgs::AutoDock2Result::*RIGHT*)
        ((= const 3) 'woosh_msgs::AutoDock2Result::*FRONT*)
        ((= const 4) 'woosh_msgs::AutoDock2Result::*BACK*)
        (t nil)))

(defclass woosh_msgs::AutoDock2Result
  :super ros::object
  :slots (_err_msg _result _feature_direction ))

(defmethod woosh_msgs::AutoDock2Result
  (:init
   (&key
    ((:err_msg __err_msg) 0)
    ((:result __result) 0)
    ((:feature_direction __feature_direction) 0)
    )
   (send-super :init)
   (setq _err_msg (round __err_msg))
   (setq _result (round __result))
   (setq _feature_direction (round __feature_direction))
   self)
  (:err_msg
   (&optional __err_msg)
   (if __err_msg (setq _err_msg __err_msg)) _err_msg)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:feature_direction
   (&optional __feature_direction)
   (if __feature_direction (setq _feature_direction __feature_direction)) _feature_direction)
  (:serialization-length
   ()
   (+
    ;; uint64 _err_msg
    8
    ;; int8 _result
    1
    ;; uint8 _feature_direction
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
     ;; int8 _result
       (write-byte _result s)
     ;; uint8 _feature_direction
       (write-byte _feature_direction s)
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
   ;; int8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _result 127) (setq _result (- _result 256)))
   ;; uint8 _feature_direction
     (setq _feature_direction (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get woosh_msgs::AutoDock2Result :md5sum-) "0629474088e26e08f4eb21fd510f593f")
(setf (get woosh_msgs::AutoDock2Result :datatype-) "woosh_msgs/AutoDock2Result")
(setf (get woosh_msgs::AutoDock2Result :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
uint64  err_msg

int8    result
int8    CANCLE = 1
int8    SUCCESS = 2
int8    FAILED = 3

uint8   feature_direction
uint8   EMPTY = 0
uint8   LEFT = 1
uint8   RIGHT = 2
uint8   FRONT = 3
uint8   BACK = 4

")



(provide :woosh_msgs/AutoDock2Result "0629474088e26e08f4eb21fd510f593f")


