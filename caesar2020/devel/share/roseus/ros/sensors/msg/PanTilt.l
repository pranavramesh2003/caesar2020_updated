;; Auto-generated. Do not edit!


(when (boundp 'sensors::PanTilt)
  (if (not (find-package "SENSORS"))
    (make-package "SENSORS"))
  (shadow 'PanTilt (find-package "SENSORS")))
(unless (find-package "SENSORS::PANTILT")
  (make-package "SENSORS::PANTILT"))

(in-package "ROS")
;;//! \htmlinclude PanTilt.msg.html


(defclass sensors::PanTilt
  :super ros::object
  :slots (_pan _tilt _rel ))

(defmethod sensors::PanTilt
  (:init
   (&key
    ((:pan __pan) 0.0)
    ((:tilt __tilt) 0.0)
    ((:rel __rel) nil)
    )
   (send-super :init)
   (setq _pan (float __pan))
   (setq _tilt (float __tilt))
   (setq _rel __rel)
   self)
  (:pan
   (&optional __pan)
   (if __pan (setq _pan __pan)) _pan)
  (:tilt
   (&optional __tilt)
   (if __tilt (setq _tilt __tilt)) _tilt)
  (:rel
   (&optional (__rel :null))
   (if (not (eq __rel :null)) (setq _rel __rel)) _rel)
  (:serialization-length
   ()
   (+
    ;; float32 _pan
    4
    ;; float32 _tilt
    4
    ;; bool _rel
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pan
       (sys::poke _pan (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tilt
       (sys::poke _tilt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _rel
       (if _rel (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pan
     (setq _pan (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tilt
     (setq _tilt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _rel
     (setq _rel (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sensors::PanTilt :md5sum-) "c8ce171acfa745a5b6ceb9bc3cf0e1d0")
(setf (get sensors::PanTilt :datatype-) "sensors/PanTilt")
(setf (get sensors::PanTilt :definition-)
      "float32 pan
float32 tilt
bool rel

")



(provide :sensors/PanTilt "c8ce171acfa745a5b6ceb9bc3cf0e1d0")


