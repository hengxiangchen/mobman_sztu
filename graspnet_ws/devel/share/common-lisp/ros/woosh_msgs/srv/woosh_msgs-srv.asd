
(cl:in-package :asdf)

(defsystem "woosh_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "ExecTask" :depends-on ("_package_ExecTask"))
    (:file "_package_ExecTask" :depends-on ("_package"))
  ))