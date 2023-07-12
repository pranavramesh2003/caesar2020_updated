
(cl:in-package :asdf)

(defsystem "detection-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ObstacleMap" :depends-on ("_package_ObstacleMap"))
    (:file "_package_ObstacleMap" :depends-on ("_package"))
    (:file "Target" :depends-on ("_package_Target"))
    (:file "_package_Target" :depends-on ("_package"))
    (:file "ThetaR" :depends-on ("_package_ThetaR"))
    (:file "_package_ThetaR" :depends-on ("_package"))
    (:file "WheelRpm" :depends-on ("_package_WheelRpm"))
    (:file "_package_WheelRpm" :depends-on ("_package"))
    (:file "detection" :depends-on ("_package_detection"))
    (:file "_package_detection" :depends-on ("_package"))
  ))