;; Auto-generated. Do not edit!


(when (boundp 'detection::detection)
  (if (not (find-package "DETECTION"))
    (make-package "DETECTION"))
  (shadow 'detection (find-package "DETECTION")))
(unless (find-package "DETECTION::DETECTION")
  (make-package "DETECTION::DETECTION"))

(in-package "ROS")
;;//! \htmlinclude detection.msg.html


(defclass detection::detection
  :super ros::object
  :slots (_xmin _ymin _xmax _ymax _score _category ))

(defmethod detection::detection
  (:init
   (&key
    ((:xmin __xmin) 0)
    ((:ymin __ymin) 0)
    ((:xmax __xmax) 0)
    ((:ymax __ymax) 0)
    ((:score __score) 0.0)
    ((:category __category) 0)
    )
   (send-super :init)
   (setq _xmin (round __xmin))
   (setq _ymin (round __ymin))
   (setq _xmax (round __xmax))
   (setq _ymax (round __ymax))
   (setq _score (float __score))
   (setq _category (round __category))
   self)
  (:xmin
   (&optional __xmin)
   (if __xmin (setq _xmin __xmin)) _xmin)
  (:ymin
   (&optional __ymin)
   (if __ymin (setq _ymin __ymin)) _ymin)
  (:xmax
   (&optional __xmax)
   (if __xmax (setq _xmax __xmax)) _xmax)
  (:ymax
   (&optional __ymax)
   (if __ymax (setq _ymax __ymax)) _ymax)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:category
   (&optional __category)
   (if __category (setq _category __category)) _category)
  (:serialization-length
   ()
   (+
    ;; uint16 _xmin
    2
    ;; uint16 _ymin
    2
    ;; uint16 _xmax
    2
    ;; uint16 _ymax
    2
    ;; float32 _score
    4
    ;; uint8 _category
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _xmin
       (write-word _xmin s)
     ;; uint16 _ymin
       (write-word _ymin s)
     ;; uint16 _xmax
       (write-word _xmax s)
     ;; uint16 _ymax
       (write-word _ymax s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _category
       (write-byte _category s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _xmin
     (setq _xmin (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ymin
     (setq _ymin (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _xmax
     (setq _xmax (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ymax
     (setq _ymax (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _category
     (setq _category (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get detection::detection :md5sum-) "749131da678d2cc04e6f077d4ec426e4")
(setf (get detection::detection :datatype-) "detection/detection")
(setf (get detection::detection :definition-)
      "uint16 xmin
uint16 ymin
uint16 xmax
uint16 ymax
float32 score
uint8 category #1:left 2:right 3:Ball


")



(provide :detection/detection "749131da678d2cc04e6f077d4ec426e4")


