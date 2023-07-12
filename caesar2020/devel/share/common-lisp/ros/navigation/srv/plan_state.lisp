; Auto-generated. Do not edit!


(cl:in-package navigation-srv)


;//! \htmlinclude plan_state-request.msg.html

(cl:defclass <plan_state-request> (roslisp-msg-protocol:ros-message)
  ((pause
    :reader pause
    :initarg :pause
    :type cl:fixnum
    :initform 0)
   (contin
    :reader contin
    :initarg :contin
    :type cl:fixnum
    :initform 0)
   (rst
    :reader rst
    :initarg :rst
    :type cl:fixnum
    :initform 0))
)

(cl:defclass plan_state-request (<plan_state-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <plan_state-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'plan_state-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation-srv:<plan_state-request> is deprecated: use navigation-srv:plan_state-request instead.")))

(cl:ensure-generic-function 'pause-val :lambda-list '(m))
(cl:defmethod pause-val ((m <plan_state-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-srv:pause-val is deprecated.  Use navigation-srv:pause instead.")
  (pause m))

(cl:ensure-generic-function 'contin-val :lambda-list '(m))
(cl:defmethod contin-val ((m <plan_state-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-srv:contin-val is deprecated.  Use navigation-srv:contin instead.")
  (contin m))

(cl:ensure-generic-function 'rst-val :lambda-list '(m))
(cl:defmethod rst-val ((m <plan_state-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-srv:rst-val is deprecated.  Use navigation-srv:rst instead.")
  (rst m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <plan_state-request>) ostream)
  "Serializes a message object of type '<plan_state-request>"
  (cl:let* ((signed (cl:slot-value msg 'pause)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'contin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rst)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <plan_state-request>) istream)
  "Deserializes a message object of type '<plan_state-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pause) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'contin) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rst) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<plan_state-request>)))
  "Returns string type for a service object of type '<plan_state-request>"
  "navigation/plan_stateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'plan_state-request)))
  "Returns string type for a service object of type 'plan_state-request"
  "navigation/plan_stateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<plan_state-request>)))
  "Returns md5sum for a message object of type '<plan_state-request>"
  "b77f4b0588be197cccf2ef4c09a3fa03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'plan_state-request)))
  "Returns md5sum for a message object of type 'plan_state-request"
  "b77f4b0588be197cccf2ef4c09a3fa03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<plan_state-request>)))
  "Returns full string definition for message of type '<plan_state-request>"
  (cl:format cl:nil "int8 pause~%int8 contin~%int8 rst~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'plan_state-request)))
  "Returns full string definition for message of type 'plan_state-request"
  (cl:format cl:nil "int8 pause~%int8 contin~%int8 rst~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <plan_state-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <plan_state-request>))
  "Converts a ROS message object to a list"
  (cl:list 'plan_state-request
    (cl:cons ':pause (pause msg))
    (cl:cons ':contin (contin msg))
    (cl:cons ':rst (rst msg))
))
;//! \htmlinclude plan_state-response.msg.html

(cl:defclass <plan_state-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass plan_state-response (<plan_state-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <plan_state-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'plan_state-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation-srv:<plan_state-response> is deprecated: use navigation-srv:plan_state-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <plan_state-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-srv:state-val is deprecated.  Use navigation-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <plan_state-response>) ostream)
  "Serializes a message object of type '<plan_state-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <plan_state-response>) istream)
  "Deserializes a message object of type '<plan_state-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<plan_state-response>)))
  "Returns string type for a service object of type '<plan_state-response>"
  "navigation/plan_stateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'plan_state-response)))
  "Returns string type for a service object of type 'plan_state-response"
  "navigation/plan_stateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<plan_state-response>)))
  "Returns md5sum for a message object of type '<plan_state-response>"
  "b77f4b0588be197cccf2ef4c09a3fa03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'plan_state-response)))
  "Returns md5sum for a message object of type 'plan_state-response"
  "b77f4b0588be197cccf2ef4c09a3fa03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<plan_state-response>)))
  "Returns full string definition for message of type '<plan_state-response>"
  (cl:format cl:nil "string state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'plan_state-response)))
  "Returns full string definition for message of type 'plan_state-response"
  (cl:format cl:nil "string state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <plan_state-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <plan_state-response>))
  "Converts a ROS message object to a list"
  (cl:list 'plan_state-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'plan_state)))
  'plan_state-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'plan_state)))
  'plan_state-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'plan_state)))
  "Returns string type for a service object of type '<plan_state>"
  "navigation/plan_state")