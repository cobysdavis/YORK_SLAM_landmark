
(cl:in-package :asdf)

(defsystem "mcptam-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SystemInfo" :depends-on ("_package_SystemInfo"))
    (:file "_package_SystemInfo" :depends-on ("_package"))
    (:file "NetworkOutlier" :depends-on ("_package_NetworkOutlier"))
    (:file "_package_NetworkOutlier" :depends-on ("_package"))
    (:file "NetworkKeyFrame" :depends-on ("_package_NetworkKeyFrame"))
    (:file "_package_NetworkKeyFrame" :depends-on ("_package"))
    (:file "Triple" :depends-on ("_package_Triple"))
    (:file "_package_Triple" :depends-on ("_package"))
    (:file "NetworkMapPoint" :depends-on ("_package_NetworkMapPoint"))
    (:file "_package_NetworkMapPoint" :depends-on ("_package"))
    (:file "intPointCloud" :depends-on ("_package_intPointCloud"))
    (:file "_package_intPointCloud" :depends-on ("_package"))
    (:file "MapMakerTiming" :depends-on ("_package_MapMakerTiming"))
    (:file "_package_MapMakerTiming" :depends-on ("_package"))
    (:file "NetworkMultiKeyFrame" :depends-on ("_package_NetworkMultiKeyFrame"))
    (:file "_package_NetworkMultiKeyFrame" :depends-on ("_package"))
    (:file "NetworkMeasurement" :depends-on ("_package_NetworkMeasurement"))
    (:file "_package_NetworkMeasurement" :depends-on ("_package"))
    (:file "MapInfo" :depends-on ("_package_MapInfo"))
    (:file "_package_MapInfo" :depends-on ("_package"))
    (:file "TrackerState" :depends-on ("_package_TrackerState"))
    (:file "_package_TrackerState" :depends-on ("_package"))
    (:file "TrackerTiming" :depends-on ("_package_TrackerTiming"))
    (:file "_package_TrackerTiming" :depends-on ("_package"))
  ))