; Auto-generated. Do not edit!


(cl:in-package mcptam-srv)


;//! \htmlinclude ModifyMap-request.msg.html

(cl:defclass <ModifyMap-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mvPoints
    :reader mvPoints
    :initarg :mvPoints
    :type (cl:vector mcptam-msg:NetworkMapPoint)
   :initform (cl:make-array 0 :element-type 'mcptam-msg:NetworkMapPoint :initial-element (cl:make-instance 'mcptam-msg:NetworkMapPoint)))
   (mvMultiKeyFrames
    :reader mvMultiKeyFrames
    :initarg :mvMultiKeyFrames
    :type (cl:vector mcptam-msg:NetworkMultiKeyFrame)
   :initform (cl:make-array 0 :element-type 'mcptam-msg:NetworkMultiKeyFrame :initial-element (cl:make-instance 'mcptam-msg:NetworkMultiKeyFrame)))
   (mvOutliers
    :reader mvOutliers
    :initarg :mvOutliers
    :type (cl:vector mcptam-msg:NetworkOutlier)
   :initform (cl:make-array 0 :element-type 'mcptam-msg:NetworkOutlier :initial-element (cl:make-instance 'mcptam-msg:NetworkOutlier)))
   (mState
    :reader mState
    :initarg :mState
    :type cl:fixnum
    :initform 0)
   (mdMaxCov
    :reader mdMaxCov
    :initarg :mdMaxCov
    :type cl:float
    :initform 0.0)
   (action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ModifyMap-request (<ModifyMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModifyMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModifyMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcptam-srv:<ModifyMap-request> is deprecated: use mcptam-srv:ModifyMap-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ModifyMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-srv:header-val is deprecated.  Use mcptam-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'mvPoints-val :lambda-list '(m))
(cl:defmethod mvPoints-val ((m <ModifyMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-srv:mvPoints-val is deprecated.  Use mcptam-srv:mvPoints instead.")
  (mvPoints m))

(cl:ensure-generic-function 'mvMultiKeyFrames-val :lambda-list '(m))
(cl:defmethod mvMultiKeyFrames-val ((m <ModifyMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-srv:mvMultiKeyFrames-val is deprecated.  Use mcptam-srv:mvMultiKeyFrames instead.")
  (mvMultiKeyFrames m))

(cl:ensure-generic-function 'mvOutliers-val :lambda-list '(m))
(cl:defmethod mvOutliers-val ((m <ModifyMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-srv:mvOutliers-val is deprecated.  Use mcptam-srv:mvOutliers instead.")
  (mvOutliers m))

(cl:ensure-generic-function 'mState-val :lambda-list '(m))
(cl:defmethod mState-val ((m <ModifyMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-srv:mState-val is deprecated.  Use mcptam-srv:mState instead.")
  (mState m))

(cl:ensure-generic-function 'mdMaxCov-val :lambda-list '(m))
(cl:defmethod mdMaxCov-val ((m <ModifyMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-srv:mdMaxCov-val is deprecated.  Use mcptam-srv:mdMaxCov instead.")
  (mdMaxCov m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <ModifyMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-srv:action-val is deprecated.  Use mcptam-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ModifyMap-request>)))
    "Constants for message type '<ModifyMap-request>"
  '((:ADD . 1)
    (:UPDATE . 2)
    (:DELETE . 3)
    (:OUTLIERS . 4)
    (:INIT . 5)
    (:RESET . 6)
    (:STATE . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ModifyMap-request)))
    "Constants for message type 'ModifyMap-request"
  '((:ADD . 1)
    (:UPDATE . 2)
    (:DELETE . 3)
    (:OUTLIERS . 4)
    (:INIT . 5)
    (:RESET . 6)
    (:STATE . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModifyMap-request>) ostream)
  "Serializes a message object of type '<ModifyMap-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mvPoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'mvPoints))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mvMultiKeyFrames))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'mvMultiKeyFrames))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mvOutliers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'mvOutliers))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mState)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mdMaxCov))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModifyMap-request>) istream)
  "Deserializes a message object of type '<ModifyMap-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mvPoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mvPoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mcptam-msg:NetworkMapPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mvMultiKeyFrames) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mvMultiKeyFrames)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mcptam-msg:NetworkMultiKeyFrame))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mvOutliers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mvOutliers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mcptam-msg:NetworkOutlier))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mState)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mdMaxCov) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModifyMap-request>)))
  "Returns string type for a service object of type '<ModifyMap-request>"
  "mcptam/ModifyMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModifyMap-request)))
  "Returns string type for a service object of type 'ModifyMap-request"
  "mcptam/ModifyMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModifyMap-request>)))
  "Returns md5sum for a message object of type '<ModifyMap-request>"
  "fa7bdbefce6df3cb1fff6a1c781fb2bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModifyMap-request)))
  "Returns md5sum for a message object of type 'ModifyMap-request"
  "fa7bdbefce6df3cb1fff6a1c781fb2bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModifyMap-request>)))
  "Returns full string definition for message of type '<ModifyMap-request>"
  (cl:format cl:nil "Header header~%NetworkMapPoint[] mvPoints~%NetworkMultiKeyFrame[] mvMultiKeyFrames~%NetworkOutlier[] mvOutliers~%uint8 mState~%float64 mdMaxCov~%~%uint8 action~%uint8 ADD=1~%uint8 UPDATE=2~%uint8 DELETE=3~%uint8 OUTLIERS=4~%uint8 INIT=5~%uint8 RESET=6~%uint8 STATE=7~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: mcptam/NetworkMapPoint~%string mv3WorldPos~%uint8 mnSourceLevel~%string mv3PixelRight_W~%string mv3PixelDown_W~%float64[2] mirCenter~%string mId~%string mSourceId~%string mSourceCamName~%bool mbFixed~%bool mbOptimized~%~%================================================================================~%MSG: mcptam/NetworkMultiKeyFrame~%string mse3BaseFromWorld~%NetworkKeyFrame[] mvKeyFrames~%bool mbFixed~%float64 mdTotalDepthMean~%string mId~%~%================================================================================~%MSG: mcptam/NetworkKeyFrame~%string mse3CamFromBase~%string mse3CamFromWorld~%sensor_msgs/Image image~%sensor_msgs/Image mask~%NetworkMeasurement[] mvMeasurements~%float64 mdSceneDepthMean~%float64 mdSceneDepthSigma~%string mCamName~%string mParentId~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: mcptam/NetworkMeasurement~%uint8 nLevel~%bool bSubPix~%float64[2] v2RootPos~%uint8 eSource~%string mapPointId~%~%================================================================================~%MSG: mcptam/NetworkOutlier~%string mMKFId~%string mCamName~%string mapPointId~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModifyMap-request)))
  "Returns full string definition for message of type 'ModifyMap-request"
  (cl:format cl:nil "Header header~%NetworkMapPoint[] mvPoints~%NetworkMultiKeyFrame[] mvMultiKeyFrames~%NetworkOutlier[] mvOutliers~%uint8 mState~%float64 mdMaxCov~%~%uint8 action~%uint8 ADD=1~%uint8 UPDATE=2~%uint8 DELETE=3~%uint8 OUTLIERS=4~%uint8 INIT=5~%uint8 RESET=6~%uint8 STATE=7~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: mcptam/NetworkMapPoint~%string mv3WorldPos~%uint8 mnSourceLevel~%string mv3PixelRight_W~%string mv3PixelDown_W~%float64[2] mirCenter~%string mId~%string mSourceId~%string mSourceCamName~%bool mbFixed~%bool mbOptimized~%~%================================================================================~%MSG: mcptam/NetworkMultiKeyFrame~%string mse3BaseFromWorld~%NetworkKeyFrame[] mvKeyFrames~%bool mbFixed~%float64 mdTotalDepthMean~%string mId~%~%================================================================================~%MSG: mcptam/NetworkKeyFrame~%string mse3CamFromBase~%string mse3CamFromWorld~%sensor_msgs/Image image~%sensor_msgs/Image mask~%NetworkMeasurement[] mvMeasurements~%float64 mdSceneDepthMean~%float64 mdSceneDepthSigma~%string mCamName~%string mParentId~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: mcptam/NetworkMeasurement~%uint8 nLevel~%bool bSubPix~%float64[2] v2RootPos~%uint8 eSource~%string mapPointId~%~%================================================================================~%MSG: mcptam/NetworkOutlier~%string mMKFId~%string mCamName~%string mapPointId~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModifyMap-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mvPoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mvMultiKeyFrames) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mvOutliers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModifyMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ModifyMap-request
    (cl:cons ':header (header msg))
    (cl:cons ':mvPoints (mvPoints msg))
    (cl:cons ':mvMultiKeyFrames (mvMultiKeyFrames msg))
    (cl:cons ':mvOutliers (mvOutliers msg))
    (cl:cons ':mState (mState msg))
    (cl:cons ':mdMaxCov (mdMaxCov msg))
    (cl:cons ':action (action msg))
))
;//! \htmlinclude ModifyMap-response.msg.html

(cl:defclass <ModifyMap-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ModifyMap-response (<ModifyMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModifyMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModifyMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcptam-srv:<ModifyMap-response> is deprecated: use mcptam-srv:ModifyMap-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ModifyMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-srv:success-val is deprecated.  Use mcptam-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModifyMap-response>) ostream)
  "Serializes a message object of type '<ModifyMap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModifyMap-response>) istream)
  "Deserializes a message object of type '<ModifyMap-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModifyMap-response>)))
  "Returns string type for a service object of type '<ModifyMap-response>"
  "mcptam/ModifyMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModifyMap-response)))
  "Returns string type for a service object of type 'ModifyMap-response"
  "mcptam/ModifyMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModifyMap-response>)))
  "Returns md5sum for a message object of type '<ModifyMap-response>"
  "fa7bdbefce6df3cb1fff6a1c781fb2bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModifyMap-response)))
  "Returns md5sum for a message object of type 'ModifyMap-response"
  "fa7bdbefce6df3cb1fff6a1c781fb2bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModifyMap-response>)))
  "Returns full string definition for message of type '<ModifyMap-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModifyMap-response)))
  "Returns full string definition for message of type 'ModifyMap-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModifyMap-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModifyMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ModifyMap-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ModifyMap)))
  'ModifyMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ModifyMap)))
  'ModifyMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModifyMap)))
  "Returns string type for a service object of type '<ModifyMap>"
  "mcptam/ModifyMap")