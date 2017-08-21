#!/usr/bin/env python
import rospy
import numpy as np
from sensor_msgs.msg import PointCloud2
import geometry_msgs.msg  
from std_msgs.msg import Float32
from std_msgs.msg import Header
from std_srvs.srv import Empty
import sensor_msgs.point_cloud2 as pc2
from mcptam.srv import FilterPC,FilterPCResponse,FilterPCRequest
from mcptam.srv import SetDepthFloat,SetDepthFloatResponse,SetDepthFloatRequest
from mcptam.msg import Triple  

#this node filters pointcloud data

class Config:
	def __init__(self):
			self.pointcloud=Cloud()

	def definePlane(self,data):
		print "received plane data"
		p1=np.array([data.p1.x,data.p1.y,data.p1.z]) 
		p4=np.array([data.p4.x,data.p4.y,data.p4.z]) 
		p2=np.array([data.p2.x,data.p2.y,data.p2.z]) 
		self.pointcloud.plane=(p1,p4,p2)
class Cloud:

	def __init__(self): #default is x-y plane with a depth of 1 and volume 1
		self.cloud=[]
		self.header=Header()
		self.header.seq=0
		self.header.stamp=rospy.Time.now()
		self.header.frame_id="vision_world"
		self.plane=[]
		self.depth=1

	def callback(self,data):	
		if len(self.plane)!=0:
			#define cloud in readable format and save to obejct field		
			self.cloud=[]
			for p in pc2.read_points(data,field_names=("x","y","z"),skip_nans=True):
				#print "x : %f y : %f z : %f" %(p[0],p[1],p[2])
				self.cloud.append(p)
			#print len(self.cloud)

			#filter using given intial rectangular region
			#print "old array:"

			l=len(data.data)
			for i in range(len(self.cloud)-1,-1,-1):
				if not self.is_inside_region(self.cloud[i]):
					del self.cloud[i]
			print "new array:"
			self.header.stamp=rospy.Time.now()
			self.header.seq+=1
			newCloud=pc2.create_cloud_xyz32(self.header,self.cloud)
			print newCloud
			pub.publish(newCloud)
			#print newCloud.header
			#print newCloud.fields
			print "old legnth: " + str(l)
			print "new length: " + str(len(self.cloud))
			#print "length difference: " + str(l-len(self.cloud))

	def filterPC(self,data): 
		print "old array:"
		print self.cloud
		l=len(self.cloud)
		for i in range(len(self.cloud)-1,-1,-1):
			if not self.is_inside_region(self.cloud[i]):
				del self.cloud[i]
		print "new array:"
		self.header.stamp=rospy.Time.now()
		self.header.seq+=1
		newCloud=pc2.create_cloud_xyz32(self.header,self.cloud)
		pub.publish(newCloud)
		print self.cloud
		print len(self.cloud)
		print "length difference: " + str(l-len(self.cloud))
		return FilterPCResponse(True)
			
		
	def dump(self,data):
		return 

	def printPC(self,data):
		print self.cloud
		print "length: " + str(len(self.cloud))
		return	

	
	def setDepth(self,data):
		self.depth=data.depth.data
		print "depth set to: " + str(self.depth)
		return SetDepthFloatResponse(True)
	
	def is_inside_region(self,point):
		#define three vectors u,v,w that are perpencidular edges of the rectangular prism
		p1=self.plane[0]
		p4=self.plane[1]
		p2=self.plane[2]
		depth=self.depth
		u=p1-p2
		v=p1-p4
		p5=depth*norm(np.cross((p4-p1),(p2-p1)))
		w=p1-p5
		# the point lies inside the region if:
		if in_between(np.dot(u,point),np.dot(u,p1),np.dot(u,p2)) and in_between(np.dot(v,point),np.dot(v,p1),np.dot(v,p4)) and in_between(np.dot(w,point),np.dot(w,p1),np.dot(w,p5)):
			return True
		return False
		

def in_between(a,p1,p2):
	if p2>p1:
		if a>=p1 and a<=p2:
			return True
	else:
		if a<=p1 and a>=p2:
			return True
	return False

def norm(v):
	return v/np.linalg.norm(v)


if __name__=='__main__' :
	#choose a region in space with a given depth,using three points to define a plane
	print "cloud plane listener starting"
	rospy.init_node('cloudPlaneListener')
	config=Config()
	pc_sub=rospy.Subscriber('mcptam/map_points',PointCloud2,config.pointcloud.callback)
	pub=rospy.Publisher('filteredCloud',PointCloud2,queue_size=10)
	logo_sub=rospy.Subscriber('logo_loc',Triple,config.definePlane)


	setDepth=rospy.Service('SetDepth', SetDepthFloat, config.pointcloud.setDepth)
	dump=rospy.Service('dump', Empty, config.pointcloud.dump)
	filterPC=rospy.Service('filterPC', FilterPC, config.pointcloud.filterPC)
	printPC=rospy.Service('printPC',Empty,config.pointcloud.printPC)
	rospy.spin()
