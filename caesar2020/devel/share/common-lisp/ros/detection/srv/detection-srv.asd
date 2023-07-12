
(cl:in-package :asdf)

(defsystem "detection-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "arrow" :depends-on ("_package_arrow"))
    (:file "_package_arrow" :depends-on ("_package"))
    (:file "reached" :depends-on ("_package_reached"))
    (:file "_package_reached" :depends-on ("_package"))
  ))