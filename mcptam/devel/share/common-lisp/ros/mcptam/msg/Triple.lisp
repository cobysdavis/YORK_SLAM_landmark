; Auto-generated. Do not edit!


(cl:in-package mcptam-msg)


;//! \htmlinclude Triple.msg.html

(cl:defclass <Triple> (roslisp-msg-protocol:ros-message)
  ((p1
    :reader p1
    :initarg :p1
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (p4
    :reader p4
    :initarg :p4
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (p2
    :reader p2
    :initarg :p2
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass Triple (<Triple>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Triple>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Triple)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcptam-msg:<Triple> is deprecated: use mcptam-msg:Triple instead.")))

(cl:ensure-generic-function 'p1-val :lambda-list '(m))
(cl:defmethod p1-val ((m <Triple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:p1-val is deprecated.  Use mcptam-msg:p1 instead.")
  (p1 m))

(cl:ensure-generic-function 'p4-val :lambda-list '(m))
(cl:defmethod p4-val ((m <Triple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:p4-val is deprecated.  Use mcptam-msg:p4 instead.")
  (p4 m))

(cl:ensure-generic-function 'p2-val :lambda-list '(m))
(cl:defmethod p2-val ((m <Triple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:p2-val is deprecated.  Use mcptam-msg:p2 instead.")
  (p2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Triple>) ostream)
  "Serializes a message object of type '<Triple>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p4) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p2) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Triple>) istream)
  "Deserializes a message object of type '<Triple>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p4) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p2) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Triple>)))
  "Returns string type for a message object of type '<Triple>"
  "mcptam/Triple")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Triple)))
  "Returns string type for a message object of type 'Triple"
  "mcptam/Triple")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Triple>)))
  "Returns md5sum for a message object of type '<Triple>"
  "71b770be97f3faa3d4d391bca9d0184f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Triple)))
  "Returns md5sum for a message object of type 'Triple"
  "71b770be97f3faa3d4d391bca9d0184f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Triple>)))
  "Returns full string definition for message of type '<Triple>"
  (cl:format cl:nil "geometry_msgs/Point p1~%geometry_msgs/Point p4~%geometry_msgs/Point p2~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Triple)))
  "Returns full string definition for message of type 'Triple"
  (cl:format cl:nil "geometry_msgs/Point p1~%geometry_msgs/Point p4~%geometry_msgs/Point p2~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Triple>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p4))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p2))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Triple>))
  "Converts a ROS message object to a list"
  (cl:list 'Triple
    (cl:cons ':p1 (p1 msg))
    (cl:cons ':p4 (p4 msg))
    (cl:cons ':p2 (p2 msg))
))
