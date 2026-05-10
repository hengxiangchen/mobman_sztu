
(cl:in-package :asdf)

(defsystem "graspnet_ws-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ArmMoveGoal" :depends-on ("_package_ArmMoveGoal"))
    (:file "_package_ArmMoveGoal" :depends-on ("_package"))
  ))