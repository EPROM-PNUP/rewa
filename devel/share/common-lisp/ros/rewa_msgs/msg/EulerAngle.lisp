; Auto-generated. Do not edit!


(cl:in-package rewa_msgs-msg)


;//! \htmlinclude EulerAngle.msg.html

(cl:defclass <EulerAngle> (roslisp-msg-protocol:ros-message)
  ((r
    :reader r
    :initarg :r
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (p
    :reader p
    :initarg :p
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (y
    :reader y
    :initarg :y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass EulerAngle (<EulerAngle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EulerAngle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EulerAngle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rewa_msgs-msg:<EulerAngle> is deprecated: use rewa_msgs-msg:EulerAngle instead.")))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <EulerAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:r-val is deprecated.  Use rewa_msgs-msg:r instead.")
  (r m))

(cl:ensure-generic-function 'p-val :lambda-list '(m))
(cl:defmethod p-val ((m <EulerAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:p-val is deprecated.  Use rewa_msgs-msg:p instead.")
  (p m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <EulerAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:y-val is deprecated.  Use rewa_msgs-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EulerAngle>) ostream)
  "Serializes a message object of type '<EulerAngle>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'r) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'y) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EulerAngle>) istream)
  "Deserializes a message object of type '<EulerAngle>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'r) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'y) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EulerAngle>)))
  "Returns string type for a message object of type '<EulerAngle>"
  "rewa_msgs/EulerAngle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EulerAngle)))
  "Returns string type for a message object of type 'EulerAngle"
  "rewa_msgs/EulerAngle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EulerAngle>)))
  "Returns md5sum for a message object of type '<EulerAngle>"
  "b12334b058a796e17415fad4ae059df8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EulerAngle)))
  "Returns md5sum for a message object of type 'EulerAngle"
  "b12334b058a796e17415fad4ae059df8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EulerAngle>)))
  "Returns full string definition for message of type '<EulerAngle>"
  (cl:format cl:nil "std_msgs/Float32 r~%std_msgs/Float32 p~%std_msgs/Float32 y~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EulerAngle)))
  "Returns full string definition for message of type 'EulerAngle"
  (cl:format cl:nil "std_msgs/Float32 r~%std_msgs/Float32 p~%std_msgs/Float32 y~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EulerAngle>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'r))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'y))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EulerAngle>))
  "Converts a ROS message object to a list"
  (cl:list 'EulerAngle
    (cl:cons ':r (r msg))
    (cl:cons ':p (p msg))
    (cl:cons ':y (y msg))
))
