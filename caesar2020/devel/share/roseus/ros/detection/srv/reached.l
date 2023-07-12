;; Auto-generated. Do not edit!


(when (boundp 'detection::reached)
  (if (not (find-package "DETECTION"))
    (make-package "DETECTION"))
  (shadow 'reached (find-package "DETECTION")))
(unless (find-package "DETECTION::REACHED")
  (make-package "DETECTION::REACHED"))
(unless (find-package "DETECTION::REACHEDREQUEST")
  (make-package "DETECTION::REACHEDREQUEST"))
(unless (find-package "DETECTION::REACHEDRESPONSE")
  (make-package "DETECTION::REACHEDRESPONSE"))

(in-package "ROS")





(defclass detection::reachedRequest
  :super ros::object
  :slots ())

(defmethod detection::reachedRequest
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

(defclass detection::reachedResponse
  :super ros::object
  :slots (_result ))

(defmethod detection::reachedResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass detection::reached
  :super ros::object
  :slots ())

(setf (get detection::reached :md5sum-) "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(setf (get detection::reached :datatype-) "detection/reached")
(setf (get detection::reached :request) detection::reachedRequest)
(setf (get detection::reached :response) detection::reachedResponse)

(defmethod detection::reachedRequest
  (:response () (instance detection::reachedResponse :init)))

(setf (get detection::reachedRequest :md5sum-) "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(setf (get detection::reachedRequest :datatype-) "detection/reachedRequest")
(setf (get detection::reachedRequest :definition-)
      "---
string result

")

(setf (get detection::reachedResponse :md5sum-) "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(setf (get detection::reachedResponse :datatype-) "detection/reachedResponse")
(setf (get detection::reachedResponse :definition-)
      "---
string result

")



(provide :detection/reached "c22f2a1ed8654a0b365f1bb3f7ff2c0f")


