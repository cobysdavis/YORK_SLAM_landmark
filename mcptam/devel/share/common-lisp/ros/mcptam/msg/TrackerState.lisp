; Auto-generated. Do not edit!


(cl:in-package mcptam-msg)


;//! \htmlinclude TrackerState.msg.html

(cl:defclass <TrackerState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (se3TrackerPose
    :reader se3TrackerPose
    :initarg :se3TrackerPose
    :type cl:string
    :initform "")
   (bLost
    :reader bLost
    :initarg :bLost
    :type cl:boolean
    :initform cl:nil)
   (dCovNorm
    :reader dCovNorm
    :initarg :dCovNorm
    :type cl:float
    :initform 0.0)
   (mTrackingQuality
    :reader mTrackingQuality
    :initarg :mTrackingQuality
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrackerState (<TrackerState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackerState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackerState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcptam-msg:<TrackerState> is deprecated: use mcptam-msg:TrackerState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrackerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:header-val is deprecated.  Use mcptam-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'se3TrackerPose-val :lambda-list '(m))
(cl:defmethod se3TrackerPose-val ((m <TrackerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:se3TrackerPose-val is deprecated.  Use mcptam-msg:se3TrackerPose instead.")
  (se3TrackerPose m))

(cl:ensure-generic-function 'bLost-val :lambda-list '(m))
(cl:defmethod bLost-val ((m <TrackerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:bLost-val is deprecated.  Use mcptam-msg:bLost instead.")
  (bLost m))

(cl:ensure-generic-function 'dCovNorm-val :lambda-list '(m))
(cl:defmethod dCovNorm-val ((m <TrackerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:dCovNorm-val is deprecated.  Use mcptam-msg:dCovNorm instead.")
  (dCovNorm m))

(cl:ensure-generic-function 'mTrackingQuality-val :lambda-list '(m))
(cl:defmethod mTrackingQuality-val ((m <TrackerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mTrackingQuality-val is deprecated.  Use mcptam-msg:mTrackingQuality instead.")
  (mTrackingQuality m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrackerState>)))
    "Constants for message type '<TrackerState>"
  '((:NONE . 0)
    (:BAD . 1)
    (:DODGY . 2)
    (:GOOD . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrackerState)))
    "Constants for message type 'TrackerState"
  '((:NONE . 0)
    (:BAD . 1)
    (:DODGY . 2)
    (:GOOD . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackerState>) ostream)
  "Serializes a message object of type '<TrackerState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'se3TrackerPose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'se3TrackerPose))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bLost) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dCovNorm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mTrackingQuality)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackerState>) istream)
  "Deserializes a message object of type '<TrackerState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'se3TrackerPose) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'se3TrackerPose) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'bLost) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dCovNorm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mTrackingQuality)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackerState>)))
  "Returns string type for a message object of type '<TrackerState>"
  "mcptam/TrackerState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackerState)))
  "Returns string type for a message object of type 'TrackerState"
  "mcptam/TrackerState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackerState>)))
  "Returns md5sum for a message object of type '<TrackerState>"
  "5883c1c32b30e2afd47e7309fc6c39a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackerState)))
  "Returns md5sum for a message object of type 'TrackerState"
  "5883c1c32b30e2afd47e7309fc6c39a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackerState>)))
  "Returns full string definition for message of type '<TrackerState>"
  (cl:format cl:nil "Header header~%string se3TrackerPose~%bool bLost~%float32 dCovNorm~%uint8 mTrackingQuality~%# Quality ratings in same order as enum in Tracker.h so we can do direct assignment~%uint8 NONE=0~%uint8 BAD=1~%uint8 DODGY=2~%uint8 GOOD=3~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackerState)))
  "Returns full string definition for message of type 'TrackerState"
  (cl:format cl:nil "Header header~%string se3TrackerPose~%bool bLost~%float32 dCovNorm~%uint8 mTrackingQuality~%# Quality ratings in same order as enum in Tracker.h so we can do direct assignment~%uint8 NONE=0~%uint8 BAD=1~%uint8 DODGY=2~%uint8 GOOD=3~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackerState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'se3TrackerPose))
     1
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackerState>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackerState
    (cl:cons ':header (header msg))
    (cl:cons ':se3TrackerPose (se3TrackerPose msg))
    (cl:cons ':bLost (bLost msg))
    (cl:cons ':dCovNorm (dCovNorm msg))
    (cl:cons ':mTrackingQuality (mTrackingQuality msg))
))
