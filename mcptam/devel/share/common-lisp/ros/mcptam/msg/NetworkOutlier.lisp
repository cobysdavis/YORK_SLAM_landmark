; Auto-generated. Do not edit!


(cl:in-package mcptam-msg)


;//! \htmlinclude NetworkOutlier.msg.html

(cl:defclass <NetworkOutlier> (roslisp-msg-protocol:ros-message)
  ((mMKFId
    :reader mMKFId
    :initarg :mMKFId
    :type cl:string
    :initform "")
   (mCamName
    :reader mCamName
    :initarg :mCamName
    :type cl:string
    :initform "")
   (mapPointId
    :reader mapPointId
    :initarg :mapPointId
    :type cl:string
    :initform ""))
)

(cl:defclass NetworkOutlier (<NetworkOutlier>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NetworkOutlier>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NetworkOutlier)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcptam-msg:<NetworkOutlier> is deprecated: use mcptam-msg:NetworkOutlier instead.")))

(cl:ensure-generic-function 'mMKFId-val :lambda-list '(m))
(cl:defmethod mMKFId-val ((m <NetworkOutlier>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mMKFId-val is deprecated.  Use mcptam-msg:mMKFId instead.")
  (mMKFId m))

(cl:ensure-generic-function 'mCamName-val :lambda-list '(m))
(cl:defmethod mCamName-val ((m <NetworkOutlier>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mCamName-val is deprecated.  Use mcptam-msg:mCamName instead.")
  (mCamName m))

(cl:ensure-generic-function 'mapPointId-val :lambda-list '(m))
(cl:defmethod mapPointId-val ((m <NetworkOutlier>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mapPointId-val is deprecated.  Use mcptam-msg:mapPointId instead.")
  (mapPointId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NetworkOutlier>) ostream)
  "Serializes a message object of type '<NetworkOutlier>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mMKFId))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mMKFId))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mCamName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mCamName))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mapPointId))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mapPointId))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NetworkOutlier>) istream)
  "Deserializes a message object of type '<NetworkOutlier>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mMKFId) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mMKFId) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
      (cl:setf (cl:slot-value msg 'mapPointId) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mapPointId) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NetworkOutlier>)))
  "Returns string type for a message object of type '<NetworkOutlier>"
  "mcptam/NetworkOutlier")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NetworkOutlier)))
  "Returns string type for a message object of type 'NetworkOutlier"
  "mcptam/NetworkOutlier")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NetworkOutlier>)))
  "Returns md5sum for a message object of type '<NetworkOutlier>"
  "6204791cc9b8826d2fc05bb952aeebdb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NetworkOutlier)))
  "Returns md5sum for a message object of type 'NetworkOutlier"
  "6204791cc9b8826d2fc05bb952aeebdb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NetworkOutlier>)))
  "Returns full string definition for message of type '<NetworkOutlier>"
  (cl:format cl:nil "string mMKFId~%string mCamName~%string mapPointId~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NetworkOutlier)))
  "Returns full string definition for message of type 'NetworkOutlier"
  (cl:format cl:nil "string mMKFId~%string mCamName~%string mapPointId~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NetworkOutlier>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mMKFId))
     4 (cl:length (cl:slot-value msg 'mCamName))
     4 (cl:length (cl:slot-value msg 'mapPointId))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NetworkOutlier>))
  "Converts a ROS message object to a list"
  (cl:list 'NetworkOutlier
    (cl:cons ':mMKFId (mMKFId msg))
    (cl:cons ':mCamName (mCamName msg))
    (cl:cons ':mapPointId (mapPointId msg))
))
