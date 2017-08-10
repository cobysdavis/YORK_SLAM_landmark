; Auto-generated. Do not edit!


(cl:in-package mcptam-msg)


;//! \htmlinclude NetworkMultiKeyFrame.msg.html

(cl:defclass <NetworkMultiKeyFrame> (roslisp-msg-protocol:ros-message)
  ((mse3BaseFromWorld
    :reader mse3BaseFromWorld
    :initarg :mse3BaseFromWorld
    :type cl:string
    :initform "")
   (mvKeyFrames
    :reader mvKeyFrames
    :initarg :mvKeyFrames
    :type (cl:vector mcptam-msg:NetworkKeyFrame)
   :initform (cl:make-array 0 :element-type 'mcptam-msg:NetworkKeyFrame :initial-element (cl:make-instance 'mcptam-msg:NetworkKeyFrame)))
   (mbFixed
    :reader mbFixed
    :initarg :mbFixed
    :type cl:boolean
    :initform cl:nil)
   (mdTotalDepthMean
    :reader mdTotalDepthMean
    :initarg :mdTotalDepthMean
    :type cl:float
    :initform 0.0)
   (mId
    :reader mId
    :initarg :mId
    :type cl:string
    :initform ""))
)

(cl:defclass NetworkMultiKeyFrame (<NetworkMultiKeyFrame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NetworkMultiKeyFrame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NetworkMultiKeyFrame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcptam-msg:<NetworkMultiKeyFrame> is deprecated: use mcptam-msg:NetworkMultiKeyFrame instead.")))

(cl:ensure-generic-function 'mse3BaseFromWorld-val :lambda-list '(m))
(cl:defmethod mse3BaseFromWorld-val ((m <NetworkMultiKeyFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mse3BaseFromWorld-val is deprecated.  Use mcptam-msg:mse3BaseFromWorld instead.")
  (mse3BaseFromWorld m))

(cl:ensure-generic-function 'mvKeyFrames-val :lambda-list '(m))
(cl:defmethod mvKeyFrames-val ((m <NetworkMultiKeyFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mvKeyFrames-val is deprecated.  Use mcptam-msg:mvKeyFrames instead.")
  (mvKeyFrames m))

(cl:ensure-generic-function 'mbFixed-val :lambda-list '(m))
(cl:defmethod mbFixed-val ((m <NetworkMultiKeyFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mbFixed-val is deprecated.  Use mcptam-msg:mbFixed instead.")
  (mbFixed m))

(cl:ensure-generic-function 'mdTotalDepthMean-val :lambda-list '(m))
(cl:defmethod mdTotalDepthMean-val ((m <NetworkMultiKeyFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mdTotalDepthMean-val is deprecated.  Use mcptam-msg:mdTotalDepthMean instead.")
  (mdTotalDepthMean m))

(cl:ensure-generic-function 'mId-val :lambda-list '(m))
(cl:defmethod mId-val ((m <NetworkMultiKeyFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mId-val is deprecated.  Use mcptam-msg:mId instead.")
  (mId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NetworkMultiKeyFrame>) ostream)
  "Serializes a message object of type '<NetworkMultiKeyFrame>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mse3BaseFromWorld))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mse3BaseFromWorld))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mvKeyFrames))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'mvKeyFrames))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mbFixed) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mdTotalDepthMean))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mId))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mId))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NetworkMultiKeyFrame>) istream)
  "Deserializes a message object of type '<NetworkMultiKeyFrame>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mse3BaseFromWorld) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mse3BaseFromWorld) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mvKeyFrames) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mvKeyFrames)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mcptam-msg:NetworkKeyFrame))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'mbFixed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mdTotalDepthMean) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mId) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mId) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NetworkMultiKeyFrame>)))
  "Returns string type for a message object of type '<NetworkMultiKeyFrame>"
  "mcptam/NetworkMultiKeyFrame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NetworkMultiKeyFrame)))
  "Returns string type for a message object of type 'NetworkMultiKeyFrame"
  "mcptam/NetworkMultiKeyFrame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NetworkMultiKeyFrame>)))
  "Returns md5sum for a message object of type '<NetworkMultiKeyFrame>"
  "98b276a80a8dd282e5915f2a53818b19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NetworkMultiKeyFrame)))
  "Returns md5sum for a message object of type 'NetworkMultiKeyFrame"
  "98b276a80a8dd282e5915f2a53818b19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NetworkMultiKeyFrame>)))
  "Returns full string definition for message of type '<NetworkMultiKeyFrame>"
  (cl:format cl:nil "string mse3BaseFromWorld~%NetworkKeyFrame[] mvKeyFrames~%bool mbFixed~%float64 mdTotalDepthMean~%string mId~%~%================================================================================~%MSG: mcptam/NetworkKeyFrame~%string mse3CamFromBase~%string mse3CamFromWorld~%sensor_msgs/Image image~%sensor_msgs/Image mask~%NetworkMeasurement[] mvMeasurements~%float64 mdSceneDepthMean~%float64 mdSceneDepthSigma~%string mCamName~%string mParentId~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: mcptam/NetworkMeasurement~%uint8 nLevel~%bool bSubPix~%float64[2] v2RootPos~%uint8 eSource~%string mapPointId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NetworkMultiKeyFrame)))
  "Returns full string definition for message of type 'NetworkMultiKeyFrame"
  (cl:format cl:nil "string mse3BaseFromWorld~%NetworkKeyFrame[] mvKeyFrames~%bool mbFixed~%float64 mdTotalDepthMean~%string mId~%~%================================================================================~%MSG: mcptam/NetworkKeyFrame~%string mse3CamFromBase~%string mse3CamFromWorld~%sensor_msgs/Image image~%sensor_msgs/Image mask~%NetworkMeasurement[] mvMeasurements~%float64 mdSceneDepthMean~%float64 mdSceneDepthSigma~%string mCamName~%string mParentId~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: mcptam/NetworkMeasurement~%uint8 nLevel~%bool bSubPix~%float64[2] v2RootPos~%uint8 eSource~%string mapPointId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NetworkMultiKeyFrame>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mse3BaseFromWorld))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mvKeyFrames) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     8
     4 (cl:length (cl:slot-value msg 'mId))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NetworkMultiKeyFrame>))
  "Converts a ROS message object to a list"
  (cl:list 'NetworkMultiKeyFrame
    (cl:cons ':mse3BaseFromWorld (mse3BaseFromWorld msg))
    (cl:cons ':mvKeyFrames (mvKeyFrames msg))
    (cl:cons ':mbFixed (mbFixed msg))
    (cl:cons ':mdTotalDepthMean (mdTotalDepthMean msg))
    (cl:cons ':mId (mId msg))
))
