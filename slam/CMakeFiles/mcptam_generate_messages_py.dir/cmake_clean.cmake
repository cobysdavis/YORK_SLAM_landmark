FILE(REMOVE_RECURSE
  "CMakeFiles/mcptam_generate_messages_py"
  "devel/lib/python2.7/dist-packages/mcptam/msg/_MapInfo.py"
  "devel/lib/python2.7/dist-packages/mcptam/msg/_NetworkMapPoint.py"
  "devel/lib/python2.7/dist-packages/mcptam/msg/_NetworkMeasurement.py"
  "devel/lib/python2.7/dist-packages/mcptam/msg/_Triple.py"
  "devel/lib/python2.7/dist-packages/mcptam/msg/_NetworkOutlier.py"
  "devel/lib/python2.7/dist-packages/mcptam/msg/_NetworkKeyFrame.py"
  "devel/lib/python2.7/dist-packages/mcptam/msg/_TrackerTiming.py"
  "devel/lib/python2.7/dist-packages/mcptam/msg/_TrackerState.py"
  "devel/lib/python2.7/dist-packages/mcptam/msg/_NetworkMultiKeyFrame.py"
  "devel/lib/python2.7/dist-packages/mcptam/msg/_intPointCloud.py"
  "devel/lib/python2.7/dist-packages/mcptam/msg/_SystemInfo.py"
  "devel/lib/python2.7/dist-packages/mcptam/msg/_MapMakerTiming.py"
  "devel/lib/python2.7/dist-packages/mcptam/srv/_ModifyMap.py"
  "devel/lib/python2.7/dist-packages/mcptam/srv/_Reset.py"
  "devel/lib/python2.7/dist-packages/mcptam/srv/_SetDepth.py"
  "devel/lib/python2.7/dist-packages/mcptam/srv/_FilterPC.py"
  "devel/lib/python2.7/dist-packages/mcptam/msg/__init__.py"
  "devel/lib/python2.7/dist-packages/mcptam/srv/__init__.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/mcptam_generate_messages_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
