;; Auto-generated. Do not edit!


(when (boundp 'woosh_msgs::PeripheralConfig)
  (if (not (find-package "WOOSH_MSGS"))
    (make-package "WOOSH_MSGS"))
  (shadow 'PeripheralConfig (find-package "WOOSH_MSGS")))
(unless (find-package "WOOSH_MSGS::PERIPHERALCONFIG")
  (make-package "WOOSH_MSGS::PERIPHERALCONFIG"))

(in-package "ROS")
;;//! \htmlinclude PeripheralConfig.msg.html


(defclass woosh_msgs::PeripheralConfig
  :super ros::object
  :slots (_deviceType _deviceNum _setNum _config ))

(defmethod woosh_msgs::PeripheralConfig
  (:init
   (&key
    ((:deviceType __deviceType) 0)
    ((:deviceNum __deviceNum) 0)
    ((:setNum __setNum) 0)
    ((:config __config) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _deviceType (round __deviceType))
   (setq _deviceNum (round __deviceNum))
   (setq _setNum (round __setNum))
   (setq _config __config)
   self)
  (:deviceType
   (&optional __deviceType)
   (if __deviceType (setq _deviceType __deviceType)) _deviceType)
  (:deviceNum
   (&optional __deviceNum)
   (if __deviceNum (setq _deviceNum __deviceNum)) _deviceNum)
  (:setNum
   (&optional __setNum)
   (if __setNum (setq _setNum __setNum)) _setNum)
  (:config
   (&optional __config)
   (if __config (setq _config __config)) _config)
  (:serialization-length
   ()
   (+
    ;; uint8 _deviceType
    1
    ;; uint16 _deviceNum
    2
    ;; uint16 _setNum
    2
    ;; uint8[] _config
    (* 1    (length _config)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _deviceType
       (write-byte _deviceType s)
     ;; uint16 _deviceNum
       (write-word _deviceNum s)
     ;; uint16 _setNum
       (write-word _setNum s)
     ;; uint8[] _config
     (write-long (length _config) s)
     (princ _config s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _deviceType
     (setq _deviceType (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _deviceNum
     (setq _deviceNum (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _setNum
     (setq _setNum (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8[] _config
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _config (make-array n :element-type :char))
     (replace _config buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get woosh_msgs::PeripheralConfig :md5sum-) "30e9701f5cb23ca374d0e89621584272")
(setf (get woosh_msgs::PeripheralConfig :datatype-) "woosh_msgs/PeripheralConfig")
(setf (get woosh_msgs::PeripheralConfig :definition-)
      "uint8 deviceType
uint16 deviceNum
uint16 setNum
uint8[] config

")



(provide :woosh_msgs/PeripheralConfig "30e9701f5cb23ca374d0e89621584272")


