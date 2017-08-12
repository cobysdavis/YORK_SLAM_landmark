import numpy as np
#!/usr/bin/env python
import cv2
from matplotlib import pyplot as plt
from random import randint
import rospy
from std_msgs.msg import Float64MultiArray
from std_msgs.msg import Bool
from tempfile import TemporaryFile
from subprocess import call

def publishTransform(data):
	call(["/bin/bash", "/home/vgrlab/catkin_ws/src/YORK_SLAM_landmark/mcptam/scripts/shell.sh"])
	matrix=Float64MultiArray()
	data = open("matrix.txt", "r").read().split('\n')
  	print data
	for i in range(0,6):
		matrix.data.append(float(data[i]))
	
	pub.publish(matrix)
	




if __name__=='__main__' :
	rospy.init_node('transformatioMatrix')
	pub=rospy.Publisher('matrix',Float64MultiArray,queue_size=10)
	sub=rospy.Subscriber('pictureTaken',Bool,publishTransform)
	rospy.spin()


