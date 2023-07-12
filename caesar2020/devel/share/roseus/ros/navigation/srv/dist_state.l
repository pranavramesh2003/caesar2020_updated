;; Auto-generated. Do not edit!


(when (boundp 'navigation::dist_state)
  (if (not (find-package "NAVIGATION"))
    (make-package "NAVIGATION"))
  (shadow 'dist_state (find-package "NAVIGATION")))
(unless (find-package "NAVIGATION::DIST_STATE")
  (make-package "NAVIGATION::DIST_STATE"))
(unless (find-package "NAVIGATION::DIST_STATEREQUEST")
  (make-package "NAVIGATION::DIST_STATEREQUEST"))
(unless (find-package "NAVIGATION::DIST_STATERESPONSE")
  (make-package "NAVIGATION::DIST_STATERESPONSE"))

(in-package "ROS")





(defclass navigation::dist_stateRequest
  :super ros::object
  :slots ())

(defmethod navigation::dist_stateRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass navigation::dist_stateResponse
  :super ros::object
  :slots (_state ))

(defmethod navigation::dist_stateResponse
  (:init
   (&key
    ((:state __state) "")
    )
   (send-super :init)
   (setq _state (string __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass navigation::dist_state
  :super ros::object
  :slots ())

(setf (get navigation::dist_state :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get navigation::dist_state :datatype-) "navigation/dist_state")
(setf (get navigation::dist_state :request) navigation::dist_stateRequest)
(setf (get navigation::dist_state :response) navigation::dist_stateResponse)

(defmethod navigation::dist_stateRequest
  (:response () (instance navigation::dist_stateResponse :init)))

(setf (get navigation::dist_stateRequest :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get navigation::dist_stateRequest :datatype-) "navigation/dist_stateRequest")
(setf (get navigation::dist_stateRequest :definition-)
      "---
string state
")

(setf (get navigation::dist_stateResponse :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get navigation::dist_stateResponse :datatype-) "navigation/dist_stateResponse")
(setf (get navigation::dist_stateResponse :definition-)
      "---
string state
")



(provide :navigation/dist_state "af6d3a99f0fbeb66d3248fa4b3e675fb")


