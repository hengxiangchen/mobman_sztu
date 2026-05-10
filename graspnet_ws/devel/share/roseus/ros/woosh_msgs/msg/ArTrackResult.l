;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::ArTrackResult)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'ArTrackResult (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::ARTRACKRESULT")
  (make-package "WOOSH_MSGS::ARTRACKRESULT"))

(in-package "ROS")
;;//! \htmlinclude ArTrackResult.msg.html


(intern "*SUCCESS*" (find-package "WOOSH_MSGS::ARTRACKRESULT"))
(shadow '*SUCCESS* (find-package "WOOSH_MSGS::ARTRACKRESULT"))
(defconstant woosh_msgs::ArTrackResult::*SUCCESS* 0)
(intern "*FAIL*" (find-package "WOOSH_MSGS::ARTRACKRESULT"))
(shadow '*FAIL* (find-package "WOOSH_MSGS::ARTRACKRESULT"))
(defconstant woosh_msgs::ArTrackResult::*FAIL* 1)
(intern "*CANCEL*" (find-package "WOOSH_MSGS::ARTRACKRESULT"))
(shadow '*CANCEL* (find-package "WOOSH_MSGS::ARTRACKRESULT"))
(defconstant woosh_msgs::ArTrackResult::*CANCEL* 2)

(defun woosh_msgs::ArTrackResult-to-symbol (const)
  (cond
        ((= const 0) 'woosh_msgs::ArTrackResult::*SUCCESS*)
        ((= const 1) 'woosh_msgs::ArTrackResult::*FAIL*)
        ((= const 2) 'woosh_msgs::ArTrackResult::*CANCEL*)
        (t nil)))

(defclass woosh_msgs::ArTrackResult
  :super ros::object
  :slots (_result _tag_number _ArTagPose _statusCode ))

(defmethod woosh_msgs::ArTrackResult
  (:init
   (&key
    ((:result __result) 0)
    ((:tag_number __tag_number) 0)
    ((:ArTagPose __ArTagPose) ())
    ((:statusCode __statusCode) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _tag_number (round __tag_number))
   (setq _ArTagPose __ArTagPose)
   (setq _statusCode (round __statusCode))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:tag_number
   (&optional __tag_number)
   (if __tag_number (setq _tag_number __tag_number)) _tag_number)
  (:ArTagPose
   (&rest __ArTagPose)
   (if (keywordp (car __ArTagPose))
       (send* _ArTagPose __ArTagPose)
     (progn
       (if __ArTagPose (setq _ArTagPose (car __ArTagPose)))
       _ArTagPose)))
  (:statusCode
   (&optional __statusCode)
   (if __statusCode (setq _statusCode __statusCode)) _statusCode)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; int32 _tag_number
    4
    ;; woosh_msgs/ArTagPose[] _ArTagPose
    (apply #'+ (send-all _ArTagPose :serialization-length)) 4
    ;; uint64 _statusCode
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; int32 _tag_number
       (write-long _tag_number s)
     ;; woosh_msgs/ArTagPose[] _ArTagPose
     (write-long (length _ArTagPose) s)
     (dolist (elem _ArTagPose)
       (send elem :serialize s)
       )
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
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _tag_number
     (setq _tag_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; woosh_msgs/ArTagPose[] _ArTagPose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ArTagPose (let (r) (dotimes (i n) (push (instance woosh_msgs::ArTagPose :init) r)) r))
     (dolist (elem- _ArTagPose)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
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

(setf (get woosh_msgs::ArTrackResult :md5sum-) "8a00c2c504b30b330655ba9e3b095785")
(setf (get woosh_msgs::ArTrackResult :datatype-) "woosh_msgs/ArTrackResult")
(setf (get woosh_msgs::ArTrackResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the result
int32 result
int32 SUCCESS = 0 #成功
int32 FAIL = 1  #失败
int32 CANCEL = 2 #取消

int32 tag_number #识别到二维码的数量
woosh_msgs/ArTagPose[] ArTagPose #二维码的ID和相对于base_footprint的位姿，以及导航点的x,y,θ
uint64 statusCode #状态码

================================================================================
MSG: woosh_msgs/ArTagPose
geometry_msgs/Point distination
geometry_msgs/Pose tag_pose
int32 tag_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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



(provide :woosh_msgs/ArTrackResult "8a00c2c504b30b330655ba9e3b095785")


