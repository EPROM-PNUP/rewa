;; Auto-generated. Do not edit!


(when (boundp 'rewa_msgs::ControlCommandMX28)
  (if (not (find-package "REWA_MSGS"))
    (make-package "REWA_MSGS"))
  (shadow 'ControlCommandMX28 (find-package "REWA_MSGS")))
(unless (find-package "REWA_MSGS::CONTROLCOMMANDMX28")
  (make-package "REWA_MSGS::CONTROLCOMMANDMX28"))

(in-package "ROS")
;;//! \htmlinclude ControlCommandMX28.msg.html


(defclass rewa_msgs::ControlCommandMX28
  :super ros::object
  :slots (_ID _goalpos _speed _torque _moving ))

(defmethod rewa_msgs::ControlCommandMX28
  (:init
   (&key
    ((:ID __ID) 0)
    ((:goalpos __goalpos) 0)
    ((:speed __speed) 0)
    ((:torque __torque) nil)
    ((:moving __moving) nil)
    )
   (send-super :init)
   (setq _ID (round __ID))
   (setq _goalpos (round __goalpos))
   (setq _speed (round __speed))
   (setq _torque __torque)
   (setq _moving __moving)
   self)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:goalpos
   (&optional __goalpos)
   (if __goalpos (setq _goalpos __goalpos)) _goalpos)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:torque
   (&optional (__torque :null))
   (if (not (eq __torque :null)) (setq _torque __torque)) _torque)
  (:moving
   (&optional (__moving :null))
   (if (not (eq __moving :null)) (setq _moving __moving)) _moving)
  (:serialization-length
   ()
   (+
    ;; uint8 _ID
    1
    ;; uint16 _goalpos
    2
    ;; uint16 _speed
    2
    ;; bool _torque
    1
    ;; bool _moving
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _ID
       (write-byte _ID s)
     ;; uint16 _goalpos
       (write-word _goalpos s)
     ;; uint16 _speed
       (write-word _speed s)
     ;; bool _torque
       (if _torque (write-byte -1 s) (write-byte 0 s))
     ;; bool _moving
       (if _moving (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _ID
     (setq _ID (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _goalpos
     (setq _goalpos (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _speed
     (setq _speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _torque
     (setq _torque (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _moving
     (setq _moving (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rewa_msgs::ControlCommandMX28 :md5sum-) "d2ae415b4864b1ee94a8e10b78d938e0")
(setf (get rewa_msgs::ControlCommandMX28 :datatype-) "rewa_msgs/ControlCommandMX28")
(setf (get rewa_msgs::ControlCommandMX28 :definition-)
      "uint8 ID

uint16 goalpos
uint16 speed

bool torque
bool moving

")



(provide :rewa_msgs/ControlCommandMX28 "d2ae415b4864b1ee94a8e10b78d938e0")


