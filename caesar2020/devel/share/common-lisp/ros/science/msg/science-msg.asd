
(cl:in-package :asdf)

(defsystem "science-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "actuators" :depends-on ("_package_actuators"))
    (:file "_package_actuators" :depends-on ("_package"))
    (:file "sensor" :depends-on ("_package_sensor"))
    (:file "_package_sensor" :depends-on ("_package"))
  ))