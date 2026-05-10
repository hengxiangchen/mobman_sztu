;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::SetMapServer)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'SetMapServer (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::SETMAPSERVER")
  (make-package "WOOSH_MSGS::SETMAPSERVER"))
(unless (find-package "WOOSH_MSGS::SETMAPSERVERREQUEST")
  (make-package "WOOSH_MSGS::SETMAPSERVERREQUEST"))
(unless (find-package "WOOSH_MSGS::SETMAPSERVERRESPONSE")
  (make-package "WOOSH_MSGS::SETMAPSERVERRESPONSE"))

(in-package "ROS")





(defclass woosh_msgs::SetMapServerRequest
  :super ros::object
  :slots (_startMapServer _pathName ))

(defmethod woosh_msgs::SetMapServerRequest
  (:init
   (&key
    ((:startMapServer __startMapServer) nil)
    ((:pathName __pathName) "")
    )
   (send-super :init)
   (setq _startMapServer __startMapServer)
   (setq _pathName (string __pathName))
   self)
  (:startMapServer
   (&optional (__startMapServer :null))
   (if (not (eq __startMapServer :null)) (setq _startMapServer __startMapServer)) _startMapServer)
  (:pathName
   (&optional __pathName)
   (if __pathName (setq _pathName __pathName)) _pathName)
  (:serialization-length
   ()
   (+
    ;; bool _startMapServer
    1
    ;; string _pathName
    4 (length _pathName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _startMapServer
       (if _startMapServer (write-byte -1 s) (write-byte 0 s))
     ;; string _pathName
       (write-long (length _pathName) s) (princ _pathName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _startMapServer
     (setq _startMapServer (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _pathName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pathName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass woosh_msgs::SetMapServerResponse
  :super ros::object
  :slots (_success _message ))

(defmethod woosh_msgs::SetMapServerResponse
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

(defclass woosh_msgs::SetMapServer
  :super ros::object
  :slots ())

(setf (get woosh_msgs::SetMapServer :md5sum-) "00ac068e4aec756233516c167301064c")
(setf (get woosh_msgs::SetMapServer :datatype-) "woosh_msgs/SetMapServer")
(setf (get woosh_msgs::SetMapServer :request) woosh_msgs::SetMapServerRequest)
(setf (get woosh_msgs::SetMapServer :response) woosh_msgs::SetMapServerResponse)

(defmethod woosh_msgs::SetMapServerRequest
  (:response () (instance woosh_msgs::SetMapServerResponse :init)))

(setf (get woosh_msgs::SetMapServerRequest :md5sum-) "00ac068e4aec756233516c167301064c")
(setf (get woosh_msgs::SetMapServerRequest :datatype-) "woosh_msgs/SetMapServerRequest")
(setf (get woosh_msgs::SetMapServerRequest :definition-)
      "# map_server

# true: call startServe() to start map server pub static map
# false: call stopServe() to stop publisher of map server
bool startMapServer

# Only for startMapServer == true. Leave empty for startMapServer == false
# use pathName to find .yaml
# pathName format can be [/abc/ddd/]filename[.yaml]
# if pathName == \"\", use last loaded pathName in map_server or failed
string pathName
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")

(setf (get woosh_msgs::SetMapServerResponse :md5sum-) "00ac068e4aec756233516c167301064c")
(setf (get woosh_msgs::SetMapServerResponse :datatype-) "woosh_msgs/SetMapServerResponse")
(setf (get woosh_msgs::SetMapServerResponse :definition-)
      "# map_server

# true: call startServe() to start map server pub static map
# false: call stopServe() to stop publisher of map server
bool startMapServer

# Only for startMapServer == true. Leave empty for startMapServer == false
# use pathName to find .yaml
# pathName format can be [/abc/ddd/]filename[.yaml]
# if pathName == \"\", use last loaded pathName in map_server or failed
string pathName
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")



(provide :woosh_msgs/SetMapServer "00ac068e4aec756233516c167301064c")


