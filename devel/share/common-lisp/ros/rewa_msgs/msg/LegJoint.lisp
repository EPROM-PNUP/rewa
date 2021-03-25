; Auto-generated. Do not edit!


(cl:in-package rewa_msgs-msg)


;//! \htmlinclude LegJoint.msg.html

(cl:defclass <LegJoint> (roslisp-msg-protocol:ros-message)
  ((hip
    :reader hip
    :initarg :hip
    :type rewa_msgs-msg:Euler
    :initform (cl:make-instance 'rewa_msgs-msg:Euler))
   (knee
    :reader knee
    :initarg :knee
    :type rewa_msgs-msg:Euler
    :initform (cl:make-instance 'rewa_msgs-msg:Euler))
   (ankle
    :reader ankle
    :initarg :ankle
    :type rewa_msgs-msg:Euler
    :initform (cl:make-instance 'rewa_msgs-msg:Euler)))
)

(cl:defclass LegJoint (<LegJoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LegJoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LegJoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rewa_msgs-msg:<LegJoint> is deprecated: use rewa_msgs-msg:LegJoint instead.")))

(cl:ensure-generic-function 'hip-val :lambda-list '(m))
(cl:defmethod hip-val ((m <LegJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:hip-val is deprecated.  Use rewa_msgs-msg:hip instead.")
  (hip m))

(cl:ensure-generic-function 'knee-val :lambda-list '(m))
(cl:defmethod knee-val ((m <LegJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:knee-val is deprecated.  Use rewa_msgs-msg:knee instead.")
  (knee m))

(cl:ensure-generic-function 'ankle-val :lambda-list '(m))
(cl:defmethod ankle-val ((m <LegJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:ankle-val is deprecated.  Use rewa_msgs-msg:ankle instead.")
  (ankle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LegJoint>) ostream)
  "Serializes a message object of type '<LegJoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hip) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'knee) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ankle) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LegJoint>) istream)
  "Deserializes a message object of type '<LegJoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hip) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'knee) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ankle) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LegJoint>)))
  "Returns string type for a message object of type '<LegJoint>"
  "rewa_msgs/LegJoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LegJoint)))
  "Returns string type for a message object of type 'LegJoint"
  "rewa_msgs/LegJoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LegJoint>)))
  "Returns md5sum for a message object of type '<LegJoint>"
  "8fda3c23f2e1e0ab3642357df5d5da86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LegJoint)))
  "Returns md5sum for a message object of type 'LegJoint"
  "8fda3c23f2e1e0ab3642357df5d5da86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LegJoint>)))
  "Returns full string definition for message of type '<LegJoint>"
  (cl:format cl:nil "rewa_msgs/Euler hip~%rewa_msgs/Euler knee~%rewa_msgs/Euler ankle~%~%================================================================================~%MSG: rewa_msgs/Euler~%float64 r~%float64 p~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LegJoint)))
  "Returns full string definition for message of type 'LegJoint"
  (cl:format cl:nil "rewa_msgs/Euler hip~%rewa_msgs/Euler knee~%rewa_msgs/Euler ankle~%~%================================================================================~%MSG: rewa_msgs/Euler~%float64 r~%float64 p~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LegJoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hip))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'knee))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ankle))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LegJoint>))
  "Converts a ROS message object to a list"
  (cl:list 'LegJoint
    (cl:cons ':hip (hip msg))
    (cl:cons ':knee (knee msg))
    (cl:cons ':ankle (ankle msg))
))
