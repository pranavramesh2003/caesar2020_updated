; Auto-generated. Do not edit!


(cl:in-package science-msg)


;//! \htmlinclude actuators.msg.html

(cl:defclass <actuators> (roslisp-msg-protocol:ros-message)
  ((stepper
    :reader stepper
    :initarg :stepper
    :type cl:fixnum
    :initform 0)
   (linac
    :reader linac
    :initarg :linac
    :type cl:fixnum
    :initform 0)
   (micro
    :reader micro
    :initarg :micro
    :type cl:fixnum
    :initform 0)
   (rhino
    :reader rhino
    :initarg :rhino
    :type cl:fixnum
    :initform 0)
   (lid
    :reader lid
    :initarg :lid
    :type cl:fixnum
    :initform 0)
   (sht
    :reader sht
    :initarg :sht
    :type cl:fixnum
    :initform 0))
)

(cl:defclass actuators (<actuators>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <actuators>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'actuators)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name science-msg:<actuators> is deprecated: use science-msg:actuators instead.")))

(cl:ensure-generic-function 'stepper-val :lambda-list '(m))
(cl:defmethod stepper-val ((m <actuators>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader science-msg:stepper-val is deprecated.  Use science-msg:stepper instead.")
  (stepper m))

(cl:ensure-generic-function 'linac-val :lambda-list '(m))
(cl:defmethod linac-val ((m <actuators>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader science-msg:linac-val is deprecated.  Use science-msg:linac instead.")
  (linac m))

(cl:ensure-generic-function 'micro-val :lambda-list '(m))
(cl:defmethod micro-val ((m <actuators>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader science-msg:micro-val is deprecated.  Use science-msg:micro instead.")
  (micro m))

(cl:ensure-generic-function 'rhino-val :lambda-list '(m))
(cl:defmethod rhino-val ((m <actuators>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader science-msg:rhino-val is deprecated.  Use science-msg:rhino instead.")
  (rhino m))

(cl:ensure-generic-function 'lid-val :lambda-list '(m))
(cl:defmethod lid-val ((m <actuators>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader science-msg:lid-val is deprecated.  Use science-msg:lid instead.")
  (lid m))

(cl:ensure-generic-function 'sht-val :lambda-list '(m))
(cl:defmethod sht-val ((m <actuators>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader science-msg:sht-val is deprecated.  Use science-msg:sht instead.")
  (sht m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <actuators>) ostream)
  "Serializes a message object of type '<actuators>"
  (cl:let* ((signed (cl:slot-value msg 'stepper)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'linac)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'micro)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rhino)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'sht)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <actuators>) istream)
  "Deserializes a message object of type '<actuators>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stepper) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'linac) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'micro) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rhino) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lid) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sht) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<actuators>)))
  "Returns string type for a message object of type '<actuators>"
  "science/actuators")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'actuators)))
  "Returns string type for a message object of type 'actuators"
  "science/actuators")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<actuators>)))
  "Returns md5sum for a message object of type '<actuators>"
  "25eb6d63d183ea00408e6fe0331e103a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'actuators)))
  "Returns md5sum for a message object of type 'actuators"
  "25eb6d63d183ea00408e6fe0331e103a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<actuators>)))
  "Returns full string definition for message of type '<actuators>"
  (cl:format cl:nil "int16 stepper~%int16 linac~%int16 micro~%int16 rhino~%int16 lid~%int16 sht~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'actuators)))
  "Returns full string definition for message of type 'actuators"
  (cl:format cl:nil "int16 stepper~%int16 linac~%int16 micro~%int16 rhino~%int16 lid~%int16 sht~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <actuators>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <actuators>))
  "Converts a ROS message object to a list"
  (cl:list 'actuators
    (cl:cons ':stepper (stepper msg))
    (cl:cons ':linac (linac msg))
    (cl:cons ':micro (micro msg))
    (cl:cons ':rhino (rhino msg))
    (cl:cons ':lid (lid msg))
    (cl:cons ':sht (sht msg))
))
