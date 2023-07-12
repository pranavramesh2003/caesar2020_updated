; Auto-generated. Do not edit!


(cl:in-package detection-srv)


;//! \htmlinclude reached-request.msg.html

(cl:defclass <reached-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass reached-request (<reached-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <reached-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'reached-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name detection-srv:<reached-request> is deprecated: use detection-srv:reached-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <reached-request>) ostream)
  "Serializes a message object of type '<reached-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <reached-request>) istream)
  "Deserializes a message object of type '<reached-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<reached-request>)))
  "Returns string type for a service object of type '<reached-request>"
  "detection/reachedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'reached-request)))
  "Returns string type for a service object of type 'reached-request"
  "detection/reachedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<reached-request>)))
  "Returns md5sum for a message object of type '<reached-request>"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'reached-request)))
  "Returns md5sum for a message object of type 'reached-request"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<reached-request>)))
  "Returns full string definition for message of type '<reached-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'reached-request)))
  "Returns full string definition for message of type 'reached-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <reached-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <reached-request>))
  "Converts a ROS message object to a list"
  (cl:list 'reached-request
))
;//! \htmlinclude reached-response.msg.html

(cl:defclass <reached-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass reached-response (<reached-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <reached-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'reached-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name detection-srv:<reached-response> is deprecated: use detection-srv:reached-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <reached-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detection-srv:result-val is deprecated.  Use detection-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <reached-response>) ostream)
  "Serializes a message object of type '<reached-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <reached-response>) istream)
  "Deserializes a message object of type '<reached-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<reached-response>)))
  "Returns string type for a service object of type '<reached-response>"
  "detection/reachedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'reached-response)))
  "Returns string type for a service object of type 'reached-response"
  "detection/reachedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<reached-response>)))
  "Returns md5sum for a message object of type '<reached-response>"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'reached-response)))
  "Returns md5sum for a message object of type 'reached-response"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<reached-response>)))
  "Returns full string definition for message of type '<reached-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'reached-response)))
  "Returns full string definition for message of type 'reached-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <reached-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <reached-response>))
  "Converts a ROS message object to a list"
  (cl:list 'reached-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'reached)))
  'reached-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'reached)))
  'reached-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'reached)))
  "Returns string type for a service object of type '<reached>"
  "detection/reached")