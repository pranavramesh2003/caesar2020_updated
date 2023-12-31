; Auto-generated. Do not edit!


(cl:in-package navigation-srv)


;//! \htmlinclude dist_state-request.msg.html

(cl:defclass <dist_state-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass dist_state-request (<dist_state-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <dist_state-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'dist_state-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation-srv:<dist_state-request> is deprecated: use navigation-srv:dist_state-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <dist_state-request>) ostream)
  "Serializes a message object of type '<dist_state-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <dist_state-request>) istream)
  "Deserializes a message object of type '<dist_state-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<dist_state-request>)))
  "Returns string type for a service object of type '<dist_state-request>"
  "navigation/dist_stateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'dist_state-request)))
  "Returns string type for a service object of type 'dist_state-request"
  "navigation/dist_stateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<dist_state-request>)))
  "Returns md5sum for a message object of type '<dist_state-request>"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'dist_state-request)))
  "Returns md5sum for a message object of type 'dist_state-request"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<dist_state-request>)))
  "Returns full string definition for message of type '<dist_state-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'dist_state-request)))
  "Returns full string definition for message of type 'dist_state-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <dist_state-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <dist_state-request>))
  "Converts a ROS message object to a list"
  (cl:list 'dist_state-request
))
;//! \htmlinclude dist_state-response.msg.html

(cl:defclass <dist_state-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass dist_state-response (<dist_state-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <dist_state-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'dist_state-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation-srv:<dist_state-response> is deprecated: use navigation-srv:dist_state-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <dist_state-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-srv:state-val is deprecated.  Use navigation-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <dist_state-response>) ostream)
  "Serializes a message object of type '<dist_state-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <dist_state-response>) istream)
  "Deserializes a message object of type '<dist_state-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<dist_state-response>)))
  "Returns string type for a service object of type '<dist_state-response>"
  "navigation/dist_stateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'dist_state-response)))
  "Returns string type for a service object of type 'dist_state-response"
  "navigation/dist_stateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<dist_state-response>)))
  "Returns md5sum for a message object of type '<dist_state-response>"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'dist_state-response)))
  "Returns md5sum for a message object of type 'dist_state-response"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<dist_state-response>)))
  "Returns full string definition for message of type '<dist_state-response>"
  (cl:format cl:nil "string state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'dist_state-response)))
  "Returns full string definition for message of type 'dist_state-response"
  (cl:format cl:nil "string state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <dist_state-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <dist_state-response>))
  "Converts a ROS message object to a list"
  (cl:list 'dist_state-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'dist_state)))
  'dist_state-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'dist_state)))
  'dist_state-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'dist_state)))
  "Returns string type for a service object of type '<dist_state>"
  "navigation/dist_state")