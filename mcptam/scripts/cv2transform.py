#!/usr/bin/env python
import cv2
from matplotlib import pyplot as plt
from random import randint, sample
import math
from tempfile import TemporaryFile
import numpy as np
import time
def get_logo_cords():
	with open('logo_position.txt') as f:
	    polyShape = []
	    for line in f:
		line = line.split() # to deal with blank 
		if line:            # lines (ie skip them)
		    line = [float(i) for i in line]
		    polyShape.append(line)
	return np.array(polyShape)

def filterGoodKeypoints(kp1,avg1,kp2,avg2):
	kp1new=[]
	kp2new=[]
	print avg1
	print avg2
	for kp in kp1:
		if kp.response>avg1:
			kp1new.append(kp)
	for kp in kp2:
		if kp.response>avg2:
			kp2new.append(kp)
	return kp1new,kp2new
			
def filterGoodMatches(matches,threshhold):
	good = []
	for m,n in matches:
	    if m.distance < threshhold*n.distance:
		good.append([m])
	matching_points=[]
	for m,n in matches:
	    if m.distance < threshhold*n.distance:
		matching_points.append(m)
	return good,matching_points

def get_transform(model_pts,img_points,homography):
	temp=np.array([img_points])
	inverse_homography=np.array(np.linalg.inv(homography))
	image_points=cv2.perspectiveTransform(temp,inverse_homography)
	
	# Camera internals
	focal_length = size[1]
	center = (size[1]/2, size[0]/2)
	'''
	camera_matrix = np.array(
		                 [[focal_length, 0, center[0]],
		                 [0, focal_length, center[1]],
		                 [0, 0, 1]], dtype = "double"
		                 )
	'''
        camera_matrix=np.array([[ 160.94502788, 0, 318.20578823],
        [   0,  159.63414026,  186.06198428],
        [   0,    0 , 1 ]],dtype="double")
        dist_coeffs=np.array([[-0.07132589, -0.03099797, -0.00238763, -0.00045931,  0.0092951 ]])
	#print "Camera Matrix :\n {0}".format(camera_matrix)
	#dist_coeffs = np.zeros((4,1)) # Assuming no lens distortion

	(success, rotation_vector, translation_vector) = cv2.solvePnP(model_points, image_points, camera_matrix, dist_coeffs, flags=cv2.SOLVEPNP_ITERATIVE)
	 
	#print "Rotation Vector:\n {0}".format(rotation_vector)
	#print "Translation Vector:\n {0}".format(translation_vector)

	return rotation_vector,translation_vector,image_points
	


def keypoint_lists(points, kp1, kp2):
	a = np.float32([kp1[p.queryIdx].pt for p in points])
	b = np.float32([kp2[p.trainIdx].pt for p in points])
	return a, b	

def drawLines(img,pts):
    rows = img.shape[0]
    cols = img.shape[1]
    out = img.copy()
    # For each pair of points we have between both images
    # draw circles, then connect a line between them
    for idx, p1 in enumerate(pts[0]):
	p2 = pts[0][(idx+1) % len(pts[0])]
        cv2.line(out, (int(p1[0]),int(p1[1])), (int(p2[0]),int(p2[1])), (255, 0, 0), 15)
    return out


def drawMatches(img1, img2,list1,list2):
    # Create a new output image that concatenates the two images together
    # (a.k.a) a montage
    rows1 = img1.shape[0]
    cols1 = img1.shape[1]
    rows2 = img2.shape[0]
    cols2 = img2.shape[1]

    out = np.zeros((max([rows1,rows2]),cols1+cols2,3), dtype='uint8')

    # Place the first image to the left
    out[:rows1,:cols1] = np.dstack([img1, img1, img1])

    # Place the next image to the right of it
    out[:rows2,cols1:] = np.dstack([img2, img2, img2])

    # For each pair of points we have between both images
    # draw circles, then connect a line between them
    for i in range(0,len(list1)):
        (x1,y1) = list1[i]
        (x2,y2) = list2[i]

        # Draw a small blue circle radius 4 with thickness 1 at both coordinates
        cv2.circle(out, (int(x1),int(y1)), 8, (0, 255, 0), 7)   
        cv2.circle(out, (int(x2)+cols1,int(y2)), 8, (0, 255, 0), 7)

        # Draw a blue line with thickness in between the two points

    # Also return the image if you'd like a copy
    return out

def drawKeypoints(img,kpList):
    rows = img.shape[0]
    cols = img.shape[1]
    out = img.copy()

    # For each pair of points we have between both images
    # draw circles, then connect a line between them
    for l in kpList:
        cv2.circle(out,(l[0],l[1]), 8, (255, 0, 0), 5)

    return out

def connectMatches(img1, img2,list1,list2):
    # Create a new output image that concatenates the two images together
    # (a.k.a) a montage
    rows1 = img1.shape[0]
    cols1 = img1.shape[1]
    rows2 = img2.shape[0]
    cols2 = img2.shape[1]

    out = np.zeros((max([rows1,rows2]),cols1+cols2,3), dtype='uint8')

    # Place the first image to the left
    out[:rows1,:cols1] = np.dstack([img1, img1, img1])

    # Place the next image to the right of it
    out[:rows2,cols1:] = np.dstack([img2, img2, img2])

    # For each pair of points we have between both images
    # draw circles, then connect a line between them
    for i in range(0,len(list1)):
        (x1,y1) = list1[i]
        (x2,y2) = list2[i]

        # Draw a small blue circle radius 4 with thickness 1 at both coordinates
   	cv2.circle(out, (int(x1),int(y1)), 8, (0, 255, 0), 7)   
        cv2.circle(out, (int(x2)+cols1,int(y2)), 8, (0, 255, 0), 7)

        # Draw a blue line with thickness in between the two points
        cv2.line(out, (int(x1),int(y1)), (int(x2)+cols1,int(y2)), (255, 0, 0), 8)

    # Also return the image if you'd like a copy
    return out



def drawNothing(img1, img2,list1,list2):
    # Create a new output image that concatenates the two images together
    # (a.k.a) a montage
    rows1 = img1.shape[0]
    cols1 = img1.shape[1]
    rows2 = img2.shape[0]
    cols2 = img2.shape[1]

    out = np.zeros((max([rows1,rows2]),cols1+cols2,3), dtype='uint8')

    # Place the first image to the left
    out[:rows1,:cols1] = np.dstack([img1, img1, img1])

    # Place the next image to the right of it
    out[:rows2,cols1:] = np.dstack([img2, img2, img2])



    # Also return the image if you'd like a copy
    return out

#start of program


img1 = cv2.imread('/home/vgrlab/catkin_ws/src/YORK_SLAM_landmark/mcptam/scripts/query.jpg',0) # queryImage
img2 = cv2.imread('/home/vgrlab/catkin_ws/src/YORK_SLAM_landmark/mcptam/scripts/logo_colour.jpg',0) # trainImage

# Initiate SIFT detector
sift = cv2.xfeatures2d.SIFT_create()

# find the keypoints and descriptors with SIFT
kp1, des1 = sift.detectAndCompute(img1,None)
kp2, des2 = sift.detectAndCompute(img2,None)
avg1=0
avg2=0
for kp in kp1:
	avg1+=kp.response
avg1=avg1/len(kp1)
for kp in kp2:
	avg2+=kp.response
avg2=avg2/len(kp2)
#kp1,kp2=filterGoodKeypoints(kp1,avg1,kp2,avg2)

# BFMatcher with default params
bf = cv2.BFMatcher()
matches = bf.knnMatch(des1,des2, k=2)



#applies for cv2.perspectiveTransform previous version before using homography
old= float(len(matches))

#ratio test
good,matching_points=filterGoodMatches(matches,0.3)

new=float(len(matching_points))
ratio=100*new/old
print "ratio: " + str(ratio)

#to allow homography
if len(good)>3:
	print "target recognized, new transformation matrix"
	
	# cv2.drawMatchesKnn expects list of lists as matches.
	#img3 = cv2.drawMatchesKnn(img1,kp1,img2,kp2,good,None,flags=2)
	#plt.imshow(img3),plt.show()

	query_list, train_list = keypoint_lists(matching_points, kp1, kp2)
	
	#draw nothing 
	img4 = drawNothing(img1,img2,query_list,train_list)
	#plt.imshow(img4),plt.show()	
	#draw all matching points
	img5 = drawMatches(img1,img2,query_list,train_list)
	#plt.imshow(img5),plt.show()
	print "query_list"
	print len(query_list)
	#connect all matching points
	img6 = connectMatches(img1,img2,query_list,train_list)
	#plt.imshow(img6),plt.show()

	query_height, query_width = img1.shape[:2]
	train_height, train_width = img2.shape[:2]

	#create transformation matrix
	homography, mask = cv2.findHomography(query_list, train_list, cv2.RANSAC)
	#print homography

	ftr_corners = np.float32([[0, 0], [train_width, 0], [train_width, train_height], [0, train_width]]).reshape(1, -1, 2)
	corners = np.int32( cv2.perspectiveTransform(ftr_corners, homography).reshape(-1, 2) )

	#apply to query Image to see if matrix is correct
	dst1 = cv2.warpPerspective(img1,homography, (train_width, train_height))
	#plt.subplot(121),plt.imshow(img1),plt.title('Input')
	#plt.subplot(122),plt.imshow(dst1),plt.title('Output')
	#plt.show()


	# Read Image
	im = cv2.imread('/home/vgrlab/catkin_ws/src/YORK_SLAM_landmark/mcptam/scripts/1.jpg');
	size = im.shape


	#training image is 8.5x11 in^2=0.2159 x 0.2794 m^2
	#define (0,0,0)= top left of training image

	# 3D model points.
	model_points = get_logo_cords()

	 
	#8.5x11 inch paper conversion
	train_width_in_m=0.2794
	train_height_in_m=0.2159
	img_points_size=img2.shape
	img_points = np.array([
		                    (0, 0),     # origin top left 
		                    (img_points_size[1], 0),     # top right
		                    (img_points_size[1], img_points_size[0]),     # bottom right
		                    (0, img_points_size[0]),     # bottom left
		                ], dtype="double")

	rot_vect,trans_vect,corner_pts=get_transform(model_points,img_points,homography)

	
	query_points_img=drawKeypoints(img1,query_list)
	cv2.imwrite('square.jpg',query_points_img)
	time.sleep(0.4)
	query_rect_img=drawLines(img1,corner_pts) #draws square on query image
	cv2.imwrite('square.jpg',query_rect_img)

	#plt.imshow(query_rect_img),plt.show()
	#plt.subplot(122),plt.imshow(query_rect_img),plt.title('squares')
	#plt.show()
	matrix=[]
	for i in range(0,3):
		matrix.append(rot_vect[i])
	for i in range(0,3):
		matrix.append(trans_vect[i])
	outfile = TemporaryFile()
	np.save(outfile, matrix)
	np.savetxt('/home/vgrlab/catkin_ws/src/YORK_SLAM_landmark/mcptam/scripts/matrix.txt', matrix)
else :
	print "not target visible"
