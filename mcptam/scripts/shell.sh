#!/bin/sh
export WORKON_HOME=/home/vgrlab/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
workon cv
python /home/vgrlab/catkin_ws/src/YORK_SLAM_landmark/mcptam/scripts/cv2transform.py
	
