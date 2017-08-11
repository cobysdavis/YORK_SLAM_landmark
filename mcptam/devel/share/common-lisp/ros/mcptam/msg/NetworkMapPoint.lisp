; Auto-generated. Do not edit!


(cl:in-package mcptam-msg)


;//! \htmlinclude NetworkMapPoint.msg.html

(cl:defclass <NetworkMapPoint> (roslisp-msg-protocol:ros-message)
  ((mv3WorldPos
    :reader mv3WorldPos
    :initarg :mv3WorldPos
    :type cl:string
    :initform "")
   (mnSourceLevel
    :reader mnSourceLevel
    :initarg :mnSourceLevel
    :type cl:fixnum
    :initform 0)
   (mv3PixelRight_W
    :reader mv3PixelRight_W
    :initarg :mv3PixelRight_W
    :type cl:string
    :initform "")
   (mv3PixelDown_W
    :reader mv3PixelDown_W
    :initarg :mv3PixelDown_W
    :type cl:string
    :initform "")
   (mirCenter
    :reader mirCenter
    :initarg :mirCenter
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0))
   (mId
    :reader mId
    :initarg :mId
    :type cl:string
    :initform "")
   (mSourceId
    :reader mSourceId
    :initarg :mSourceId
    :type cl:string
    :initform "")
   (mSourceCamName
    :reader mSourceCamName
    :initarg :mSourceCamName
    :type cl:string
    :initform "")
   (mbFixed
    :reader mbFixed
    :initarg :mbFixed
    :type cl:boolean
    :initform cl:nil)
   (mbOptimized
    :reader mbOptimized
    :initarg :mbOptimized
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass NetworkMapPoint (<NetworkMapPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NetworkMapPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NetworkMapPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcptam-msg:<NetworkMapPoint> is deprecated: use mcptam-msg:NetworkMapPoint instead.")))

(cl:ensure-generic-function 'mv3WorldPos-val :lambda-list '(m))
(cl:defmethod mv3WorldPos-val ((m <NetworkMapPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mv3WorldPos-val is deprecated.  Use mcptam-msg:mv3WorldPos instead.")
  (mv3WorldPos m))

(cl:ensure-generic-function 'mnSourceLevel-val :lambda-list '(m))
(cl:defmethod mnSourceLevel-val ((m <NetworkMapPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mnSourceLevel-val is deprecated.  Use mcptam-msg:mnSourceLevel instead.")
  (mnSourceLevel m))

(cl:ensure-generic-function 'mv3PixelRight_W-val :lambda-list '(m))
(cl:defmethod mv3PixelRight_W-val ((m <NetworkMapPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mv3PixelRight_W-val is deprecated.  Use mcptam-msg:mv3PixelRight_W instead.")
  (mv3PixelRight_W m))

(cl:ensure-generic-function 'mv3PixelDown_W-val :lambda-list '(m))
(cl:defmethod mv3PixelDown_W-val ((m <NetworkMapPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mv3PixelDown_W-val is deprecated.  Use mcptam-msg:mv3PixelDown_W instead.")
  (mv3PixelDown_W m))

(cl:ensure-generic-function 'mirCenter-val :lambda-list '(m))
(cl:defmethod mirCenter-val ((m <NetworkMapPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mirCenter-val is deprecated.  Use mcptam-msg:mirCenter instead.")
  (mirCenter m))

(cl:ensure-generic-function 'mId-val :lambda-list '(m))
(cl:defmethod mId-val ((m <NetworkMapPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mId-val is deprecated.  Use mcptam-msg:mId instead.")
  (mId m))

(cl:ensure-generic-function 'mSourceId-val :lambda-list '(m))
(cl:defmethod mSourceId-val ((m <NetworkMapPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mSourceId-val is deprecated.  Use mcptam-msg:mSourceId instead.")
  (mSourceId m))

(cl:ensure-generic-function 'mSourceCamName-val :lambda-list '(m))
(cl:defmethod mSourceCamName-val ((m <NetworkMapPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mSourceCamName-val is deprecated.  Use mcptam-msg:mSourceCamName instead.")
  (mSourceCamName m))

(cl:ensure-generic-function 'mbFixed-val :lambda-list '(m))
(cl:defmethod mbFixed-val ((m <NetworkMapPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mbFixed-val is deprecated.  Use mcptam-msg:mbFixed instead.")
  (mbFixed m))

(cl:ensure-generic-function 'mbOptimized-val :lambda-list '(m))
(cl:defmethod mbOptimized-val ((m <NetworkMapPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mbOptimized-val is deprecated.  Use mcptam-msg:mbOptimized instead.")
  (mbOptimized m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NetworkMapPoint>) ostream)
  "Serializes a message object of type '<NetworkMapPoint>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mv3WorldPos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mv3WorldPos))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mnSourceLevel)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mv3PixelRight_W))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mv3PixelRight_W))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mv3PixelDown_W))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mv3PixelDown_W))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'mirCenter))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mId))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mId))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mSourceId))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mSourceId))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mSourceCamName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mSourceCamName))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mbFixed) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mbOptimized) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NetworkMapPoint>) istream)
  "Deserializes a message object of type '<NetworkMapPoint>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mv3WorldPos) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mv3WorldPos) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mnSourceLevel)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mv3PixelRight_W) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mv3PixelRight_W) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mv3PixelDown_W) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mv3PixelDown_W) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:setf (cl:slot-value msg 'mirCenter) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'mirCenter)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mId) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mId) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mSourceId) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mSourceId) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mSourceCamName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mSourceCamName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'mbFixed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mbOptimized) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NetworkMapPoint>)))
  "Returns string type for a message object of type '<NetworkMapPoint>"
  "mcptam/NetworkMapPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NetworkMapPoint)))
  "Returns string type for a message object of type 'NetworkMapPoint"
  "mcptam/NetworkMapPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NetworkMapPoint>)))
  "Returns md5sum for a message object of type '<NetworkMapPoint>"
  "95dfc98be55d6b5904b3e3f286403802")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NetworkMapPoint)))
  "Returns md5sum for a message object of type 'NetworkMapPoint"
  "95dfc98be55d6b5904b3e3f286403802")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NetworkMapPoint>)))
  "Returns full string definition for message of type '<NetworkMapPoint>"
  (cl:format cl:nil "string mv3WorldPos~%uint8 mnSourceLevel~%string mv3PixelRight_W~%string mv3PixelDown_W~%float64[2] mirCenter~%string mId~%string mSourceId~%string mSourceCamName~%bool mbFixed~%bool mbOptimized~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NetworkMapPoint)))
  "Returns full string definition for message of type 'NetworkMapPoint"
  (cl:format cl:nil "string mv3WorldPos~%uint8 mnSourceLevel~%string mv3PixelRight_W~%string mv3PixelDown_W~%float64[2] mirCenter~%string mId~%string mSourceId~%string mSourceCamName~%bool mbFixed~%bool mbOptimized~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NetworkMapPoint>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mv3WorldPos))
     1
     4 (cl:length (cl:slot-value msg 'mv3PixelRight_W))
     4 (cl:length (cl:slot-value msg 'mv3PixelDown_W))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'mirCenter) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:length (cl:slot-value msg 'mId))
     4 (cl:length (cl:slot-value msg 'mSourceId))
     4 (cl:length (cl:slot-value msg 'mSourceCamName))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NetworkMapPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'NetworkMapPoint
    (cl:cons ':mv3WorldPos (mv3WorldPos msg))
    (cl:cons ':mnSourceLevel (mnSourceLevel msg))
    (cl:cons ':mv3PixelRight_W (mv3PixelRight_W msg))
    (cl:cons ':mv3PixelDown_W (mv3PixelDown_W msg))
    (cl:cons ':mirCenter (mirCenter msg))
    (cl:cons ':mId (mId msg))
    (cl:cons ':mSourceId (mSourceId msg))
    (cl:cons ':mSourceCamName (mSourceCamName msg))
    (cl:cons ':mbFixed (mbFixed msg))
    (cl:cons ':mbOptimized (mbOptimized msg))
))
