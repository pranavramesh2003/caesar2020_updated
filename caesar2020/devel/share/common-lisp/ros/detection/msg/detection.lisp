; Auto-generated. Do not edit!


(cl:in-package detection-msg)


;//! \htmlinclude detection.msg.html

(cl:defclass <detection> (roslisp-msg-protocol:ros-message)
  ((xmin
    :reader xmin
    :initarg :xmin
    :type cl:fixnum
    :initform 0)
   (ymin
    :reader ymin
    :initarg :ymin
    :type cl:fixnum
    :initform 0)
   (xmax
    :reader xmax
    :initarg :xmax
    :type cl:fixnum
    :initform 0)
   (ymax
    :reader ymax
    :initarg :ymax
    :type cl:fixnum
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (category
    :reader category
    :initarg :category
    :type cl:fixnum
    :initform 0))
)

(cl:defclass detection (<detection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <detection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'detection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name detection-msg:<detection> is deprecated: use detection-msg:detection instead.")))

(cl:ensure-generic-function 'xmin-val :lambda-list '(m))
(cl:defmethod xmin-val ((m <detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detection-msg:xmin-val is deprecated.  Use detection-msg:xmin instead.")
  (xmin m))

(cl:ensure-generic-function 'ymin-val :lambda-list '(m))
(cl:defmethod ymin-val ((m <detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detection-msg:ymin-val is deprecated.  Use detection-msg:ymin instead.")
  (ymin m))

(cl:ensure-generic-function 'xmax-val :lambda-list '(m))
(cl:defmethod xmax-val ((m <detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detection-msg:xmax-val is deprecated.  Use detection-msg:xmax instead.")
  (xmax m))

(cl:ensure-generic-function 'ymax-val :lambda-list '(m))
(cl:defmethod ymax-val ((m <detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detection-msg:ymax-val is deprecated.  Use detection-msg:ymax instead.")
  (ymax m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detection-msg:score-val is deprecated.  Use detection-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'category-val :lambda-list '(m))
(cl:defmethod category-val ((m <detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detection-msg:category-val is deprecated.  Use detection-msg:category instead.")
  (category m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <detection>) ostream)
  "Serializes a message object of type '<detection>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'xmin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'xmin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ymin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ymin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'xmax)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'xmax)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ymax)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ymax)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'category)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <detection>) istream)
  "Deserializes a message object of type '<detection>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'xmin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'xmin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ymin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ymin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'xmax)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'xmax)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ymax)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ymax)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'category)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<detection>)))
  "Returns string type for a message object of type '<detection>"
  "detection/detection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'detection)))
  "Returns string type for a message object of type 'detection"
  "detection/detection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<detection>)))
  "Returns md5sum for a message object of type '<detection>"
  "749131da678d2cc04e6f077d4ec426e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'detection)))
  "Returns md5sum for a message object of type 'detection"
  "749131da678d2cc04e6f077d4ec426e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<detection>)))
  "Returns full string definition for message of type '<detection>"
  (cl:format cl:nil "uint16 xmin~%uint16 ymin~%uint16 xmax~%uint16 ymax~%float32 score~%uint8 category #1:left 2:right 3:Ball~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'detection)))
  "Returns full string definition for message of type 'detection"
  (cl:format cl:nil "uint16 xmin~%uint16 ymin~%uint16 xmax~%uint16 ymax~%float32 score~%uint8 category #1:left 2:right 3:Ball~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <detection>))
  (cl:+ 0
     2
     2
     2
     2
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <detection>))
  "Converts a ROS message object to a list"
  (cl:list 'detection
    (cl:cons ':xmin (xmin msg))
    (cl:cons ':ymin (ymin msg))
    (cl:cons ':xmax (xmax msg))
    (cl:cons ':ymax (ymax msg))
    (cl:cons ':score (score msg))
    (cl:cons ':category (category msg))
))
