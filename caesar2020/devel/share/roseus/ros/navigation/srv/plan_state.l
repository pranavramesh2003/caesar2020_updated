;; Auto-generated. Do not edit!


(when (boundp 'navigation::plan_state)
  (if (not (find-package "NAVIGATION"))
    (make-package "NAVIGATION"))
  (shadow 'plan_state (find-package "NAVIGATION")))
(unless (find-package "NAVIGATION::PLAN_STATE")
  (make-package "NAVIGATION::PLAN_STATE"))
(unless (find-package "NAVIGATION::PLAN_STATEREQUEST")
  (make-package "NAVIGATION::PLAN_STATEREQUEST"))
(unless (find-package "NAVIGATION::PLAN_STATERESPONSE")
  (make-package "NAVIGATION::PLAN_STATERESPONSE"))

(in-package "ROS")





(defclass navigation::plan_stateRequest
  :super ros::object
  :slots (_pause _contin _rst ))

(defmethod navigation::plan_stateRequest
  (:init
   (&key
    ((:pause __pause) 0)
    ((:contin __contin) 0)
    ((:rst __rst) 0)
    )
   (send-super :init)
   (setq _pause (round __pause))
   (setq _contin (round __contin))
   (setq _rst (round __rst))
   self)
  (:pause
   (&optional __pause)
   (if __pause (setq _pause __pause)) _pause)
  (:contin
   (&optional __contin)
   (if __contin (setq _contin __contin)) _contin)
  (:rst
   (&optional __rst)
   (if __rst (setq _rst __rst)) _rst)
  (:serialization-length
   ()
   (+
    ;; int8 _pause
    1
    ;; int8 _contin
    1
    ;; int8 _rst
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _pause
       (write-byte _pause s)
     ;; int8 _contin
       (write-byte _contin s)
     ;; int8 _rst
       (write-byte _rst s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _pause
     (setq _pause (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _pause 127) (setq _pause (- _pause 256)))
   ;; int8 _contin
     (setq _contin (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _contin 127) (setq _contin (- _contin 256)))
   ;; int8 _rst
     (setq _rst (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _rst 127) (setq _rst (- _rst 256)))
   ;;
   self)
  )

(defclass navigation::plan_stateResponse
  :super ros::object
  :slots (_state ))

(defmethod navigation::plan_stateResponse
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

(defclass navigation::plan_state
  :super ros::object
  :slots ())

(setf (get navigation::plan_state :md5sum-) "b77f4b0588be197cccf2ef4c09a3fa03")
(setf (get navigation::plan_state :datatype-) "navigation/plan_state")
(setf (get navigation::plan_state :request) navigation::plan_stateRequest)
(setf (get navigation::plan_state :response) navigation::plan_stateResponse)

(defmethod navigation::plan_stateRequest
  (:response () (instance navigation::plan_stateResponse :init)))

(setf (get navigation::plan_stateRequest :md5sum-) "b77f4b0588be197cccf2ef4c09a3fa03")
(setf (get navigation::plan_stateRequest :datatype-) "navigation/plan_stateRequest")
(setf (get navigation::plan_stateRequest :definition-)
      "int8 pause
int8 contin
int8 rst
---
string state

")

(setf (get navigation::plan_stateResponse :md5sum-) "b77f4b0588be197cccf2ef4c09a3fa03")
(setf (get navigation::plan_stateResponse :datatype-) "navigation/plan_stateResponse")
(setf (get navigation::plan_stateResponse :definition-)
      "int8 pause
int8 contin
int8 rst
---
string state

")



(provide :navigation/plan_state "b77f4b0588be197cccf2ef4c09a3fa03")


