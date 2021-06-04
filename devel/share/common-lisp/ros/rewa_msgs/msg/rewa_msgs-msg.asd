
(cl:in-package :asdf)

(defsystem "rewa_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CommandServo" :depends-on ("_package_CommandServo"))
    (:file "_package_CommandServo" :depends-on ("_package"))
    (:file "ControlCommandAX12A" :depends-on ("_package_ControlCommandAX12A"))
    (:file "_package_ControlCommandAX12A" :depends-on ("_package"))
    (:file "ControlCommandMX28" :depends-on ("_package_ControlCommandMX28"))
    (:file "_package_ControlCommandMX28" :depends-on ("_package"))
    (:file "Euler" :depends-on ("_package_Euler"))
    (:file "_package_Euler" :depends-on ("_package"))
    (:file "LegJoint" :depends-on ("_package_LegJoint"))
    (:file "_package_LegJoint" :depends-on ("_package"))
    (:file "WalkOutput" :depends-on ("_package_WalkOutput"))
    (:file "_package_WalkOutput" :depends-on ("_package"))
  ))