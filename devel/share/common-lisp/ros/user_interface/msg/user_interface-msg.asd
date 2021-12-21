
(cl:in-package :asdf)

(defsystem "user_interface-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "order" :depends-on ("_package_order"))
    (:file "_package_order" :depends-on ("_package"))
  ))