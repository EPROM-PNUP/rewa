
(cl:in-package :asdf)

(defsystem "rewa_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Euler" :depends-on ("_package_Euler"))
    (:file "_package_Euler" :depends-on ("_package"))
    (:file "LegJoint" :depends-on ("_package_LegJoint"))
    (:file "_package_LegJoint" :depends-on ("_package"))
  ))