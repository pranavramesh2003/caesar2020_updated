;; Auto-generated. Do not edit!


(when (boundp 'navigation::Planner_state)
  (if (not (find-package "NAVIGATION"))
    (make-package "NAVIGATION"))
  (shadow 'Planner_state (find-package "NAVIGATION")))
(unless (find-package "NAVIGATION::PLANNER_STATE")
  (make-package "NAVIGATION::PLANNER_STATE"))

(in-package "ROS")
;;//! \htmlinclude Planner_state.msg.html


(defclass navigation::Planner_state
  :super ros::object
  :slots (_status ))

(defmethod navigation::Planner_state
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int16 _status
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _status
       (write-word _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _status
     (setq _status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get navigation::Planner_state :md5sum-) "46fcc1fee3807f5925730339e5177777")
(setf (get navigation::Planner_state :datatype-) "navigation/Planner_state")
(setf (get navigation::Planner_state :definition-)
      "int16 status

")



(provide :navigation/Planner_state "46fcc1fee3807f5925730339e5177777")


