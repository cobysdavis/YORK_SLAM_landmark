; Auto-generated. Do not edit!


(cl:in-package mcptam-msg)


;//! \htmlinclude MapInfo.msg.html

(cl:defclass <MapInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (nNumPoints
    :reader nNumPoints
    :initarg :nNumPoints
    :type cl:integer
    :initform 0)
   (nNumPointsInTrash
    :reader nNumPointsInTrash
    :initarg :nNumPointsInTrash
    :type cl:integer
    :initform 0)
   (nNumMultiKeyFrames
    :reader nNumMultiKeyFrames
    :initarg :nNumMultiKeyFrames
    :type cl:integer
    :initform 0))
)

(cl:defclass MapInfo (<MapInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcptam-msg:<MapInfo> is deprecated: use mcptam-msg:MapInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MapInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:header-val is deprecated.  Use mcptam-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'nNumPoints-val :lambda-list '(m))
(cl:defmethod nNumPoints-val ((m <MapInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:nNumPoints-val is deprecated.  Use mcptam-msg:nNumPoints instead.")
  (nNumPoints m))

(cl:ensure-generic-function 'nNumPointsInTrash-val :lambda-list '(m))
(cl:defmethod nNumPointsInTrash-val ((m <MapInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:nNumPointsInTrash-val is deprecated.  Use mcptam-msg:nNumPointsInTrash instead.")
  (nNumPointsInTrash m))

(cl:ensure-generic-function 'nNumMultiKeyFrames-val :lambda-list '(m))
(cl:defmethod nNumMultiKeyFrames-val ((m <MapInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:nNumMultiKeyFrames-val is deprecated.  Use mcptam-msg:nNumMultiKeyFrames instead.")
  (nNumMultiKeyFrames m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapInfo>) ostream)
  "Serializes a message object of type '<MapInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nNumPoints)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nNumPoints)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nNumPoints)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nNumPoints)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nNumPointsInTrash)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nNumPointsInTrash)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nNumPointsInTrash)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nNumPointsInTrash)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nNumMultiKeyFrames)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nNumMultiKeyFrames)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nNumMultiKeyFrames)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nNumMultiKeyFrames)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapInfo>) istream)
  "Deserializes a message object of type '<MapInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nNumPoints)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nNumPoints)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nNumPoints)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nNumPoints)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nNumPointsInTrash)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nNumPointsInTrash)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nNumPointsInTrash)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nNumPointsInTrash)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nNumMultiKeyFrames)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nNumMultiKeyFrames)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nNumMultiKeyFrames)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nNumMultiKeyFrames)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapInfo>)))
  "Returns string type for a message object of type '<MapInfo>"
  "mcptam/MapInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapInfo)))
  "Returns string type for a message object of type 'MapInfo"
  "mcptam/MapInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapInfo>)))
  "Returns md5sum for a message object of type '<MapInfo>"
  "e32dd0a28046dc1a3d0b3366f3ecf30e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapInfo)))
  "Returns md5sum for a message object of type 'MapInfo"
  "e32dd0a28046dc1a3d0b3366f3ecf30e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapInfo>)))
  "Returns full string definition for message of type '<MapInfo>"
  (cl:format cl:nil "Header header~%uint32 nNumPoints~%uint32 nNumPointsInTrash~%uint32 nNumMultiKeyFrames~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapInfo)))
  "Returns full string definition for message of type 'MapInfo"
  (cl:format cl:nil "Header header~%uint32 nNumPoints~%uint32 nNumPointsInTrash~%uint32 nNumMultiKeyFrames~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'MapInfo
    (cl:cons ':header (header msg))
    (cl:cons ':nNumPoints (nNumPoints msg))
    (cl:cons ':nNumPointsInTrash (nNumPointsInTrash msg))
    (cl:cons ':nNumMultiKeyFrames (nNumMultiKeyFrames msg))
))
