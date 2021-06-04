; Auto-generated. Do not edit!


(cl:in-package rewa_msgs-msg)


;//! \htmlinclude ControlCommandAX12A.msg.html

(cl:defclass <ControlCommandAX12A> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ControlCommandAX12A (<ControlCommandAX12A>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlCommandAX12A>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlCommandAX12A)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rewa_msgs-msg:<ControlCommandAX12A> is deprecated: use rewa_msgs-msg:ControlCommandAX12A instead.")))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <ControlCommandAX12A>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:ID-val is deprecated.  Use rewa_msgs-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'goalpos-val :lambda-list '(m))
(cl:defmethod goalpos-val ((m <ControlCommandAX12A>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:goalpos-val is deprecated.  Use rewa_msgs-msg:goalpos instead.")
  (goalpos m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <ControlCommandAX12A>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:speed-val is deprecated.  Use rewa_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <ControlCommandAX12A>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:torque-val is deprecated.  Use rewa_msgs-msg:torque instead.")
  (torque m))

(cl:ensure-generic-function 'moving-val :lambda-list '(m))
(cl:defmethod moving-val ((m <ControlCommandAX12A>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:moving-val is deprecated.  Use rewa_msgs-msg:moving instead.")
  (moving m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlCommandAX12A>) ostream)
  "Serializes a message object of type '<ControlCommandAX12A>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'goalpos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'goalpos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'torque) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'moving) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlCommandAX12A>) istream)
  "Deserializes a message object of type '<ControlCommandAX12A>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'goalpos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'goalpos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'torque) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'moving) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlCommandAX12A>)))
  "Returns string type for a message object of type '<ControlCommandAX12A>"
  "rewa_msgs/ControlCommandAX12A")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlCommandAX12A)))
  "Returns string type for a message object of type 'ControlCommandAX12A"
  "rewa_msgs/ControlCommandAX12A")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlCommandAX12A>)))
  "Returns md5sum for a message object of type '<ControlCommandAX12A>"
  "d2ae415b4864b1ee94a8e10b78d938e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlCommandAX12A)))
  "Returns md5sum for a message object of type 'ControlCommandAX12A"
  "d2ae415b4864b1ee94a8e10b78d938e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlCommandAX12A>)))
  "Returns full string definition for message of type '<ControlCommandAX12A>"
  (cl:format cl:nil "uint8 ID~%~%uint16 goalpos~%uint16 speed~%~%bool torque~%bool moving~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlCommandAX12A)))
  "Returns full string definition for message of type 'ControlCommandAX12A"
  (cl:format cl:nil "uint8 ID~%~%uint16 goalpos~%uint16 speed~%~%bool torque~%bool moving~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlCommandAX12A>))
  (cl:+ 0
     1
     2
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlCommandAX12A>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlCommandAX12A
    (cl:cons ':ID (ID msg))
    (cl:cons ':goalpos (goalpos msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':torque (torque msg))
    (cl:cons ':moving (moving msg))
))
