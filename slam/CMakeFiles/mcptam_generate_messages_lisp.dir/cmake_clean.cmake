FILE(REMOVE_RECURSE
  "CMakeFiles/mcptam_generate_messages_lisp"
  "devel/share/common-lisp/ros/mcptam/msg/MapInfo.lisp"
  "devel/share/common-lisp/ros/mcptam/msg/NetworkMapPoint.lisp"
  "devel/share/common-lisp/ros/mcptam/msg/NetworkMeasurement.lisp"
  "devel/share/common-lisp/ros/mcptam/msg/Triple.lisp"
  "devel/share/common-lisp/ros/mcptam/msg/NetworkOutlier.lisp"
  "devel/share/common-lisp/ros/mcptam/msg/NetworkKeyFrame.lisp"
  "devel/share/common-lisp/ros/mcptam/msg/TrackerTiming.lisp"
  "devel/share/common-lisp/ros/mcptam/msg/TrackerState.lisp"
  "devel/share/common-lisp/ros/mcptam/msg/NetworkMultiKeyFrame.lisp"
  "devel/share/common-lisp/ros/mcptam/msg/intPointCloud.lisp"
  "devel/share/common-lisp/ros/mcptam/msg/SystemInfo.lisp"
  "devel/share/common-lisp/ros/mcptam/msg/MapMakerTiming.lisp"
  "devel/share/common-lisp/ros/mcptam/srv/ModifyMap.lisp"
  "devel/share/common-lisp/ros/mcptam/srv/Reset.lisp"
  "devel/share/common-lisp/ros/mcptam/srv/SetDepth.lisp"
  "devel/share/common-lisp/ros/mcptam/srv/FilterPC.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/mcptam_generate_messages_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
