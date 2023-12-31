;; Auto-generated. Do not edit!


(when (boundp 'sensors::Joy)
  (if (not (find-package "SENSORS"))
    (make-package "SENSORS"))
  (shadow 'Joy (find-package "SENSORS")))
(unless (find-package "SENSORS::JOY")
  (make-package "SENSORS::JOY"))

(in-package "ROS")
;;//! \htmlinclude Joy.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sensors::Joy
  :super ros::object
  :slots (_header _axes _buttons ))

(defmethod sensors::Joy
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:axes __axes) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:buttons __buttons) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _axes __axes)
   (setq _buttons __buttons)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:axes
   (&optional __axes)
   (if __axes (setq _axes __axes)) _axes)
  (:buttons
   (&optional __buttons)
   (if __buttons (setq _buttons __buttons)) _buttons)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[] _axes
    (* 4    (length _axes)) 4
    ;; int32[] _buttons
    (* 4    (length _buttons)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[] _axes
     (write-long (length _axes) s)
     (dotimes (i (length _axes))
       (sys::poke (elt _axes i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32[] _buttons
     (write-long (length _buttons) s)
     (dotimes (i (length _buttons))
       (write-long (elt _buttons i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[] _axes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _axes (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _axes i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32[] _buttons
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _buttons (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _buttons i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get sensors::Joy :md5sum-) "5a9ea5f83505693b71e785041e67a8bb")
(setf (get sensors::Joy :datatype-) "sensors/Joy")
(setf (get sensors::Joy :definition-)
      "# Reports the state of a joysticks axes and buttons.
Header header           # timestamp in the header is the time the data is received from the joystick
float32[] axes          # the axes measurements from a joystick
int32[] buttons         # the buttons measurements from a joystick 

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :sensors/Joy "5a9ea5f83505693b71e785041e67a8bb")


