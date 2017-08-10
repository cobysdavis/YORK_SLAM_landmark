# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mcptam: 12 messages, 4 services")

set(MSG_I_FLAGS "-Imcptam:/home/vgrlab/catkin_ws/src/mcptam/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mcptam_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/MapInfo.msg" NAME_WE)
add_custom_target(_mcptam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mcptam" "/home/vgrlab/catkin_ws/src/mcptam/msg/MapInfo.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMapPoint.msg" NAME_WE)
add_custom_target(_mcptam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mcptam" "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMapPoint.msg" ""
)

get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMeasurement.msg" NAME_WE)
add_custom_target(_mcptam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mcptam" "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMeasurement.msg" ""
)

get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/Triple.msg" NAME_WE)
add_custom_target(_mcptam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mcptam" "/home/vgrlab/catkin_ws/src/mcptam/msg/Triple.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/srv/ModifyMap.srv" NAME_WE)
add_custom_target(_mcptam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mcptam" "/home/vgrlab/catkin_ws/src/mcptam/srv/ModifyMap.srv" "mcptam/NetworkMapPoint:mcptam/NetworkOutlier:mcptam/NetworkKeyFrame:mcptam/NetworkMeasurement:std_msgs/Header:sensor_msgs/Image:mcptam/NetworkMultiKeyFrame"
)

get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkOutlier.msg" NAME_WE)
add_custom_target(_mcptam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mcptam" "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkOutlier.msg" ""
)

get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkKeyFrame.msg" NAME_WE)
add_custom_target(_mcptam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mcptam" "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkKeyFrame.msg" "mcptam/NetworkMeasurement:std_msgs/Header:sensor_msgs/Image"
)

get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/TrackerTiming.msg" NAME_WE)
add_custom_target(_mcptam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mcptam" "/home/vgrlab/catkin_ws/src/mcptam/msg/TrackerTiming.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/TrackerState.msg" NAME_WE)
add_custom_target(_mcptam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mcptam" "/home/vgrlab/catkin_ws/src/mcptam/msg/TrackerState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMultiKeyFrame.msg" NAME_WE)
add_custom_target(_mcptam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mcptam" "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMultiKeyFrame.msg" "mcptam/NetworkMeasurement:std_msgs/Header:mcptam/NetworkKeyFrame:sensor_msgs/Image"
)

get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/intPointCloud.msg" NAME_WE)
add_custom_target(_mcptam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mcptam" "/home/vgrlab/catkin_ws/src/mcptam/msg/intPointCloud.msg" ""
)

get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/srv/SetDepth.srv" NAME_WE)
add_custom_target(_mcptam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mcptam" "/home/vgrlab/catkin_ws/src/mcptam/srv/SetDepth.srv" "std_msgs/Float32"
)

get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/SystemInfo.msg" NAME_WE)
add_custom_target(_mcptam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mcptam" "/home/vgrlab/catkin_ws/src/mcptam/msg/SystemInfo.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/srv/Reset.srv" NAME_WE)
add_custom_target(_mcptam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mcptam" "/home/vgrlab/catkin_ws/src/mcptam/srv/Reset.srv" ""
)

get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/MapMakerTiming.msg" NAME_WE)
add_custom_target(_mcptam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mcptam" "/home/vgrlab/catkin_ws/src/mcptam/msg/MapMakerTiming.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/srv/FilterPC.srv" NAME_WE)
add_custom_target(_mcptam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mcptam" "/home/vgrlab/catkin_ws/src/mcptam/srv/FilterPC.srv" "geometry_msgs/Vector3"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/MapInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcptam
)
_generate_msg_cpp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMapPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcptam
)
_generate_msg_cpp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMeasurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcptam
)
_generate_msg_cpp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/Triple.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcptam
)
_generate_msg_cpp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkOutlier.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcptam
)
_generate_msg_cpp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkKeyFrame.msg"
  "${MSG_I_FLAGS}"
  "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMeasurement.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcptam
)
_generate_msg_cpp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/TrackerTiming.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcptam
)
_generate_msg_cpp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/TrackerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcptam
)
_generate_msg_cpp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMultiKeyFrame.msg"
  "${MSG_I_FLAGS}"
  "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMeasurement.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkKeyFrame.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcptam
)
_generate_msg_cpp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/intPointCloud.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcptam
)
_generate_msg_cpp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/SystemInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcptam
)
_generate_msg_cpp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/MapMakerTiming.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcptam
)

### Generating Services
_generate_srv_cpp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/srv/ModifyMap.srv"
  "${MSG_I_FLAGS}"
  "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMapPoint.msg;/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkOutlier.msg;/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkKeyFrame.msg;/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMeasurement.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg;/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMultiKeyFrame.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcptam
)
_generate_srv_cpp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/srv/Reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcptam
)
_generate_srv_cpp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/srv/SetDepth.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcptam
)
_generate_srv_cpp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/srv/FilterPC.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcptam
)

### Generating Module File
_generate_module_cpp(mcptam
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcptam
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mcptam_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mcptam_generate_messages mcptam_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/MapInfo.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_cpp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMapPoint.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_cpp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMeasurement.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_cpp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/Triple.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_cpp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/srv/ModifyMap.srv" NAME_WE)
add_dependencies(mcptam_generate_messages_cpp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkOutlier.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_cpp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkKeyFrame.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_cpp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/TrackerTiming.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_cpp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/TrackerState.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_cpp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMultiKeyFrame.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_cpp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/intPointCloud.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_cpp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/srv/SetDepth.srv" NAME_WE)
add_dependencies(mcptam_generate_messages_cpp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/SystemInfo.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_cpp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/srv/Reset.srv" NAME_WE)
add_dependencies(mcptam_generate_messages_cpp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/MapMakerTiming.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_cpp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/srv/FilterPC.srv" NAME_WE)
add_dependencies(mcptam_generate_messages_cpp _mcptam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mcptam_gencpp)
add_dependencies(mcptam_gencpp mcptam_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mcptam_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/MapInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcptam
)
_generate_msg_lisp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMapPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcptam
)
_generate_msg_lisp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMeasurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcptam
)
_generate_msg_lisp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/Triple.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcptam
)
_generate_msg_lisp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkOutlier.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcptam
)
_generate_msg_lisp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkKeyFrame.msg"
  "${MSG_I_FLAGS}"
  "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMeasurement.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcptam
)
_generate_msg_lisp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/TrackerTiming.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcptam
)
_generate_msg_lisp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/TrackerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcptam
)
_generate_msg_lisp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMultiKeyFrame.msg"
  "${MSG_I_FLAGS}"
  "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMeasurement.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkKeyFrame.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcptam
)
_generate_msg_lisp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/intPointCloud.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcptam
)
_generate_msg_lisp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/SystemInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcptam
)
_generate_msg_lisp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/MapMakerTiming.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcptam
)

### Generating Services
_generate_srv_lisp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/srv/ModifyMap.srv"
  "${MSG_I_FLAGS}"
  "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMapPoint.msg;/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkOutlier.msg;/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkKeyFrame.msg;/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMeasurement.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg;/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMultiKeyFrame.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcptam
)
_generate_srv_lisp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/srv/Reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcptam
)
_generate_srv_lisp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/srv/SetDepth.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcptam
)
_generate_srv_lisp(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/srv/FilterPC.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcptam
)

### Generating Module File
_generate_module_lisp(mcptam
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcptam
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mcptam_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mcptam_generate_messages mcptam_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/MapInfo.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_lisp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMapPoint.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_lisp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMeasurement.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_lisp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/Triple.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_lisp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/srv/ModifyMap.srv" NAME_WE)
add_dependencies(mcptam_generate_messages_lisp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkOutlier.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_lisp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkKeyFrame.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_lisp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/TrackerTiming.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_lisp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/TrackerState.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_lisp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMultiKeyFrame.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_lisp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/intPointCloud.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_lisp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/srv/SetDepth.srv" NAME_WE)
add_dependencies(mcptam_generate_messages_lisp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/SystemInfo.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_lisp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/srv/Reset.srv" NAME_WE)
add_dependencies(mcptam_generate_messages_lisp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/MapMakerTiming.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_lisp _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/srv/FilterPC.srv" NAME_WE)
add_dependencies(mcptam_generate_messages_lisp _mcptam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mcptam_genlisp)
add_dependencies(mcptam_genlisp mcptam_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mcptam_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/MapInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcptam
)
_generate_msg_py(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMapPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcptam
)
_generate_msg_py(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMeasurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcptam
)
_generate_msg_py(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/Triple.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcptam
)
_generate_msg_py(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkOutlier.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcptam
)
_generate_msg_py(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkKeyFrame.msg"
  "${MSG_I_FLAGS}"
  "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMeasurement.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcptam
)
_generate_msg_py(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/TrackerTiming.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcptam
)
_generate_msg_py(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/TrackerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcptam
)
_generate_msg_py(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMultiKeyFrame.msg"
  "${MSG_I_FLAGS}"
  "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMeasurement.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkKeyFrame.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcptam
)
_generate_msg_py(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/intPointCloud.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcptam
)
_generate_msg_py(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/SystemInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcptam
)
_generate_msg_py(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/msg/MapMakerTiming.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcptam
)

### Generating Services
_generate_srv_py(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/srv/ModifyMap.srv"
  "${MSG_I_FLAGS}"
  "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMapPoint.msg;/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkOutlier.msg;/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkKeyFrame.msg;/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMeasurement.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg;/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMultiKeyFrame.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcptam
)
_generate_srv_py(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/srv/Reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcptam
)
_generate_srv_py(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/srv/SetDepth.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcptam
)
_generate_srv_py(mcptam
  "/home/vgrlab/catkin_ws/src/mcptam/srv/FilterPC.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcptam
)

### Generating Module File
_generate_module_py(mcptam
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcptam
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mcptam_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mcptam_generate_messages mcptam_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/MapInfo.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_py _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMapPoint.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_py _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMeasurement.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_py _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/Triple.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_py _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/srv/ModifyMap.srv" NAME_WE)
add_dependencies(mcptam_generate_messages_py _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkOutlier.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_py _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkKeyFrame.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_py _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/TrackerTiming.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_py _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/TrackerState.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_py _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/NetworkMultiKeyFrame.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_py _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/intPointCloud.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_py _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/srv/SetDepth.srv" NAME_WE)
add_dependencies(mcptam_generate_messages_py _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/SystemInfo.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_py _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/srv/Reset.srv" NAME_WE)
add_dependencies(mcptam_generate_messages_py _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/msg/MapMakerTiming.msg" NAME_WE)
add_dependencies(mcptam_generate_messages_py _mcptam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vgrlab/catkin_ws/src/mcptam/srv/FilterPC.srv" NAME_WE)
add_dependencies(mcptam_generate_messages_py _mcptam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mcptam_genpy)
add_dependencies(mcptam_genpy mcptam_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mcptam_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcptam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcptam
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mcptam_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(mcptam_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcptam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcptam
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mcptam_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(mcptam_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcptam)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcptam\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcptam
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mcptam_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(mcptam_generate_messages_py sensor_msgs_generate_messages_py)
endif()
