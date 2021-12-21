
(cl:in-package :asdf)

(defsystem "coffeemachine-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Check_Qtty" :depends-on ("_package_Check_Qtty"))
    (:file "_package_Check_Qtty" :depends-on ("_package"))
  ))