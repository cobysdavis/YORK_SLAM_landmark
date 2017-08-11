; Auto-generated. Do not edit!


(cl:in-package mcptam-msg)


;//! \htmlinclude NetworkMeasurement.msg.html

(cl:defclass <NetworkMeasurement> (roslisp-msg-protocol:ros-message)
  ((nLevel
    :reader nLevel
    :initarg :nLevel
    :type cl:fixnum
    :initform 0)
   (bSubPix
    :reader bSubPix
    :initarg :bSubPix
    :type cl:boolean
    :initform cl:nil)
   (v2RootPos
    :reader v2RootPos
    :initarg :v2RootPos
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0))
   (eSource
    :reader eSource
    :initarg :eSource
    :type cl:fixnum
    :initform 0)
   (mapPointId
    :reader mapPointId
    :initarg :mapPointId
    :type cl:string
    :initform ""))
)

(cl:defclass NetworkMeasurement (<NetworkMeasurement>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NetworkMeasurement>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NetworkMeasurement)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mcptam-msg:<NetworkMeasurement> is deprecated: use mcptam-msg:NetworkMeasurement instead.")))

(cl:ensure-generic-function 'nLevel-val :lambda-list '(m))
(cl:defmethod nLevel-val ((m <NetworkMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:nLevel-val is deprecated.  Use mcptam-msg:nLevel instead.")
  (nLevel m))

(cl:ensure-generic-function 'bSubPix-val :lambda-list '(m))
(cl:defmethod bSubPix-val ((m <NetworkMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:bSubPix-val is deprecated.  Use mcptam-msg:bSubPix instead.")
  (bSubPix m))

(cl:ensure-generic-function 'v2RootPos-val :lambda-list '(m))
(cl:defmethod v2RootPos-val ((m <NetworkMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:v2RootPos-val is deprecated.  Use mcptam-msg:v2RootPos instead.")
  (v2RootPos m))

(cl:ensure-generic-function 'eSource-val :lambda-list '(m))
(cl:defmethod eSource-val ((m <NetworkMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:eSource-val is deprecated.  Use mcptam-msg:eSource instead.")
  (eSource m))

(cl:ensure-generic-function 'mapPointId-val :lambda-list '(m))
(cl:defmethod mapPointId-val ((m <NetworkMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mcptam-msg:mapPointId-val is deprecated.  Use mcptam-msg:mapPointId instead.")
  (mapPointId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NetworkMeasurement>) ostream)
  "Serializes a message object of type '<NetworkMeasurement>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nLevel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bSubPix) 1 0)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'v2RootPos))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'eSource)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mapPointId))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mapPointId))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NetworkMeasurement>) istream)
  "Deserializes a message object of type '<NetworkMeasurement>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nLevel)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bSubPix) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'v2RootPos) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'v2RootPos)))
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'eSource)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NetworkMeasurement>)))
  "Returns string type for a message object of type '<NetworkMeasurement>"
  "mcptam/NetworkMeasurement")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NetworkMeasurement)))
  "Returns string type for a message object of type 'NetworkMeasurement"
  "mcptam/NetworkMeasurement")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NetworkMeasurement>)))
  "Returns md5sum for a message object of type '<NetworkMeasurement>"
  "a6beed70fe5b9a4435fd44bc9deb3fa1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NetworkMeasurement)))
  "Returns md5sum for a message object of type 'NetworkMeasurement"
  "a6beed70fe5b9a4435fd44bc9deb3fa1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NetworkMeasurement>)))
  "Returns full string definition for message of type '<NetworkMeasurement>"
  (cl:format cl:nil "uint8 nLevel~%bool bSubPix~%float64[2] v2RootPos~%uint8 eSource~%string mapPointId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NetworkMeasurement)))
  "Returns full string definition for message of type 'NetworkMeasurement"
  (cl:format cl:nil "uint8 nLevel~%bool bSubPix~%float64[2] v2RootPos~%uint8 eSource~%string mapPointId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NetworkMeasurement>))
  (cl:+ 0
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'v2RootPos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
     4 (cl:length (cl:slot-value msg 'mapPointId))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NetworkMeasurement>))
  "Converts a ROS message object to a list"
  (cl:list 'NetworkMeasurement
    (cl:cons ':nLevel (nLevel msg))
    (cl:cons ':bSubPix (bSubPix msg))
    (cl:cons ':v2RootPos (v2RootPos msg))
    (cl:cons ':eSource (eSource msg))
    (cl:cons ':mapPointId (mapPointId msg))
))
