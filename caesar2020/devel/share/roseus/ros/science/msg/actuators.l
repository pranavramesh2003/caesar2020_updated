;; Auto-generated. Do not edit!


(when (boundp 'science::actuators)
  (if (not (find-package "SCIENCE"))
    (make-package "SCIENCE"))
  (shadow 'actuators (find-package "SCIENCE")))
(unless (find-package "SCIENCE::ACTUATORS")
  (make-package "SCIENCE::ACTUATORS"))

(in-package "ROS")
;;//! \htmlinclude actuators.msg.html


(defclass science::actuators
  :super ros::object
  :slots (_stepper _linac _micro _rhino _lid _sht ))

(defmethod science::actuators
  (:init
   (&key
    ((:stepper __stepper) 0)
    ((:linac __linac) 0)
    ((:micro __micro) 0)
    ((:rhino __rhino) 0)
    ((:lid __lid) 0)
    ((:sht __sht) 0)
    )
   (send-super :init)
   (setq _stepper (round __stepper))
   (setq _linac (round __linac))
   (setq _micro (round __micro))
   (setq _rhino (round __rhino))
   (setq _lid (round __lid))
   (setq _sht (round __sht))
   self)
  (:stepper
   (&optional __stepper)
   (if __stepper (setq _stepper __stepper)) _stepper)
  (:linac
   (&optional __linac)
   (if __linac (setq _linac __linac)) _linac)
  (:micro
   (&optional __micro)
   (if __micro (setq _micro __micro)) _micro)
  (:rhino
   (&optional __rhino)
   (if __rhino (setq _rhino __rhino)) _rhino)
  (:lid
   (&optional __lid)
   (if __lid (setq _lid __lid)) _lid)
  (:sht
   (&optional __sht)
   (if __sht (setq _sht __sht)) _sht)
  (:serialization-length
   ()
   (+
    ;; int16 _stepper
    2
    ;; int16 _linac
    2
    ;; int16 _micro
    2
    ;; int16 _rhino
    2
    ;; int16 _lid
    2
    ;; int16 _sht
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _stepper
       (write-word _stepper s)
     ;; int16 _linac
       (write-word _linac s)
     ;; int16 _micro
       (write-word _micro s)
     ;; int16 _rhino
       (write-word _rhino s)
     ;; int16 _lid
       (write-word _lid s)
     ;; int16 _sht
       (write-word _sht s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _stepper
     (setq _stepper (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _linac
     (setq _linac (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _micro
     (setq _micro (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _rhino
     (setq _rhino (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _lid
     (setq _lid (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _sht
     (setq _sht (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get science::actuators :md5sum-) "25eb6d63d183ea00408e6fe0331e103a")
(setf (get science::actuators :datatype-) "science/actuators")
(setf (get science::actuators :definition-)
      "int16 stepper
int16 linac
int16 micro
int16 rhino
int16 lid
int16 sht

")



(provide :science/actuators "25eb6d63d183ea00408e6fe0331e103a")


