# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vgrlab/catkin_ws/src/mcptam

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vgrlab/catkin_ws/src/mcptam

# Include any dependencies generated for this target.
include CMakeFiles/mcptam_server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mcptam_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mcptam_server.dir/flags.make

CMakeFiles/mcptam_server.dir/src/MainServer.cpp.o: CMakeFiles/mcptam_server.dir/flags.make
CMakeFiles/mcptam_server.dir/src/MainServer.cpp.o: src/MainServer.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/vgrlab/catkin_ws/src/mcptam/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/mcptam_server.dir/src/MainServer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mcptam_server.dir/src/MainServer.cpp.o -c /home/vgrlab/catkin_ws/src/mcptam/src/MainServer.cpp

CMakeFiles/mcptam_server.dir/src/MainServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mcptam_server.dir/src/MainServer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/vgrlab/catkin_ws/src/mcptam/src/MainServer.cpp > CMakeFiles/mcptam_server.dir/src/MainServer.cpp.i

CMakeFiles/mcptam_server.dir/src/MainServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mcptam_server.dir/src/MainServer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/vgrlab/catkin_ws/src/mcptam/src/MainServer.cpp -o CMakeFiles/mcptam_server.dir/src/MainServer.cpp.s

CMakeFiles/mcptam_server.dir/src/MainServer.cpp.o.requires:
.PHONY : CMakeFiles/mcptam_server.dir/src/MainServer.cpp.o.requires

CMakeFiles/mcptam_server.dir/src/MainServer.cpp.o.provides: CMakeFiles/mcptam_server.dir/src/MainServer.cpp.o.requires
	$(MAKE) -f CMakeFiles/mcptam_server.dir/build.make CMakeFiles/mcptam_server.dir/src/MainServer.cpp.o.provides.build
.PHONY : CMakeFiles/mcptam_server.dir/src/MainServer.cpp.o.provides

CMakeFiles/mcptam_server.dir/src/MainServer.cpp.o.provides.build: CMakeFiles/mcptam_server.dir/src/MainServer.cpp.o

# Object files for target mcptam_server
mcptam_server_OBJECTS = \
"CMakeFiles/mcptam_server.dir/src/MainServer.cpp.o"

# External object files for target mcptam_server
mcptam_server_EXTERNAL_OBJECTS =

devel/lib/mcptam/mcptam_server: CMakeFiles/mcptam_server.dir/src/MainServer.cpp.o
devel/lib/mcptam/mcptam_server: CMakeFiles/mcptam_server.dir/build.make
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libimage_transport.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libcv_bridge.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libpcl_ros_filters.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libpcl_ros_io.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libpcl_ros_tf.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_common.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_octree.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_io.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_kdtree.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_search.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_sample_consensus.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_filters.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_features.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_keypoints.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_segmentation.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_visualization.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_outofcore.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_registration.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_recognition.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_surface.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_people.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_tracking.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_apps.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libqhull.so
devel/lib/mcptam/mcptam_server: /usr/lib/libOpenNI.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
devel/lib/mcptam/mcptam_server: /usr/lib/libvtkCommon.so.5.8.0
devel/lib/mcptam/mcptam_server: /usr/lib/libvtkRendering.so.5.8.0
devel/lib/mcptam/mcptam_server: /usr/lib/libvtkHybrid.so.5.8.0
devel/lib/mcptam/mcptam_server: /usr/lib/libvtkCharts.so.5.8.0
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libdynamic_reconfigure_config_init_mutex.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libnodeletlib.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libbondcpp.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libuuid.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libclass_loader.so
devel/lib/mcptam/mcptam_server: /usr/lib/libPocoFoundation.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libdl.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libroslib.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/librospack.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libpython2.7.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libtinyxml.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/librosbag.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/librosbag_storage.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libroslz4.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/liblz4.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libtopic_tools.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libtf.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libtf2_ros.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libactionlib.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libmessage_filters.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libroscpp.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libboost_signals.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libxmlrpcpp.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libtf2.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libroscpp_serialization.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/librosconsole.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/librosconsole_log4cxx.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/librosconsole_backend_interface.so
devel/lib/mcptam/mcptam_server: /usr/lib/liblog4cxx.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libboost_regex.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/librostime.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libcpp_common.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libboost_system.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libboost_thread.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libpthread.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libboost_system.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libboost_thread.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libpthread.so
devel/lib/mcptam/mcptam_server: /usr/local/lib/libcvd.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libGL.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/local/lib/libGVars3.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libg2o_stuff.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libg2o_core.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libg2o_solver_cholmod.so
devel/lib/mcptam/mcptam_server: /usr/lib/liblapack.so
devel/lib/mcptam/mcptam_server: /usr/lib/libblas.so
devel/lib/mcptam/mcptam_server: /usr/lib/libblas.so
devel/lib/mcptam/mcptam_server: devel/lib/libmcptam_functions.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libimage_transport.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libcv_bridge.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libpcl_ros_filters.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libpcl_ros_io.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libpcl_ros_tf.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_common.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_octree.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_io.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_kdtree.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_search.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_sample_consensus.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_filters.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_features.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_keypoints.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_segmentation.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_visualization.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_outofcore.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_registration.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_recognition.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_surface.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_people.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_tracking.so
devel/lib/mcptam/mcptam_server: /usr/lib/libpcl_apps.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libqhull.so
devel/lib/mcptam/mcptam_server: /usr/lib/libOpenNI.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
devel/lib/mcptam/mcptam_server: /usr/lib/libvtkCommon.so.5.8.0
devel/lib/mcptam/mcptam_server: /usr/lib/libvtkRendering.so.5.8.0
devel/lib/mcptam/mcptam_server: /usr/lib/libvtkHybrid.so.5.8.0
devel/lib/mcptam/mcptam_server: /usr/lib/libvtkCharts.so.5.8.0
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libdynamic_reconfigure_config_init_mutex.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libnodeletlib.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libbondcpp.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libuuid.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libclass_loader.so
devel/lib/mcptam/mcptam_server: /usr/lib/libPocoFoundation.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libdl.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libroslib.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/librospack.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libpython2.7.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libtinyxml.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/librosbag.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/librosbag_storage.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libroslz4.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/liblz4.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libtopic_tools.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libtf.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libtf2_ros.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libactionlib.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libmessage_filters.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libroscpp.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libboost_signals.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libxmlrpcpp.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libtf2.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libroscpp_serialization.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/librosconsole.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/librosconsole_log4cxx.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/librosconsole_backend_interface.so
devel/lib/mcptam/mcptam_server: /usr/lib/liblog4cxx.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libboost_regex.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/librostime.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libcpp_common.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libboost_system.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libboost_thread.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libpthread.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libboost_system.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libboost_thread.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libpthread.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
devel/lib/mcptam/mcptam_server: /usr/local/lib/libcvd.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libGL.so
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
devel/lib/mcptam/mcptam_server: /usr/local/lib/libGVars3.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libg2o_stuff.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libg2o_core.so
devel/lib/mcptam/mcptam_server: /opt/ros/indigo/lib/libg2o_solver_cholmod.so
devel/lib/mcptam/mcptam_server: /usr/lib/liblapack.so
devel/lib/mcptam/mcptam_server: /usr/lib/libblas.so
devel/lib/mcptam/mcptam_server: CMakeFiles/mcptam_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable devel/lib/mcptam/mcptam_server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mcptam_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mcptam_server.dir/build: devel/lib/mcptam/mcptam_server
.PHONY : CMakeFiles/mcptam_server.dir/build

CMakeFiles/mcptam_server.dir/requires: CMakeFiles/mcptam_server.dir/src/MainServer.cpp.o.requires
.PHONY : CMakeFiles/mcptam_server.dir/requires

CMakeFiles/mcptam_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mcptam_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mcptam_server.dir/clean

CMakeFiles/mcptam_server.dir/depend:
	cd /home/vgrlab/catkin_ws/src/mcptam && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vgrlab/catkin_ws/src/mcptam /home/vgrlab/catkin_ws/src/mcptam /home/vgrlab/catkin_ws/src/mcptam /home/vgrlab/catkin_ws/src/mcptam /home/vgrlab/catkin_ws/src/mcptam/CMakeFiles/mcptam_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mcptam_server.dir/depend

