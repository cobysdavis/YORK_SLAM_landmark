; Auto-generated. Do not edit!


(cl:in-package mcptam-msg)


;//! \htmlinclude SystemInfo.msg.html

(cl:defclass <SystemInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (dFrameGrabDuration
    :reader dFrameGrabDuration
    :initarg :dFrameGrabDuration
    :type cl:float
    :initform 0.0)
   (dFrameDelayDuration
    :reader dFrameDelayDuration
    :initarg :dFrameDelayDuration
    :type cl:float
    :initform 0.0)
   (dTrackingDuration
    :reader dTrackingDuration
    :initarg :dTrackingDuration
    :type cl:float
    :initform 0.0)
   (dFPS
    :reader dFPS
    :initarg :dFPS
    :type cl:float
    :initform 0.0)
   (dGrabSuccessRatio
    :reader dGrabSuccessRatio
    :initarg :dGrabSuccessRatio
    :type cl:float
    :initform 0.0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SystemInfo (<SystemInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcptam-msg:<SystemInfo> is deprecated: use mcptam-msg:SystemInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SystemInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:header-val is deprecated.  Use mcptam-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'dFrameGrabDuration-val :lambda-list '(m))
(cl:defmethod dFrameGrabDuration-val ((m <SystemInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:dFrameGrabDuration-val is deprecated.  Use mcptam-msg:dFrameGrabDuration instead.")
  (dFrameGrabDuration m))

(cl:ensure-generic-function 'dFrameDelayDuration-val :lambda-list '(m))
(cl:defmethod dFrameDelayDuration-val ((m <SystemInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:dFrameDelayDuration-val is deprecated.  Use mcptam-msg:dFrameDelayDuration instead.")
  (dFrameDelayDuration m))

(cl:ensure-generic-function 'dTrackingDuration-val :lambda-list '(m))
(cl:defmethod dTrackingDuration-val ((m <SystemInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:dTrackingDuration-val is deprecated.  Use mcptam-msg:dTrackingDuration instead.")
  (dTrackingDuration m))

(cl:ensure-generic-function 'dFPS-val :lambda-list '(m))
(cl:defmethod dFPS-val ((m <SystemInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:dFPS-val is deprecated.  Use mcptam-msg:dFPS instead.")
  (dFPS m))

(cl:ensure-generic-function 'dGrabSuccessRatio-val :lambda-list '(m))
(cl:defmethod dGrabSuccessRatio-val ((m <SystemInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:dGrabSuccessRatio-val is deprecated.  Use mcptam-msg:dGrabSuccessRatio instead.")
  (dGrabSuccessRatio m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SystemInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:message-val is deprecated.  Use mcptam-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemInfo>) ostream)
  "Serializes a message object of type '<SystemInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dFrameGrabDuration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dFrameDelayDuration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dTrackingDuration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dFPS))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dGrabSuccessRatio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemInfo>) istream)
  "Deserializes a message object of type '<SystemInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dFrameGrabDuration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dFrameDelayDuration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dTrackingDuration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dFPS) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dGrabSuccessRatio) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemInfo>)))
  "Returns string type for a message object of type '<SystemInfo>"
  "mcptam/SystemInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemInfo)))
  "Returns string type for a message object of type 'SystemInfo"
  "mcptam/SystemInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemInfo>)))
  "Returns md5sum for a message object of type '<SystemInfo>"
  "c5f56bd62a47baa9993063032521ffe8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemInfo)))
  "Returns md5sum for a message object of type 'SystemInfo"
  "c5f56bd62a47baa9993063032521ffe8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemInfo>)))
  "Returns full string definition for message of type '<SystemInfo>"
  (cl:format cl:nil "Header header~%float32 dFrameGrabDuration~%float32 dFrameDelayDuration~%float32 dTrackingDuration~%float32 dFPS~%float32 dGrabSuccessRatio~%string message~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemInfo)))
  "Returns full string definition for message of type 'SystemInfo"
  (cl:format cl:nil "Header header~%float32 dFrameGrabDuration~%float32 dFrameDelayDuration~%float32 dTrackingDuration~%float32 dFPS~%float32 dGrabSuccessRatio~%string message~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemInfo
    (cl:cons ':header (header msg))
    (cl:cons ':dFrameGrabDuration (dFrameGrabDuration msg))
    (cl:cons ':dFrameDelayDuration (dFrameDelayDuration msg))
    (cl:cons ':dTrackingDuration (dTrackingDuration msg))
    (cl:cons ':dFPS (dFPS msg))
    (cl:cons ':dGrabSuccessRatio (dGrabSuccessRatio msg))
    (cl:cons ':message (message msg))
))
