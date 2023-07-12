; Auto-generated. Do not edit!


(cl:in-package sensors-msg)


;//! \htmlinclude PanTilt.msg.html

(cl:defclass <PanTilt> (roslisp-msg-protocol:ros-message)
  ((pan
    :reader pan
    :initarg :pan
    :type cl:float
    :initform 0.0)
   (tilt
    :reader tilt
    :initarg :tilt
    :type cl:float
    :initform 0.0)
   (rel
    :reader rel
    :initarg :rel
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PanTilt (<PanTilt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PanTilt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PanTilt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensors-msg:<PanTilt> is deprecated: use sensors-msg:PanTilt instead.")))

(cl:ensure-generic-function 'pan-val :lambda-list '(m))
(cl:defmethod pan-val ((m <PanTilt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensors-msg:pan-val is deprecated.  Use sensors-msg:pan instead.")
  (pan m))

(cl:ensure-generic-function 'tilt-val :lambda-list '(m))
(cl:defmethod tilt-val ((m <PanTilt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensors-msg:tilt-val is deprecated.  Use sensors-msg:tilt instead.")
  (tilt m))

(cl:ensure-generic-function 'rel-val :lambda-list '(m))
(cl:defmethod rel-val ((m <PanTilt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensors-msg:rel-val is deprecated.  Use sensors-msg:rel instead.")
  (rel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PanTilt>) ostream)
  "Serializes a message object of type '<PanTilt>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pan))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tilt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rel) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PanTilt>) istream)
  "Deserializes a message object of type '<PanTilt>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pan) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tilt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'rel) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PanTilt>)))
  "Returns string type for a message object of type '<PanTilt>"
  "sensors/PanTilt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PanTilt)))
  "Returns string type for a message object of type 'PanTilt"
  "sensors/PanTilt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PanTilt>)))
  "Returns md5sum for a message object of type '<PanTilt>"
  "c8ce171acfa745a5b6ceb9bc3cf0e1d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PanTilt)))
  "Returns md5sum for a message object of type 'PanTilt"
  "c8ce171acfa745a5b6ceb9bc3cf0e1d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PanTilt>)))
  "Returns full string definition for message of type '<PanTilt>"
  (cl:format cl:nil "float32 pan~%float32 tilt~%bool rel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PanTilt)))
  "Returns full string definition for message of type 'PanTilt"
  (cl:format cl:nil "float32 pan~%float32 tilt~%bool rel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PanTilt>))
  (cl:+ 0
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PanTilt>))
  "Converts a ROS message object to a list"
  (cl:list 'PanTilt
    (cl:cons ':pan (pan msg))
    (cl:cons ':tilt (tilt msg))
    (cl:cons ':rel (rel msg))
))
