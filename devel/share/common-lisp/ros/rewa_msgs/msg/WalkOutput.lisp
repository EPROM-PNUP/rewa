; Auto-generated. Do not edit!


(cl:in-package rewa_msgs-msg)


;//! \htmlinclude WalkOutput.msg.html

(cl:defclass <WalkOutput> (roslisp-msg-protocol:ros-message)
  ((left
    :reader left
    :initarg :left
    :type rewa_msgs-msg:LegJoint
    :initform (cl:make-instance 'rewa_msgs-msg:LegJoint))
   (right
    :reader right
    :initarg :right
    :type rewa_msgs-msg:LegJoint
    :initform (cl:make-instance 'rewa_msgs-msg:LegJoint)))
)

(cl:defclass WalkOutput (<WalkOutput>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WalkOutput>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WalkOutput)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rewa_msgs-msg:<WalkOutput> is deprecated: use rewa_msgs-msg:WalkOutput instead.")))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <WalkOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:left-val is deprecated.  Use rewa_msgs-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <WalkOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rewa_msgs-msg:right-val is deprecated.  Use rewa_msgs-msg:right instead.")
  (right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WalkOutput>) ostream)
  "Serializes a message object of type '<WalkOutput>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WalkOutput>) istream)
  "Deserializes a message object of type '<WalkOutput>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WalkOutput>)))
  "Returns string type for a message object of type '<WalkOutput>"
  "rewa_msgs/WalkOutput")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WalkOutput)))
  "Returns string type for a message object of type 'WalkOutput"
  "rewa_msgs/WalkOutput")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WalkOutput>)))
  "Returns md5sum for a message object of type '<WalkOutput>"
  "9ad5775b0d561da386890fe8cd014165")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WalkOutput)))
  "Returns md5sum for a message object of type 'WalkOutput"
  "9ad5775b0d561da386890fe8cd014165")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WalkOutput>)))
  "Returns full string definition for message of type '<WalkOutput>"
  (cl:format cl:nil "rewa_msgs/LegJoint left~%rewa_msgs/LegJoint right~%~%================================================================================~%MSG: rewa_msgs/LegJoint~%rewa_msgs/Euler hip~%rewa_msgs/Euler knee~%rewa_msgs/Euler ankle~%~%================================================================================~%MSG: rewa_msgs/Euler~%float64 r~%float64 p~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WalkOutput)))
  "Returns full string definition for message of type 'WalkOutput"
  (cl:format cl:nil "rewa_msgs/LegJoint left~%rewa_msgs/LegJoint right~%~%================================================================================~%MSG: rewa_msgs/LegJoint~%rewa_msgs/Euler hip~%rewa_msgs/Euler knee~%rewa_msgs/Euler ankle~%~%================================================================================~%MSG: rewa_msgs/Euler~%float64 r~%float64 p~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WalkOutput>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WalkOutput>))
  "Converts a ROS message object to a list"
  (cl:list 'WalkOutput
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
))
