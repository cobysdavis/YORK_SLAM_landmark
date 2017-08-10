# CMake generated Testfile for 
# Source directory: /home/vgrlab/catkin_ws/src/mcptam
# Build directory: /home/vgrlab/catkin_ws/src/mcptam
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(_ctest_mcptam_roslint_package "/home/vgrlab/catkin_ws/src/mcptam/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/indigo/share/catkin/cmake/test/run_tests.py" "/home/vgrlab/catkin_ws/src/mcptam/test_results/mcptam/roslint-mcptam.xml" "--working-dir" "/home/vgrlab/catkin_ws/src/mcptam" "--return-code" "/opt/ros/indigo/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/vgrlab/catkin_ws/src/mcptam/test_results/mcptam/roslint-mcptam.xml make roslint_mcptam")
ADD_TEST(_ctest_mcptam_rostest_test_entropy_test.test "/home/vgrlab/catkin_ws/src/mcptam/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/indigo/share/catkin/cmake/test/run_tests.py" "/home/vgrlab/catkin_ws/src/mcptam/test_results/mcptam/rostest-test_entropy_test.xml" "--return-code" "/opt/ros/indigo/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/vgrlab/catkin_ws/src/mcptam --package=mcptam --results-filename test_entropy_test.xml --results-base-dir \"/home/vgrlab/catkin_ws/src/mcptam/test_results\" /home/vgrlab/catkin_ws/src/mcptam/test/entropy_test.test ")
SUBDIRS(gtest)
