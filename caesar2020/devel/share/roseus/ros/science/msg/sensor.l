;; Auto-generated. Do not edit!


(when (boundp 'science::sensor)
  (if (not (find-package "SCIENCE"))
    (make-package "SCIENCE"))
  (shadow 'sensor (find-package "SCIENCE")))
(unless (find-package "SCIENCE::SENSOR")
  (make-package "SCIENCE::SENSOR"))

(in-package "ROS")
;;//! \htmlinclude sensor.msg.html


(defclass science::sensor
  :super ros::object
  :slots (_tsl_full _lps_temp _lps_pressure _sht_humidity _sht_temp ))

(defmethod science::sensor
  (:init
   (&key
    ((:tsl_full __tsl_full) 0.0)
    ((:lps_temp __lps_temp) 0.0)
    ((:lps_pressure __lps_pressure) 0.0)
    ((:sht_humidity __sht_humidity) 0.0)
    ((:sht_temp __sht_temp) 0.0)
    )
   (send-super :init)
   (setq _tsl_full (float __tsl_full))
   (setq _lps_temp (float __lps_temp))
   (setq _lps_pressure (float __lps_pressure))
   (setq _sht_humidity (float __sht_humidity))
   (setq _sht_temp (float __sht_temp))
   self)
  (:tsl_full
   (&optional __tsl_full)
   (if __tsl_full (setq _tsl_full __tsl_full)) _tsl_full)
  (:lps_temp
   (&optional __lps_temp)
   (if __lps_temp (setq _lps_temp __lps_temp)) _lps_temp)
  (:lps_pressure
   (&optional __lps_pressure)
   (if __lps_pressure (setq _lps_pressure __lps_pressure)) _lps_pressure)
  (:sht_humidity
   (&optional __sht_humidity)
   (if __sht_humidity (setq _sht_humidity __sht_humidity)) _sht_humidity)
  (:sht_temp
   (&optional __sht_temp)
   (if __sht_temp (setq _sht_temp __sht_temp)) _sht_temp)
  (:serialization-length
   ()
   (+
    ;; float32 _tsl_full
    4
    ;; float32 _lps_temp
    4
    ;; float32 _lps_pressure
    4
    ;; float32 _sht_humidity
    4
    ;; float32 _sht_temp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _tsl_full
       (sys::poke _tsl_full (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lps_temp
       (sys::poke _lps_temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lps_pressure
       (sys::poke _lps_pressure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sht_humidity
       (sys::poke _sht_humidity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sht_temp
       (sys::poke _sht_temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _tsl_full
     (setq _tsl_full (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lps_temp
     (setq _lps_temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lps_pressure
     (setq _lps_pressure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sht_humidity
     (setq _sht_humidity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sht_temp
     (setq _sht_temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get science::sensor :md5sum-) "f03c616c12fbcd715e685d60bb04a3dc")
(setf (get science::sensor :datatype-) "science/sensor")
(setf (get science::sensor :definition-)
      "float32 tsl_full
float32 lps_temp
float32 lps_pressure
float32 sht_humidity
float32 sht_temp

")



(provide :science/sensor "f03c616c12fbcd715e685d60bb04a3dc")


