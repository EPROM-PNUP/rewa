; Auto-generated. Do not edit!


(cl:in-package rewa_msgs-msg)


;//! \htmlinclude ControlCommandMX28.msg.html

(cl:defclass <ControlCommandMX28> (roslisp-msg-protocol:ros-message)
  ((ID
    :reader ID
    :initarg :ID
    :type cl:fixnum
    :initform 0)
   (goalpos
    :reader goalpos
    :initarg :goalpos
    :type cl:fixnum
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:fixnum
    :initform 0)
   (torque
    :reader torque
    :initarg :torque
    :type cl:boolean
    :initform cl:nil)
   (moving
    :reader moving
    :initarg :moving
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ControlCommandMX28 (<ControlCommandMX28>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlCommandMX28>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlCommandMX28)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rewa_msgs-msg:<ControlCommandMX28> is deprecated: use rewa_msgs-msg:ControlCommandMX28 instead.")))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <ControlCommandMX28>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:ID-val is deprecated.  Use rewa_msgs-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'goalpos-val :lambda-list '(m))
(cl:defmethod goalpos-val ((m <ControlCommandMX28>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:goalpos-val is deprecated.  Use rewa_msgs-msg:goalpos instead.")
  (goalpos m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <ControlCommandMX28>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:speed-val is deprecated.  Use rewa_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <ControlCommandMX28>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:torque-val is deprecated.  Use rewa_msgs-msg:torque instead.")
  (torque m))

(cl:ensure-generic-function 'moving-val :lambda-list '(m))
(cl:defmethod moving-val ((m <ControlCommandMX28>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:moving-val is deprecated.  Use rewa_msgs-msg:moving instead.")
  (moving m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlCommandMX28>) ostream)
  "Serializes a message object of type '<ControlCommandMX28>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'goalpos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'goalpos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'torque) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'moving) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlCommandMX28>) istream)
  "Deserializes a message object of type '<ControlCommandMX28>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'goalpos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'goalpos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'torque) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'moving) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlCommandMX28>)))
  "Returns string type for a message object of type '<ControlCommandMX28>"
  "rewa_msgs/ControlCommandMX28")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlCommandMX28)))
  "Returns string type for a message object of type 'ControlCommandMX28"
  "rewa_msgs/ControlCommandMX28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlCommandMX28>)))
  "Returns md5sum for a message object of type '<ControlCommandMX28>"
  "d2ae415b4864b1ee94a8e10b78d938e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlCommandMX28)))
  "Returns md5sum for a message object of type 'ControlCommandMX28"
  "d2ae415b4864b1ee94a8e10b78d938e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlCommandMX28>)))
  "Returns full string definition for message of type '<ControlCommandMX28>"
  (cl:format cl:nil "uint8 ID~%~%uint16 goalpos~%uint16 speed~%~%bool torque~%bool moving~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlCommandMX28)))
  "Returns full string definition for message of type 'ControlCommandMX28"
  (cl:format cl:nil "uint8 ID~%~%uint16 goalpos~%uint16 speed~%~%bool torque~%bool moving~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlCommandMX28>))
  (cl:+ 0
     1
     2
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlCommandMX28>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlCommandMX28
    (cl:cons ':ID (ID msg))
    (cl:cons ':goalpos (goalpos msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':torque (torque msg))
    (cl:cons ':moving (moving msg))
))
