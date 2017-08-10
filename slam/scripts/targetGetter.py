#!/usr/bin/env python
import rospy
from geometry_msgs.msg import PointStamped
from mcptam.msg import Triple  

class Plane:
	def __init__(self):
		self.plane=[]
	
	def setPlane(self,data):
		self.plane.append(data.point)
		print self.plane
		print "array length: " + str(len(self.plane))
		if len(self.plane)==3:
			t=Triple()
			t.p1=p.plane[0]
			t.p4=p.plane[1]
			t.p2=p.plane[2]
			pub.publish(t)
			print "publishing"

if __name__=='__main__' :
	p=Plane()
	rospy.init_node('targetGetter')
	pub=rospy.Publisher('logo_loc',Triple,queue_size=10)
	sub=rospy.Subscriber('clicked_point',PointStamped, p.setPlane)

	rospy.spin()

