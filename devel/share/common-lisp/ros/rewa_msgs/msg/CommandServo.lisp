; Auto-generated. Do not edit!


(cl:in-package rewa_msgs-msg)


;//! \htmlinclude CommandServo.msg.html

(cl:defclass <CommandServo> (roslisp-msg-protocol:ros-message)
  ((ID2
    :reader ID2
    :initarg :ID2
    :type rewa_msgs-msg:ControlCommandAX12A
    :initform (cl:make-instance 'rewa_msgs-msg:ControlCommandAX12A))
   (ID3
    :reader ID3
    :initarg :ID3
    :type rewa_msgs-msg:ControlCommandMX28
    :initform (cl:make-instance 'rewa_msgs-msg:ControlCommandMX28))
   (ID4
    :reader ID4
    :initarg :ID4
    :type rewa_msgs-msg:ControlCommandMX28
    :initform (cl:make-instance 'rewa_msgs-msg:ControlCommandMX28))
   (ID5
    :reader ID5
    :initarg :ID5
    :type rewa_msgs-msg:ControlCommandMX28
    :initform (cl:make-instance 'rewa_msgs-msg:ControlCommandMX28))
   (ID6
    :reader ID6
    :initarg :ID6
    :type rewa_msgs-msg:ControlCommandMX28
    :initform (cl:make-instance 'rewa_msgs-msg:ControlCommandMX28))
   (ID7
    :reader ID7
    :initarg :ID7
    :type rewa_msgs-msg:ControlCommandMX28
    :initform (cl:make-instance 'rewa_msgs-msg:ControlCommandMX28))
   (ID8
    :reader ID8
    :initarg :ID8
    :type rewa_msgs-msg:ControlCommandAX12A
    :initform (cl:make-instance 'rewa_msgs-msg:ControlCommandAX12A))
   (ID9
    :reader ID9
    :initarg :ID9
    :type rewa_msgs-msg:ControlCommandMX28
    :initform (cl:make-instance 'rewa_msgs-msg:ControlCommandMX28))
   (ID10
    :reader ID10
    :initarg :ID10
    :type rewa_msgs-msg:ControlCommandMX28
    :initform (cl:make-instance 'rewa_msgs-msg:ControlCommandMX28))
   (ID11
    :reader ID11
    :initarg :ID11
    :type rewa_msgs-msg:ControlCommandMX28
    :initform (cl:make-instance 'rewa_msgs-msg:ControlCommandMX28))
   (ID12
    :reader ID12
    :initarg :ID12
    :type rewa_msgs-msg:ControlCommandMX28
    :initform (cl:make-instance 'rewa_msgs-msg:ControlCommandMX28))
   (ID13
    :reader ID13
    :initarg :ID13
    :type rewa_msgs-msg:ControlCommandMX28
    :initform (cl:make-instance 'rewa_msgs-msg:ControlCommandMX28)))
)

(cl:defclass CommandServo (<CommandServo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandServo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandServo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rewa_msgs-msg:<CommandServo> is deprecated: use rewa_msgs-msg:CommandServo instead.")))

(cl:ensure-generic-function 'ID2-val :lambda-list '(m))
(cl:defmethod ID2-val ((m <CommandServo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:ID2-val is deprecated.  Use rewa_msgs-msg:ID2 instead.")
  (ID2 m))

(cl:ensure-generic-function 'ID3-val :lambda-list '(m))
(cl:defmethod ID3-val ((m <CommandServo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:ID3-val is deprecated.  Use rewa_msgs-msg:ID3 instead.")
  (ID3 m))

(cl:ensure-generic-function 'ID4-val :lambda-list '(m))
(cl:defmethod ID4-val ((m <CommandServo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:ID4-val is deprecated.  Use rewa_msgs-msg:ID4 instead.")
  (ID4 m))

(cl:ensure-generic-function 'ID5-val :lambda-list '(m))
(cl:defmethod ID5-val ((m <CommandServo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:ID5-val is deprecated.  Use rewa_msgs-msg:ID5 instead.")
  (ID5 m))

(cl:ensure-generic-function 'ID6-val :lambda-list '(m))
(cl:defmethod ID6-val ((m <CommandServo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:ID6-val is deprecated.  Use rewa_msgs-msg:ID6 instead.")
  (ID6 m))

(cl:ensure-generic-function 'ID7-val :lambda-list '(m))
(cl:defmethod ID7-val ((m <CommandServo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:ID7-val is deprecated.  Use rewa_msgs-msg:ID7 instead.")
  (ID7 m))

(cl:ensure-generic-function 'ID8-val :lambda-list '(m))
(cl:defmethod ID8-val ((m <CommandServo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:ID8-val is deprecated.  Use rewa_msgs-msg:ID8 instead.")
  (ID8 m))

(cl:ensure-generic-function 'ID9-val :lambda-list '(m))
(cl:defmethod ID9-val ((m <CommandServo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:ID9-val is deprecated.  Use rewa_msgs-msg:ID9 instead.")
  (ID9 m))

(cl:ensure-generic-function 'ID10-val :lambda-list '(m))
(cl:defmethod ID10-val ((m <CommandServo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:ID10-val is deprecated.  Use rewa_msgs-msg:ID10 instead.")
  (ID10 m))

(cl:ensure-generic-function 'ID11-val :lambda-list '(m))
(cl:defmethod ID11-val ((m <CommandServo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:ID11-val is deprecated.  Use rewa_msgs-msg:ID11 instead.")
  (ID11 m))

(cl:ensure-generic-function 'ID12-val :lambda-list '(m))
(cl:defmethod ID12-val ((m <CommandServo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:ID12-val is deprecated.  Use rewa_msgs-msg:ID12 instead.")
  (ID12 m))

(cl:ensure-generic-function 'ID13-val :lambda-list '(m))
(cl:defmethod ID13-val ((m <CommandServo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:ID13-val is deprecated.  Use rewa_msgs-msg:ID13 instead.")
  (ID13 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandServo>) ostream)
  "Serializes a message object of type '<CommandServo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ID2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ID3) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ID4) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ID5) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ID6) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ID7) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ID8) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ID9) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ID10) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ID11) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ID12) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ID13) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandServo>) istream)
  "Deserializes a message object of type '<CommandServo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ID2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ID3) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ID4) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ID5) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ID6) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ID7) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ID8) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ID9) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ID10) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ID11) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ID12) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ID13) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandServo>)))
  "Returns string type for a message object of type '<CommandServo>"
  "rewa_msgs/CommandServo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandServo)))
  "Returns string type for a message object of type 'CommandServo"
  "rewa_msgs/CommandServo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandServo>)))
  "Returns md5sum for a message object of type '<CommandServo>"
  "f958a627952b4e4e7996dc10180b3884")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandServo)))
  "Returns md5sum for a message object of type 'CommandServo"
  "f958a627952b4e4e7996dc10180b3884")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandServo>)))
  "Returns full string definition for message of type '<CommandServo>"
  (cl:format cl:nil "ControlCommandAX12A ID2~%ControlCommandMX28 ID3~%ControlCommandMX28 ID4~%ControlCommandMX28 ID5~%ControlCommandMX28 ID6~%ControlCommandMX28 ID7~%~%ControlCommandAX12A ID8~%ControlCommandMX28 ID9~%ControlCommandMX28 ID10~%ControlCommandMX28 ID11~%ControlCommandMX28 ID12~%ControlCommandMX28 ID13~%~%================================================================================~%MSG: rewa_msgs/ControlCommandAX12A~%uint8 ID~%~%uint16 goalpos~%uint16 speed~%~%bool torque~%bool moving~%~%================================================================================~%MSG: rewa_msgs/ControlCommandMX28~%uint8 ID~%~%uint16 goalpos~%uint16 speed~%~%bool torque~%bool moving~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandServo)))
  "Returns full string definition for message of type 'CommandServo"
  (cl:format cl:nil "ControlCommandAX12A ID2~%ControlCommandMX28 ID3~%ControlCommandMX28 ID4~%ControlCommandMX28 ID5~%ControlCommandMX28 ID6~%ControlCommandMX28 ID7~%~%ControlCommandAX12A ID8~%ControlCommandMX28 ID9~%ControlCommandMX28 ID10~%ControlCommandMX28 ID11~%ControlCommandMX28 ID12~%ControlCommandMX28 ID13~%~%================================================================================~%MSG: rewa_msgs/ControlCommandAX12A~%uint8 ID~%~%uint16 goalpos~%uint16 speed~%~%bool torque~%bool moving~%~%================================================================================~%MSG: rewa_msgs/ControlCommandMX28~%uint8 ID~%~%uint16 goalpos~%uint16 speed~%~%bool torque~%bool moving~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandServo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ID2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ID3))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ID4))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ID5))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ID6))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ID7))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ID8))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ID9))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ID10))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ID11))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ID12))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ID13))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandServo>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandServo
    (cl:cons ':ID2 (ID2 msg))
    (cl:cons ':ID3 (ID3 msg))
    (cl:cons ':ID4 (ID4 msg))
    (cl:cons ':ID5 (ID5 msg))
    (cl:cons ':ID6 (ID6 msg))
    (cl:cons ':ID7 (ID7 msg))
    (cl:cons ':ID8 (ID8 msg))
    (cl:cons ':ID9 (ID9 msg))
    (cl:cons ':ID10 (ID10 msg))
    (cl:cons ':ID11 (ID11 msg))
    (cl:cons ':ID12 (ID12 msg))
    (cl:cons ':ID13 (ID13 msg))
))
