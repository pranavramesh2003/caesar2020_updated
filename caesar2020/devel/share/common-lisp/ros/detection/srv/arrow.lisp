; Auto-generated. Do not edit!


(cl:in-package detection-srv)


;//! \htmlinclude arrow-request.msg.html

(cl:defclass <arrow-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass arrow-request (<arrow-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <arrow-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'arrow-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name detection-srv:<arrow-request> is deprecated: use detection-srv:arrow-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <arrow-request>) ostream)
  "Serializes a message object of type '<arrow-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <arrow-request>) istream)
  "Deserializes a message object of type '<arrow-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<arrow-request>)))
  "Returns string type for a service object of type '<arrow-request>"
  "detection/arrowRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'arrow-request)))
  "Returns string type for a service object of type 'arrow-request"
  "detection/arrowRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<arrow-request>)))
  "Returns md5sum for a message object of type '<arrow-request>"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'arrow-request)))
  "Returns md5sum for a message object of type 'arrow-request"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<arrow-request>)))
  "Returns full string definition for message of type '<arrow-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'arrow-request)))
  "Returns full string definition for message of type 'arrow-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <arrow-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <arrow-request>))
  "Converts a ROS message object to a list"
  (cl:list 'arrow-request
))
;//! \htmlinclude arrow-response.msg.html

(cl:defclass <arrow-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass arrow-response (<arrow-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <arrow-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'arrow-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name detection-srv:<arrow-response> is deprecated: use detection-srv:arrow-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <arrow-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detection-srv:result-val is deprecated.  Use detection-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <arrow-response>) ostream)
  "Serializes a message object of type '<arrow-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <arrow-response>) istream)
  "Deserializes a message object of type '<arrow-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<arrow-response>)))
  "Returns string type for a service object of type '<arrow-response>"
  "detection/arrowResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'arrow-response)))
  "Returns string type for a service object of type 'arrow-response"
  "detection/arrowResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<arrow-response>)))
  "Returns md5sum for a message object of type '<arrow-response>"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'arrow-response)))
  "Returns md5sum for a message object of type 'arrow-response"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<arrow-response>)))
  "Returns full string definition for message of type '<arrow-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'arrow-response)))
  "Returns full string definition for message of type 'arrow-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <arrow-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <arrow-response>))
  "Converts a ROS message object to a list"
  (cl:list 'arrow-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'arrow)))
  'arrow-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'arrow)))
  'arrow-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'arrow)))
  "Returns string type for a service object of type '<arrow>"
  "detection/arrow")