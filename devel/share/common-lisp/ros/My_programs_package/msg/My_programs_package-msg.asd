
(cl:in-package :asdf)

(defsystem "My_programs_package-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "IOT_sensor" :depends-on ("_package_IOT_sensor"))
    (:file "_package_IOT_sensor" :depends-on ("_package"))
  ))