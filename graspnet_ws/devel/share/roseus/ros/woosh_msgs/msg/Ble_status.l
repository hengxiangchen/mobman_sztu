;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::Ble_status)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'Ble_status (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::BLE_STATUS")
  (make-package "WOOSH_MSGS::BLE_STATUS"))

(in-package "ROS")
;;//! \htmlinclude Ble_status.msg.html


(defclass woosh_msgs::Ble_status
  :super ros::object
  :slots (_isConnected _isPaired _onPairing _target_mac _target_magic ))

(defmethod woosh_msgs::Ble_status
  (:init
   (&key
    ((:isConnected __isConnected) nil)
    ((:isPaired __isPaired) nil)
    ((:onPairing __onPairing) nil)
    ((:target_mac __target_mac) "")
    ((:target_magic __target_magic) "")
    )
   (send-super :init)
   (setq _isConnected __isConnected)
   (setq _isPaired __isPaired)
   (setq _onPairing __onPairing)
   (setq _target_mac (string __target_mac))
   (setq _target_magic (string __target_magic))
   self)
  (:isConnected
   (&optional (__isConnected :null))
   (if (not (eq __isConnected :null)) (setq _isConnected __isConnected)) _isConnected)
  (:isPaired
   (&optional (__isPaired :null))
   (if (not (eq __isPaired :null)) (setq _isPaired __isPaired)) _isPaired)
  (:onPairing
   (&optional (__onPairing :null))
   (if (not (eq __onPairing :null)) (setq _onPairing __onPairing)) _onPairing)
  (:target_mac
   (&optional __target_mac)
   (if __target_mac (setq _target_mac __target_mac)) _target_mac)
  (:target_magic
   (&optional __target_magic)
   (if __target_magic (setq _target_magic __target_magic)) _target_magic)
  (:serialization-length
   ()
   (+
    ;; bool _isConnected
    1
    ;; bool _isPaired
    1
    ;; bool _onPairing
    1
    ;; string _target_mac
    4 (length _target_mac)
    ;; string _target_magic
    4 (length _target_magic)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isConnected
       (if _isConnected (write-byte -1 s) (write-byte 0 s))
     ;; bool _isPaired
       (if _isPaired (write-byte -1 s) (write-byte 0 s))
     ;; bool _onPairing
       (if _onPairing (write-byte -1 s) (write-byte 0 s))
     ;; string _target_mac
       (write-long (length _target_mac) s) (princ _target_mac s)
     ;; string _target_magic
       (write-long (length _target_magic) s) (princ _target_magic s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isConnected
     (setq _isConnected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _isPaired
     (setq _isPaired (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _onPairing
     (setq _onPairing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _target_mac
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_mac (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _target_magic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_magic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get woosh_msgs::Ble_status :md5sum-) "a3f6334597a0d117e6034fd6a0cdabe7")
(setf (get woosh_msgs::Ble_status :datatype-) "woosh_msgs/Ble_status")
(setf (get woosh_msgs::Ble_status :definition-)
      "bool isConnected
bool isPaired
bool onPairing
string target_mac
string target_magic

")



(provide :woosh_msgs/Ble_status "a3f6334597a0d117e6034fd6a0cdabe7")


