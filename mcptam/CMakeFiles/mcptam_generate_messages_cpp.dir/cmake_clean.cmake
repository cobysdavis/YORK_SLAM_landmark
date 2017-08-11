FILE(REMOVE_RECURSE
  "CMakeFiles/mcptam_generate_messages_cpp"
  "devel/include/mcptam/MapInfo.h"
  "devel/include/mcptam/NetworkMapPoint.h"
  "devel/include/mcptam/NetworkMeasurement.h"
  "devel/include/mcptam/Triple.h"
  "devel/include/mcptam/NetworkOutlier.h"
  "devel/include/mcptam/NetworkKeyFrame.h"
  "devel/include/mcptam/TrackerTiming.h"
  "devel/include/mcptam/TrackerState.h"
  "devel/include/mcptam/NetworkMultiKeyFrame.h"
  "devel/include/mcptam/intPointCloud.h"
  "devel/include/mcptam/SystemInfo.h"
  "devel/include/mcptam/MapMakerTiming.h"
  "devel/include/mcptam/ModifyMap.h"
  "devel/include/mcptam/Reset.h"
  "devel/include/mcptam/SetDepth.h"
  "devel/include/mcptam/FilterPC.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/mcptam_generate_messages_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
