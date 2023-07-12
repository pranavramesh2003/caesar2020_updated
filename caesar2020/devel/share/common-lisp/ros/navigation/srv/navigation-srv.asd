
(cl:in-package :asdf)

(defsystem "navigation-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "dist_state" :depends-on ("_package_dist_state"))
    (:file "_package_dist_state" :depends-on ("_package"))
    (:file "plan_state" :depends-on ("_package_plan_state"))
    (:file "_package_plan_state" :depends-on ("_package"))
  ))