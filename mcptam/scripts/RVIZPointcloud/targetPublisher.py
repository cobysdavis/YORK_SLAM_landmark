#!/usr/bin/env python
import rospy
from geometry_msgs.msg import PointStamped
from mcptam.msg import Triple  
from geometry_msgs.msg import Point


def publish(data):
	pub.publish(data)
	print "publishing"

if __name__=='__main__' :
	
	pub=rospy.Publisher('logo_loc',Triple,queue_size=10)
	rospy.init_node('targetPublisher')
	t=Triple()
	points=("x","y","z")
	'''
	list=[]
	for i in range (0,3):
		for p in points:
			n=input("enter " + str(p) + str(i) + ": ")
			list.append(n)
	'''
	list=[0, 0, 0, 1, 0, 0, 0, 1, 0]
	print list
	i=0	
	t.p1=Point(list[i],list[i+1],list[i+2])
	i=3
	t.p4=Point(list[i],list[i+1],list[i+2])
	i=6
	t.p2=Point(list[i],list[i+1],list[i+2])
	print t
	pub.publish(t)
	rospy.spin()




