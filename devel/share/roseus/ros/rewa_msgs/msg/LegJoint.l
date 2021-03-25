;; Auto-generated. Do not edit!


(when (boundp 'rewa_msgs::LegJoint)
  (if (not (find-package "REWA_MSGS"))
    (make-package "REWA_MSGS"))
  (shadow 'LegJoint (find-package "REWA_MSGS")))
(unless (find-package "REWA_MSGS::LEGJOINT")
  (make-package "REWA_MSGS::LEGJOINT"))

(in-package "ROS")
;;//! \htmlinclude LegJoint.msg.html


(defclass rewa_msgs::LegJoint
  :super ros::object
  :slots (_hip _knee _ankle ))

(defmethod rewa_msgs::LegJoint
  (:init
   (&key
    ((:hip __hip) (instance rewa_msgs::Euler :init))
    ((:knee __knee) (instance rewa_msgs::Euler :init))
    ((:ankle __ankle) (instance rewa_msgs::Euler :init))
    )
   (send-super :init)
   (setq _hip __hip)
   (setq _knee __knee)
   (setq _ankle __ankle)
   self)
  (:hip
   (&rest __hip)
   (if (keywordp (car __hip))
       (send* _hip __hip)
     (progn
       (if __hip (setq _hip (car __hip)))
       _hip)))
  (:knee
   (&rest __knee)
   (if (keywordp (car __knee))
       (send* _knee __knee)
     (progn
       (if __knee (setq _knee (car __knee)))
       _knee)))
  (:ankle
   (&rest __ankle)
   (if (keywordp (car __ankle))
       (send* _ankle __ankle)
     (progn
       (if __ankle (setq _ankle (car __ankle)))
       _ankle)))
  (:serialization-length
   ()
   (+
    ;; rewa_msgs/Euler _hip
    (send _hip :serialization-length)
    ;; rewa_msgs/Euler _knee
    (send _knee :serialization-length)
    ;; rewa_msgs/Euler _ankle
    (send _ankle :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rewa_msgs/Euler _hip
       (send _hip :serialize s)
     ;; rewa_msgs/Euler _knee
       (send _knee :serialize s)
     ;; rewa_msgs/Euler _ankle
       (send _ankle :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rewa_msgs/Euler _hip
     (send _hip :deserialize buf ptr-) (incf ptr- (send _hip :serialization-length))
   ;; rewa_msgs/Euler _knee
     (send _knee :deserialize buf ptr-) (incf ptr- (send _knee :serialization-length))
   ;; rewa_msgs/Euler _ankle
     (send _ankle :deserialize buf ptr-) (incf ptr- (send _ankle :serialization-length))
   ;;
   self)
  )

(setf (get rewa_msgs::LegJoint :md5sum-) "8fda3c23f2e1e0ab3642357df5d5da86")
(setf (get rewa_msgs::LegJoint :datatype-) "rewa_msgs/LegJoint")
(setf (get rewa_msgs::LegJoint :definition-)
      "rewa_msgs/Euler hip
rewa_msgs/Euler knee
rewa_msgs/Euler ankle

================================================================================
MSG: rewa_msgs/Euler
float64 r
float64 p
float64 y

")



(provide :rewa_msgs/LegJoint "8fda3c23f2e1e0ab3642357df5d5da86")


