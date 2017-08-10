; Auto-generated. Do not edit!


(cl:in-package mcptam-srv)


;//! \htmlinclude FilterPC-request.msg.html

(cl:defclass <FilterPC-request> (roslisp-msg-protocol:ros-message)
  ((max
    :reader max
    :initarg :max
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (min
    :reader min
    :initarg :min
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass FilterPC-request (<FilterPC-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FilterPC-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FilterPC-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcptam-srv:<FilterPC-request> is deprecated: use mcptam-srv:FilterPC-request instead.")))

(cl:ensure-generic-function 'max-val :lambda-list '(m))
(cl:defmethod max-val ((m <FilterPC-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-srv:max-val is deprecated.  Use mcptam-srv:max instead.")
  (max m))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <FilterPC-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-srv:min-val is deprecated.  Use mcptam-srv:min instead.")
  (min m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FilterPC-request>) ostream)
  "Serializes a message object of type '<FilterPC-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'min) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FilterPC-request>) istream)
  "Deserializes a message object of type '<FilterPC-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'min) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FilterPC-request>)))
  "Returns string type for a service object of type '<FilterPC-request>"
  "mcptam/FilterPCRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FilterPC-request)))
  "Returns string type for a service object of type 'FilterPC-request"
  "mcptam/FilterPCRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FilterPC-request>)))
  "Returns md5sum for a message object of type '<FilterPC-request>"
  "65a7199290f4e0fb7bab98f4498d6e85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FilterPC-request)))
  "Returns md5sum for a message object of type 'FilterPC-request"
  "65a7199290f4e0fb7bab98f4498d6e85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FilterPC-request>)))
  "Returns full string definition for message of type '<FilterPC-request>"
  (cl:format cl:nil "geometry_msgs/Vector3 max~%geometry_msgs/Vector3 min~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FilterPC-request)))
  "Returns full string definition for message of type 'FilterPC-request"
  (cl:format cl:nil "geometry_msgs/Vector3 max~%geometry_msgs/Vector3 min~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FilterPC-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'min))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FilterPC-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FilterPC-request
    (cl:cons ':max (max msg))
    (cl:cons ':min (min msg))
))
;//! \htmlinclude FilterPC-response.msg.html

(cl:defclass <FilterPC-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass FilterPC-response (<FilterPC-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FilterPC-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FilterPC-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcptam-srv:<FilterPC-response> is deprecated: use mcptam-srv:FilterPC-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <FilterPC-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-srv:success-val is deprecated.  Use mcptam-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FilterPC-response>) ostream)
  "Serializes a message object of type '<FilterPC-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FilterPC-response>) istream)
  "Deserializes a message object of type '<FilterPC-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FilterPC-response>)))
  "Returns string type for a service object of type '<FilterPC-response>"
  "mcptam/FilterPCResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FilterPC-response)))
  "Returns string type for a service object of type 'FilterPC-response"
  "mcptam/FilterPCResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FilterPC-response>)))
  "Returns md5sum for a message object of type '<FilterPC-response>"
  "65a7199290f4e0fb7bab98f4498d6e85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FilterPC-response)))
  "Returns md5sum for a message object of type 'FilterPC-response"
  "65a7199290f4e0fb7bab98f4498d6e85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FilterPC-response>)))
  "Returns full string definition for message of type '<FilterPC-response>"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FilterPC-response)))
  "Returns full string definition for message of type 'FilterPC-response"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FilterPC-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FilterPC-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FilterPC-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FilterPC)))
  'FilterPC-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FilterPC)))
  'FilterPC-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FilterPC)))
  "Returns string type for a service object of type '<FilterPC>"
  "mcptam/FilterPC")