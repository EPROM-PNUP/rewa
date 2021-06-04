;; Auto-generated. Do not edit!


(when (boundp 'rewa_msgs::WalkOutput)
  (if (not (find-package "REWA_MSGS"))
    (make-package "REWA_MSGS"))
  (shadow 'WalkOutput (find-package "REWA_MSGS")))
(unless (find-package "REWA_MSGS::WALKOUTPUT")
  (make-package "REWA_MSGS::WALKOUTPUT"))

(in-package "ROS")
;;//! \htmlinclude WalkOutput.msg.html


(defclass rewa_msgs::WalkOutput
  :super ros::object
  :slots (_left _right ))

(defmethod rewa_msgs::WalkOutput
  (:init
   (&key
    ((:left __left) (instance rewa_msgs::LegJoint :init))
    ((:right __right) (instance rewa_msgs::LegJoint :init))
    )
   (send-super :init)
   (setq _left __left)
   (setq _right __right)
   self)
  (:left
   (&rest __left)
   (if (keywordp (car __left))
       (send* _left __left)
     (progn
       (if __left (setq _left (car __left)))
       _left)))
  (:right
   (&rest __right)
   (if (keywordp (car __right))
       (send* _right __right)
     (progn
       (if __right (setq _right (car __right)))
       _right)))
  (:serialization-length
   ()
   (+
    ;; rewa_msgs/LegJoint _left
    (send _left :serialization-length)
    ;; rewa_msgs/LegJoint _right
    (send _right :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rewa_msgs/LegJoint _left
       (send _left :serialize s)
     ;; rewa_msgs/LegJoint _right
       (send _right :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rewa_msgs/LegJoint _left
     (send _left :deserialize buf ptr-) (incf ptr- (send _left :serialization-length))
   ;; rewa_msgs/LegJoint _right
     (send _right :deserialize buf ptr-) (incf ptr- (send _right :serialization-length))
   ;;
   self)
  )

(setf (get rewa_msgs::WalkOutput :md5sum-) "9ad5775b0d561da386890fe8cd014165")
(setf (get rewa_msgs::WalkOutput :datatype-) "rewa_msgs/WalkOutput")
(setf (get rewa_msgs::WalkOutput :definition-)
      "rewa_msgs/LegJoint left
rewa_msgs/LegJoint right

================================================================================
MSG: rewa_msgs/LegJoint
rewa_msgs/Euler hip
rewa_msgs/Euler knee
rewa_msgs/Euler ankle

================================================================================
MSG: rewa_msgs/Euler
float64 r
float64 p
float64 y

")



(provide :rewa_msgs/WalkOutput "9ad5775b0d561da386890fe8cd014165")


