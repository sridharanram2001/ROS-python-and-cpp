
(cl:in-package :asdf)

(defsystem "My_programs_package-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "addTwoInt" :depends-on ("_package_addTwoInt"))
    (:file "_package_addTwoInt" :depends-on ("_package"))
  ))