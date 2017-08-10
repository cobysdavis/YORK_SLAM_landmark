; Auto-generated. Do not edit!


(cl:in-package mcptam-msg)


;//! \htmlinclude MapMakerTiming.msg.html

(cl:defclass <MapMakerTiming> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (elapsed
    :reader elapsed
    :initarg :elapsed
    :type cl:float
    :initform 0.0)
   (accepted
    :reader accepted
    :initarg :accepted
    :type cl:integer
    :initform 0)
   (total
    :reader total
    :initarg :total
    :type cl:integer
    :initform 0)
   (map_num_mkfs
    :reader map_num_mkfs
    :initarg :map_num_mkfs
    :type cl:integer
    :initform 0)
   (map_num_points
    :reader map_num_points
    :initarg :map_num_points
    :type cl:integer
    :initform 0))
)

(cl:defclass MapMakerTiming (<MapMakerTiming>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapMakerTiming>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapMakerTiming)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcptam-msg:<MapMakerTiming> is deprecated: use mcptam-msg:MapMakerTiming instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MapMakerTiming>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:header-val is deprecated.  Use mcptam-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'elapsed-val :lambda-list '(m))
(cl:defmethod elapsed-val ((m <MapMakerTiming>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:elapsed-val is deprecated.  Use mcptam-msg:elapsed instead.")
  (elapsed m))

(cl:ensure-generic-function 'accepted-val :lambda-list '(m))
(cl:defmethod accepted-val ((m <MapMakerTiming>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:accepted-val is deprecated.  Use mcptam-msg:accepted instead.")
  (accepted m))

(cl:ensure-generic-function 'total-val :lambda-list '(m))
(cl:defmethod total-val ((m <MapMakerTiming>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:total-val is deprecated.  Use mcptam-msg:total instead.")
  (total m))

(cl:ensure-generic-function 'map_num_mkfs-val :lambda-list '(m))
(cl:defmethod map_num_mkfs-val ((m <MapMakerTiming>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:map_num_mkfs-val is deprecated.  Use mcptam-msg:map_num_mkfs instead.")
  (map_num_mkfs m))

(cl:ensure-generic-function 'map_num_points-val :lambda-list '(m))
(cl:defmethod map_num_points-val ((m <MapMakerTiming>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:map_num_points-val is deprecated.  Use mcptam-msg:map_num_points instead.")
  (map_num_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapMakerTiming>) ostream)
  "Serializes a message object of type '<MapMakerTiming>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'elapsed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'accepted)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'total)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'map_num_mkfs)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'map_num_points)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapMakerTiming>) istream)
  "Deserializes a message object of type '<MapMakerTiming>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'elapsed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'accepted) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'total) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_num_mkfs) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_num_points) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapMakerTiming>)))
  "Returns string type for a message object of type '<MapMakerTiming>"
  "mcptam/MapMakerTiming")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapMakerTiming)))
  "Returns string type for a message object of type 'MapMakerTiming"
  "mcptam/MapMakerTiming")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapMakerTiming>)))
  "Returns md5sum for a message object of type '<MapMakerTiming>"
  "80db30380a7157a873d7db983881ec5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapMakerTiming)))
  "Returns md5sum for a message object of type 'MapMakerTiming"
  "80db30380a7157a873d7db983881ec5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapMakerTiming>)))
  "Returns full string definition for message of type '<MapMakerTiming>"
  (cl:format cl:nil "Header header~%float32 elapsed~%int32 accepted~%int32 total~%int32 map_num_mkfs~%int32 map_num_points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapMakerTiming)))
  "Returns full string definition for message of type 'MapMakerTiming"
  (cl:format cl:nil "Header header~%float32 elapsed~%int32 accepted~%int32 total~%int32 map_num_mkfs~%int32 map_num_points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapMakerTiming>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapMakerTiming>))
  "Converts a ROS message object to a list"
  (cl:list 'MapMakerTiming
    (cl:cons ':header (header msg))
    (cl:cons ':elapsed (elapsed msg))
    (cl:cons ':accepted (accepted msg))
    (cl:cons ':total (total msg))
    (cl:cons ':map_num_mkfs (map_num_mkfs msg))
    (cl:cons ':map_num_points (map_num_points msg))
))
