;; Auto-generated. Do not edit!


(when (boundp 'rewa_msgs::EulerAngle)
  (if (not (find-package "REWA_MSGS"))
    (make-package "REWA_MSGS"))
  (shadow 'EulerAngle (find-package "REWA_MSGS")))
(unless (find-package "REWA_MSGS::EULERANGLE")
  (make-package "REWA_MSGS::EULERANGLE"))

(in-package "ROS")
;;//! \htmlinclude EulerAngle.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rewa_msgs::EulerAngle
  :super ros::object
  :slots (_r _p _y ))

(defmethod rewa_msgs::EulerAngle
  (:init
   (&key
    ((:r __r) (instance std_msgs::Float32 :init))
    ((:p __p) (instance std_msgs::Float32 :init))
    ((:y __y) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _r __r)
   (setq _p __p)
   (setq _y __y)
   self)
  (:r
   (&rest __r)
   (if (keywordp (car __r))
       (send* _r __r)
     (progn
       (if __r (setq _r (car __r)))
       _r)))
  (:p
   (&rest __p)
   (if (keywordp (car __p))
       (send* _p __p)
     (progn
       (if __p (setq _p (car __p)))
       _p)))
  (:y
   (&rest __y)
   (if (keywordp (car __y))
       (send* _y __y)
     (progn
       (if __y (setq _y (car __y)))
       _y)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _r
    (send _r :serialization-length)
    ;; std_msgs/Float32 _p
    (send _p :serialization-length)
    ;; std_msgs/Float32 _y
    (send _y :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _r
       (send _r :serialize s)
     ;; std_msgs/Float32 _p
       (send _p :serialize s)
     ;; std_msgs/Float32 _y
       (send _y :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _r
     (send _r :deserialize buf ptr-) (incf ptr- (send _r :serialization-length))
   ;; std_msgs/Float32 _p
     (send _p :deserialize buf ptr-) (incf ptr- (send _p :serialization-length))
   ;; std_msgs/Float32 _y
     (send _y :deserialize buf ptr-) (incf ptr- (send _y :serialization-length))
   ;;
   self)
  )

(setf (get rewa_msgs::EulerAngle :md5sum-) "b12334b058a796e17415fad4ae059df8")
(setf (get rewa_msgs::EulerAngle :datatype-) "rewa_msgs/EulerAngle")
(setf (get rewa_msgs::EulerAngle :definition-)
      "std_msgs/Float32 r
std_msgs/Float32 p
std_msgs/Float32 y

================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :rewa_msgs/EulerAngle "b12334b058a796e17415fad4ae059df8")


