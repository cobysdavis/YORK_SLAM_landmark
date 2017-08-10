
(cl:in-package :asdf)

(defsystem "mcptam-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :mcptam-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SetDepth" :depends-on ("_package_SetDepth"))
    (:file "_package_SetDepth" :depends-on ("_package"))
    (:file "FilterPC" :depends-on ("_package_FilterPC"))
    (:file "_package_FilterPC" :depends-on ("_package"))
    (:file "ModifyMap" :depends-on ("_package_ModifyMap"))
    (:file "_package_ModifyMap" :depends-on ("_package"))
    (:file "Reset" :depends-on ("_package_Reset"))
    (:file "_package_Reset" :depends-on ("_package"))
  ))