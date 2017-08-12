#!/usr/bin/env python
import cv2
import rospy
from std_srvs.srv import Trigger,TriggerResponse,TriggerRequest
from std_msgs.msg import Bool
from std_msgs.msg import Int32


def takePicTrigger(data):
	camera = cv2.VideoCapture(1)
	'''
	while True:
	    return_value,image = camera.read()
	    gray = cv2.cvtColor(image,cv2.COLOR_BGR2GRAY)
	    cv2.imshow('image',gray)	    
	if cv2.waitKey(1)& 0xFF == ord('s'):
		cv2.imwrite('query.jpg',image)
		break
	'''
 	return_value,image = camera.read()
	gray = cv2.cvtColor(image,cv2.COLOR_BGR2GRAY)
	cv2.imshow('image',gray)	    
	cv2.imwrite('query.jpg',image)
	camera.release()
	cv2.destroyAllWindows()
	n=TriggerResponse()
	n.success=True
	n.message=""
	print "picture taken"
	pub.publish(True)
	return n


def takePicInt(data):
	camera = cv2.VideoCapture(1)
 	return_value,image = camera.read()
	gray = cv2.cvtColor(image,cv2.COLOR_BGR2GRAY)
	cv2.imshow('image',gray)	    
	cv2.imwrite('query.jpg',image)
	camera.release()
	cv2.destroyAllWindows()
	print "picture taken"
	pub.publish(True)
	return

if __name__=='__main__' :
	rospy.init_node('webcamPicPublisher')
        pictureService=rospy.Service('picService', Trigger, takePicTrigger)
	sub=rospy.Subscriber('clock',Int32, takePicInt)
	pub=rospy.Publisher('pictureTaken',Bool,queue_size=10)
	rospy.spin()


