#!/usr/bin/env python
import rospy
from geometry_msgs.msg import PointStamped
from mcptam.msg import Triple  

#this node allows you to define a plane (plus some depth, so a rectangular prism) in 3-D space in which the logo lies in order to obtain a pointcloud map the logo
'''
#steps
1. open rviz
2. start mcptam (this will start building a pc map of the world)
3. when you can identify the logo, orient the camera in rviz so you are looking down from a birds eye view of the logo
4. use the select tool in rviz and highlight all the points belonging to the logo, its ok if you have extra points, you just need to cover all of the logo space
5. if the logo is a rectangle like this with these 4 corners:
4-------3
|	|
|	|
|	|
|	|
|	|
1-------2
click on the point closest to 1, then click publish in RVIZ
click on the point closest to 4, then click publish in RVIZ
click on the point closest to 2, then click publish in RVIZ

this node should then print "publishing logo plane points"
6. The cloud filter node will then filter everything else besides the logo plane out and you can see this in rviz by opening a new pointcloud topic to watch
7. to redefine the plane, do the process again
'''
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
			print "publishing logo plane points"

if __name__=='__main__' :
	p=Plane()
	rospy.init_node('targetGetter')
	pub=rospy.Publisher('logo_loc',Triple,queue_size=10)
	sub=rospy.Subscriber('clicked_point',PointStamped, p.setPlane)

	rospy.spin()

