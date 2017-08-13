#!/usr/bin/env python
import cv2
import rospy

count=0
camera = cv2.VideoCapture(1)
while True:
    return_value,image = camera.read()
    gray = cv2.cvtColor(image,cv2.COLOR_BGR2GRAY)
    cv2.imshow('image',gray)	    
    if cv2.waitKey(1)& 0xFF == ord('s'):
      cv2.imwrite('calib' + str(count) + '.jpg',image)
      print "picture taken"
      #camera.release()
      #cv2.destroyAllWindows()
      count+=1

