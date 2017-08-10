; Auto-generated. Do not edit!


(cl:in-package mcptam-srv)


;//! \htmlinclude SetDepth-request.msg.html

(cl:defclass <SetDepth-request> (roslisp-msg-protocol:ros-message)
  ((depth
    :reader depth
    :initarg :depth
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass SetDepth-request (<SetDepth-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDepth-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDepth-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcptam-srv:<SetDepth-request> is deprecated: use mcptam-srv:SetDepth-request instead.")))

(cl:ensure-generic-function 'depth-val :lambda-list '(m))
(cl:defmethod depth-val ((m <SetDepth-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-srv:depth-val is deprecated.  Use mcptam-srv:depth instead.")
  (depth m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDepth-request>) ostream)
  "Serializes a message object of type '<SetDepth-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'depth) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDepth-request>) istream)
  "Deserializes a message object of type '<SetDepth-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'depth) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDepth-request>)))
  "Returns string type for a service object of type '<SetDepth-request>"
  "mcptam/SetDepthRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDepth-request)))
  "Returns string type for a service object of type 'SetDepth-request"
  "mcptam/SetDepthRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDepth-request>)))
  "Returns md5sum for a message object of type '<SetDepth-request>"
  "a162f47a2d8133c9b6199b2666e904ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDepth-request)))
  "Returns md5sum for a message object of type 'SetDepth-request"
  "a162f47a2d8133c9b6199b2666e904ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDepth-request>)))
  "Returns full string definition for message of type '<SetDepth-request>"
  (cl:format cl:nil "std_msgs/Float32 depth~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDepth-request)))
  "Returns full string definition for message of type 'SetDepth-request"
  (cl:format cl:nil "std_msgs/Float32 depth~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDepth-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'depth))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDepth-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDepth-request
    (cl:cons ':depth (depth msg))
))
;//! \htmlinclude SetDepth-response.msg.html

(cl:defclass <SetDepth-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetDepth-response (<SetDepth-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDepth-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDepth-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcptam-srv:<SetDepth-response> is deprecated: use mcptam-srv:SetDepth-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetDepth-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-srv:success-val is deprecated.  Use mcptam-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDepth-response>) ostream)
  "Serializes a message object of type '<SetDepth-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDepth-response>) istream)
  "Deserializes a message object of type '<SetDepth-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDepth-response>)))
  "Returns string type for a service object of type '<SetDepth-response>"
  "mcptam/SetDepthResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDepth-response)))
  "Returns string type for a service object of type 'SetDepth-response"
  "mcptam/SetDepthResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDepth-response>)))
  "Returns md5sum for a message object of type '<SetDepth-response>"
  "a162f47a2d8133c9b6199b2666e904ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDepth-response)))
  "Returns md5sum for a message object of type 'SetDepth-response"
  "a162f47a2d8133c9b6199b2666e904ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDepth-response>)))
  "Returns full string definition for message of type '<SetDepth-response>"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDepth-response)))
  "Returns full string definition for message of type 'SetDepth-response"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDepth-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDepth-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDepth-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetDepth)))
  'SetDepth-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetDepth)))
  'SetDepth-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDepth)))
  "Returns string type for a service object of type '<SetDepth>"
  "mcptam/SetDepth")