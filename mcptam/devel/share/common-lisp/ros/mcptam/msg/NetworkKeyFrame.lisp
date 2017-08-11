; Auto-generated. Do not edit!


(cl:in-package mcptam-msg)


;//! \htmlinclude NetworkKeyFrame.msg.html

(cl:defclass <NetworkKeyFrame> (roslisp-msg-protocol:ros-message)
  ((mse3CamFromBase
    :reader mse3CamFromBase
    :initarg :mse3CamFromBase
    :type cl:string
    :initform "")
   (mse3CamFromWorld
    :reader mse3CamFromWorld
    :initarg :mse3CamFromWorld
    :type cl:string
    :initform "")
   (image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (mask
    :reader mask
    :initarg :mask
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (mvMeasurements
    :reader mvMeasurements
    :initarg :mvMeasurements
    :type (cl:vector mcptam-msg:NetworkMeasurement)
   :initform (cl:make-array 0 :element-type 'mcptam-msg:NetworkMeasurement :initial-element (cl:make-instance 'mcptam-msg:NetworkMeasurement)))
   (mdSceneDepthMean
    :reader mdSceneDepthMean
    :initarg :mdSceneDepthMean
    :type cl:float
    :initform 0.0)
   (mdSceneDepthSigma
    :reader mdSceneDepthSigma
    :initarg :mdSceneDepthSigma
    :type cl:float
    :initform 0.0)
   (mCamName
    :reader mCamName
    :initarg :mCamName
    :type cl:string
    :initform "")
   (mParentId
    :reader mParentId
    :initarg :mParentId
    :type cl:string
    :initform ""))
)

(cl:defclass NetworkKeyFrame (<NetworkKeyFrame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NetworkKeyFrame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NetworkKeyFrame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcptam-msg:<NetworkKeyFrame> is deprecated: use mcptam-msg:NetworkKeyFrame instead.")))

(cl:ensure-generic-function 'mse3CamFromBase-val :lambda-list '(m))
(cl:defmethod mse3CamFromBase-val ((m <NetworkKeyFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mse3CamFromBase-val is deprecated.  Use mcptam-msg:mse3CamFromBase instead.")
  (mse3CamFromBase m))

(cl:ensure-generic-function 'mse3CamFromWorld-val :lambda-list '(m))
(cl:defmethod mse3CamFromWorld-val ((m <NetworkKeyFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mse3CamFromWorld-val is deprecated.  Use mcptam-msg:mse3CamFromWorld instead.")
  (mse3CamFromWorld m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <NetworkKeyFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:image-val is deprecated.  Use mcptam-msg:image instead.")
  (image m))

(cl:ensure-generic-function 'mask-val :lambda-list '(m))
(cl:defmethod mask-val ((m <NetworkKeyFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mask-val is deprecated.  Use mcptam-msg:mask instead.")
  (mask m))

(cl:ensure-generic-function 'mvMeasurements-val :lambda-list '(m))
(cl:defmethod mvMeasurements-val ((m <NetworkKeyFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mvMeasurements-val is deprecated.  Use mcptam-msg:mvMeasurements instead.")
  (mvMeasurements m))

(cl:ensure-generic-function 'mdSceneDepthMean-val :lambda-list '(m))
(cl:defmethod mdSceneDepthMean-val ((m <NetworkKeyFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mdSceneDepthMean-val is deprecated.  Use mcptam-msg:mdSceneDepthMean instead.")
  (mdSceneDepthMean m))

(cl:ensure-generic-function 'mdSceneDepthSigma-val :lambda-list '(m))
(cl:defmethod mdSceneDepthSigma-val ((m <NetworkKeyFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mdSceneDepthSigma-val is deprecated.  Use mcptam-msg:mdSceneDepthSigma instead.")
  (mdSceneDepthSigma m))

(cl:ensure-generic-function 'mCamName-val :lambda-list '(m))
(cl:defmethod mCamName-val ((m <NetworkKeyFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mCamName-val is deprecated.  Use mcptam-msg:mCamName instead.")
  (mCamName m))

(cl:ensure-generic-function 'mParentId-val :lambda-list '(m))
(cl:defmethod mParentId-val ((m <NetworkKeyFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mParentId-val is deprecated.  Use mcptam-msg:mParentId instead.")
  (mParentId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NetworkKeyFrame>) ostream)
  "Serializes a message object of type '<NetworkKeyFrame>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mse3CamFromBase))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mse3CamFromBase))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mse3CamFromWorld))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mse3CamFromWorld))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mask) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mvMeasurements))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'mvMeasurements))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mdSceneDepthMean))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mdSceneDepthSigma))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mCamName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mCamName))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mParentId))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mParentId))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NetworkKeyFrame>) istream)
  "Deserializes a message object of type '<NetworkKeyFrame>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mse3CamFromBase) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mse3CamFromBase) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mse3CamFromWorld) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mse3CamFromWorld) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mask) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mvMeasurements) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mvMeasurements)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mcptam-msg:NetworkMeasurement))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mdSceneDepthMean) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mdSceneDepthSigma) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mCamName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mCamName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mParentId) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mParentId) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NetworkKeyFrame>)))
  "Returns string type for a message object of type '<NetworkKeyFrame>"
  "mcptam/NetworkKeyFrame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NetworkKeyFrame)))
  "Returns string type for a message object of type 'NetworkKeyFrame"
  "mcptam/NetworkKeyFrame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NetworkKeyFrame>)))
  "Returns md5sum for a message object of type '<NetworkKeyFrame>"
  "8f59eaa4c697752d3cb2282e3985e3d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NetworkKeyFrame)))
  "Returns md5sum for a message object of type 'NetworkKeyFrame"
  "8f59eaa4c697752d3cb2282e3985e3d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NetworkKeyFrame>)))
  "Returns full string definition for message of type '<NetworkKeyFrame>"
  (cl:format cl:nil "string mse3CamFromBase~%string mse3CamFromWorld~%sensor_msgs/Image image~%sensor_msgs/Image mask~%NetworkMeasurement[] mvMeasurements~%float64 mdSceneDepthMean~%float64 mdSceneDepthSigma~%string mCamName~%string mParentId~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: mcptam/NetworkMeasurement~%uint8 nLevel~%bool bSubPix~%float64[2] v2RootPos~%uint8 eSource~%string mapPointId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NetworkKeyFrame)))
  "Returns full string definition for message of type 'NetworkKeyFrame"
  (cl:format cl:nil "string mse3CamFromBase~%string mse3CamFromWorld~%sensor_msgs/Image image~%sensor_msgs/Image mask~%NetworkMeasurement[] mvMeasurements~%float64 mdSceneDepthMean~%float64 mdSceneDepthSigma~%string mCamName~%string mParentId~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: mcptam/NetworkMeasurement~%uint8 nLevel~%bool bSubPix~%float64[2] v2RootPos~%uint8 eSource~%string mapPointId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NetworkKeyFrame>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mse3CamFromBase))
     4 (cl:length (cl:slot-value msg 'mse3CamFromWorld))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mask))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mvMeasurements) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
     8
     4 (cl:length (cl:slot-value msg 'mCamName))
     4 (cl:length (cl:slot-value msg 'mParentId))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NetworkKeyFrame>))
  "Converts a ROS message object to a list"
  (cl:list 'NetworkKeyFrame
    (cl:cons ':mse3CamFromBase (mse3CamFromBase msg))
    (cl:cons ':mse3CamFromWorld (mse3CamFromWorld msg))
    (cl:cons ':image (image msg))
    (cl:cons ':mask (mask msg))
    (cl:cons ':mvMeasurements (mvMeasurements msg))
    (cl:cons ':mdSceneDepthMean (mdSceneDepthMean msg))
    (cl:cons ':mdSceneDepthSigma (mdSceneDepthSigma msg))
    (cl:cons ':mCamName (mCamName msg))
    (cl:cons ':mParentId (mParentId msg))
))
