;; Auto-generated. Do not edit!


(when (boundp 'rewa_msgs::CommandServo)
  (if (not (find-package "REWA_MSGS"))
    (make-package "REWA_MSGS"))
  (shadow 'CommandServo (find-package "REWA_MSGS")))
(unless (find-package "REWA_MSGS::COMMANDSERVO")
  (make-package "REWA_MSGS::COMMANDSERVO"))

(in-package "ROS")
;;//! \htmlinclude CommandServo.msg.html


(defclass rewa_msgs::CommandServo
  :super ros::object
  :slots (_ID2 _ID3 _ID4 _ID5 _ID6 _ID7 _ID8 _ID9 _ID10 _ID11 _ID12 _ID13 ))

(defmethod rewa_msgs::CommandServo
  (:init
   (&key
    ((:ID2 __ID2) (instance rewa_msgs::ControlCommandAX12A :init))
    ((:ID3 __ID3) (instance rewa_msgs::ControlCommandMX28 :init))
    ((:ID4 __ID4) (instance rewa_msgs::ControlCommandMX28 :init))
    ((:ID5 __ID5) (instance rewa_msgs::ControlCommandMX28 :init))
    ((:ID6 __ID6) (instance rewa_msgs::ControlCommandMX28 :init))
    ((:ID7 __ID7) (instance rewa_msgs::ControlCommandMX28 :init))
    ((:ID8 __ID8) (instance rewa_msgs::ControlCommandAX12A :init))
    ((:ID9 __ID9) (instance rewa_msgs::ControlCommandMX28 :init))
    ((:ID10 __ID10) (instance rewa_msgs::ControlCommandMX28 :init))
    ((:ID11 __ID11) (instance rewa_msgs::ControlCommandMX28 :init))
    ((:ID12 __ID12) (instance rewa_msgs::ControlCommandMX28 :init))
    ((:ID13 __ID13) (instance rewa_msgs::ControlCommandMX28 :init))
    )
   (send-super :init)
   (setq _ID2 __ID2)
   (setq _ID3 __ID3)
   (setq _ID4 __ID4)
   (setq _ID5 __ID5)
   (setq _ID6 __ID6)
   (setq _ID7 __ID7)
   (setq _ID8 __ID8)
   (setq _ID9 __ID9)
   (setq _ID10 __ID10)
   (setq _ID11 __ID11)
   (setq _ID12 __ID12)
   (setq _ID13 __ID13)
   self)
  (:ID2
   (&rest __ID2)
   (if (keywordp (car __ID2))
       (send* _ID2 __ID2)
     (progn
       (if __ID2 (setq _ID2 (car __ID2)))
       _ID2)))
  (:ID3
   (&rest __ID3)
   (if (keywordp (car __ID3))
       (send* _ID3 __ID3)
     (progn
       (if __ID3 (setq _ID3 (car __ID3)))
       _ID3)))
  (:ID4
   (&rest __ID4)
   (if (keywordp (car __ID4))
       (send* _ID4 __ID4)
     (progn
       (if __ID4 (setq _ID4 (car __ID4)))
       _ID4)))
  (:ID5
   (&rest __ID5)
   (if (keywordp (car __ID5))
       (send* _ID5 __ID5)
     (progn
       (if __ID5 (setq _ID5 (car __ID5)))
       _ID5)))
  (:ID6
   (&rest __ID6)
   (if (keywordp (car __ID6))
       (send* _ID6 __ID6)
     (progn
       (if __ID6 (setq _ID6 (car __ID6)))
       _ID6)))
  (:ID7
   (&rest __ID7)
   (if (keywordp (car __ID7))
       (send* _ID7 __ID7)
     (progn
       (if __ID7 (setq _ID7 (car __ID7)))
       _ID7)))
  (:ID8
   (&rest __ID8)
   (if (keywordp (car __ID8))
       (send* _ID8 __ID8)
     (progn
       (if __ID8 (setq _ID8 (car __ID8)))
       _ID8)))
  (:ID9
   (&rest __ID9)
   (if (keywordp (car __ID9))
       (send* _ID9 __ID9)
     (progn
       (if __ID9 (setq _ID9 (car __ID9)))
       _ID9)))
  (:ID10
   (&rest __ID10)
   (if (keywordp (car __ID10))
       (send* _ID10 __ID10)
     (progn
       (if __ID10 (setq _ID10 (car __ID10)))
       _ID10)))
  (:ID11
   (&rest __ID11)
   (if (keywordp (car __ID11))
       (send* _ID11 __ID11)
     (progn
       (if __ID11 (setq _ID11 (car __ID11)))
       _ID11)))
  (:ID12
   (&rest __ID12)
   (if (keywordp (car __ID12))
       (send* _ID12 __ID12)
     (progn
       (if __ID12 (setq _ID12 (car __ID12)))
       _ID12)))
  (:ID13
   (&rest __ID13)
   (if (keywordp (car __ID13))
       (send* _ID13 __ID13)
     (progn
       (if __ID13 (setq _ID13 (car __ID13)))
       _ID13)))
  (:serialization-length
   ()
   (+
    ;; rewa_msgs/ControlCommandAX12A _ID2
    (send _ID2 :serialization-length)
    ;; rewa_msgs/ControlCommandMX28 _ID3
    (send _ID3 :serialization-length)
    ;; rewa_msgs/ControlCommandMX28 _ID4
    (send _ID4 :serialization-length)
    ;; rewa_msgs/ControlCommandMX28 _ID5
    (send _ID5 :serialization-length)
    ;; rewa_msgs/ControlCommandMX28 _ID6
    (send _ID6 :serialization-length)
    ;; rewa_msgs/ControlCommandMX28 _ID7
    (send _ID7 :serialization-length)
    ;; rewa_msgs/ControlCommandAX12A _ID8
    (send _ID8 :serialization-length)
    ;; rewa_msgs/ControlCommandMX28 _ID9
    (send _ID9 :serialization-length)
    ;; rewa_msgs/ControlCommandMX28 _ID10
    (send _ID10 :serialization-length)
    ;; rewa_msgs/ControlCommandMX28 _ID11
    (send _ID11 :serialization-length)
    ;; rewa_msgs/ControlCommandMX28 _ID12
    (send _ID12 :serialization-length)
    ;; rewa_msgs/ControlCommandMX28 _ID13
    (send _ID13 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rewa_msgs/ControlCommandAX12A _ID2
       (send _ID2 :serialize s)
     ;; rewa_msgs/ControlCommandMX28 _ID3
       (send _ID3 :serialize s)
     ;; rewa_msgs/ControlCommandMX28 _ID4
       (send _ID4 :serialize s)
     ;; rewa_msgs/ControlCommandMX28 _ID5
       (send _ID5 :serialize s)
     ;; rewa_msgs/ControlCommandMX28 _ID6
       (send _ID6 :serialize s)
     ;; rewa_msgs/ControlCommandMX28 _ID7
       (send _ID7 :serialize s)
     ;; rewa_msgs/ControlCommandAX12A _ID8
       (send _ID8 :serialize s)
     ;; rewa_msgs/ControlCommandMX28 _ID9
       (send _ID9 :serialize s)
     ;; rewa_msgs/ControlCommandMX28 _ID10
       (send _ID10 :serialize s)
     ;; rewa_msgs/ControlCommandMX28 _ID11
       (send _ID11 :serialize s)
     ;; rewa_msgs/ControlCommandMX28 _ID12
       (send _ID12 :serialize s)
     ;; rewa_msgs/ControlCommandMX28 _ID13
       (send _ID13 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rewa_msgs/ControlCommandAX12A _ID2
     (send _ID2 :deserialize buf ptr-) (incf ptr- (send _ID2 :serialization-length))
   ;; rewa_msgs/ControlCommandMX28 _ID3
     (send _ID3 :deserialize buf ptr-) (incf ptr- (send _ID3 :serialization-length))
   ;; rewa_msgs/ControlCommandMX28 _ID4
     (send _ID4 :deserialize buf ptr-) (incf ptr- (send _ID4 :serialization-length))
   ;; rewa_msgs/ControlCommandMX28 _ID5
     (send _ID5 :deserialize buf ptr-) (incf ptr- (send _ID5 :serialization-length))
   ;; rewa_msgs/ControlCommandMX28 _ID6
     (send _ID6 :deserialize buf ptr-) (incf ptr- (send _ID6 :serialization-length))
   ;; rewa_msgs/ControlCommandMX28 _ID7
     (send _ID7 :deserialize buf ptr-) (incf ptr- (send _ID7 :serialization-length))
   ;; rewa_msgs/ControlCommandAX12A _ID8
     (send _ID8 :deserialize buf ptr-) (incf ptr- (send _ID8 :serialization-length))
   ;; rewa_msgs/ControlCommandMX28 _ID9
     (send _ID9 :deserialize buf ptr-) (incf ptr- (send _ID9 :serialization-length))
   ;; rewa_msgs/ControlCommandMX28 _ID10
     (send _ID10 :deserialize buf ptr-) (incf ptr- (send _ID10 :serialization-length))
   ;; rewa_msgs/ControlCommandMX28 _ID11
     (send _ID11 :deserialize buf ptr-) (incf ptr- (send _ID11 :serialization-length))
   ;; rewa_msgs/ControlCommandMX28 _ID12
     (send _ID12 :deserialize buf ptr-) (incf ptr- (send _ID12 :serialization-length))
   ;; rewa_msgs/ControlCommandMX28 _ID13
     (send _ID13 :deserialize buf ptr-) (incf ptr- (send _ID13 :serialization-length))
   ;;
   self)
  )

(setf (get rewa_msgs::CommandServo :md5sum-) "f958a627952b4e4e7996dc10180b3884")
(setf (get rewa_msgs::CommandServo :datatype-) "rewa_msgs/CommandServo")
(setf (get rewa_msgs::CommandServo :definition-)
      "ControlCommandAX12A ID2
ControlCommandMX28 ID3
ControlCommandMX28 ID4
ControlCommandMX28 ID5
ControlCommandMX28 ID6
ControlCommandMX28 ID7

ControlCommandAX12A ID8
ControlCommandMX28 ID9
ControlCommandMX28 ID10
ControlCommandMX28 ID11
ControlCommandMX28 ID12
ControlCommandMX28 ID13

================================================================================
MSG: rewa_msgs/ControlCommandAX12A
uint8 ID

uint16 goalpos
uint16 speed

bool torque
bool moving

================================================================================
MSG: rewa_msgs/ControlCommandMX28
uint8 ID

uint16 goalpos
uint16 speed

bool torque
bool moving

")



(provide :rewa_msgs/CommandServo "f958a627952b4e4e7996dc10180b3884")


