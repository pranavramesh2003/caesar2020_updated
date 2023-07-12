;; Auto-generated. Do not edit!


(when (boundp 'detection::arrow)
  (if (not (find-package "DETECTION"))
    (make-package "DETECTION"))
  (shadow 'arrow (find-package "DETECTION")))
(unless (find-package "DETECTION::ARROW")
  (make-package "DETECTION::ARROW"))
(unless (find-package "DETECTION::ARROWREQUEST")
  (make-package "DETECTION::ARROWREQUEST"))
(unless (find-package "DETECTION::ARROWRESPONSE")
  (make-package "DETECTION::ARROWRESPONSE"))

(in-package "ROS")





(defclass detection::arrowRequest
  :super ros::object
  :slots ())

(defmethod detection::arrowRequest
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

(defclass detection::arrowResponse
  :super ros::object
  :slots (_result ))

(defmethod detection::arrowResponse
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

(defclass detection::arrow
  :super ros::object
  :slots ())

(setf (get detection::arrow :md5sum-) "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(setf (get detection::arrow :datatype-) "detection/arrow")
(setf (get detection::arrow :request) detection::arrowRequest)
(setf (get detection::arrow :response) detection::arrowResponse)

(defmethod detection::arrowRequest
  (:response () (instance detection::arrowResponse :init)))

(setf (get detection::arrowRequest :md5sum-) "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(setf (get detection::arrowRequest :datatype-) "detection/arrowRequest")
(setf (get detection::arrowRequest :definition-)
      "---
string result

")

(setf (get detection::arrowResponse :md5sum-) "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(setf (get detection::arrowResponse :datatype-) "detection/arrowResponse")
(setf (get detection::arrowResponse :definition-)
      "---
string result

")



(provide :detection/arrow "c22f2a1ed8654a0b365f1bb3f7ff2c0f")


