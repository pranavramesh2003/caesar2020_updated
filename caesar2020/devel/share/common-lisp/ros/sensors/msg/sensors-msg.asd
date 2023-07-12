
(cl:in-package :asdf)

(defsystem "sensors-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Imu" :depends-on ("_package_Imu"))
    (:file "_package_Imu" :depends-on ("_package"))
    (:file "Joy" :depends-on ("_package_Joy"))
    (:file "_package_Joy" :depends-on ("_package"))
    (:file "LaserScan" :depends-on ("_package_LaserScan"))
    (:file "_package_LaserScan" :depends-on ("_package"))
    (:file "NavSatFix" :depends-on ("_package_NavSatFix"))
    (:file "_package_NavSatFix" :depends-on ("_package"))
    (:file "PanTilt" :depends-on ("_package_PanTilt"))
    (:file "_package_PanTilt" :depends-on ("_package"))
  ))