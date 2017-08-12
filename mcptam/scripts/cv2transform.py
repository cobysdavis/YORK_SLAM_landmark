#!/usr/bin/env python
import cv2
from matplotlib import pyplot as plt
from random import randint, sample
import math
from tempfile import TemporaryFile
import numpy as np

def get_transform(model_pts,img_points,homography):
	temp=np.array([img_points])
	print "temp:"
	print temp
	print "image points: "
	inverse_homography=np.array(np.linalg.inv(homography))
	image_points=cv2.perspectiveTransform(temp,inverse_homography)
	print image_points

	# Camera internals
	focal_length = size[1]
	center = (size[1]/2, size[0]/2)
	camera_matrix = np.array(
		                 [[focal_length, 0, center[0]],
		                 [0, focal_length, center[1]],
		                 [0, 0, 1]], dtype = "double"
		                 )
	 
	print "Camera Matrix :\n {0}".format(camera_matrix)
	 
	dist_coeffs = np.zeros((4,1)) # Assuming no lens distortion
	(success, rotation_vector, translation_vector) = cv2.solvePnP(model_points, image_points, camera_matrix, dist_coeffs, flags=cv2.SOLVEPNP_ITERATIVE)
	 
	print "Rotation Vector:\n {0}".format(rotation_vector)
	print "Translation Vector:\n {0}".format(translation_vector)

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
        cv2.circle(out, (int(x1),int(y1)), 8, (255, 0, 0), 7)   
        cv2.circle(out, (int(x2)+cols1,int(y2)), 8, (255, 0, 0), 7)

        # Draw a blue line with thickness in between the two points
        cv2.line(out, (int(x1),int(y1)), (int(x2)+cols1,int(y2)), (255, 0, 0), 8)


    # Show the image
    #cv2.imshow('Matched Features', out)
    cv2.waitKey(0)
    cv2.destroyWindow('Matched Features')

    # Also return the image if you'd like a copy
    return out


img1 = cv2.imread('/home/vgrlab/catkin_ws/src/YORK_SLAM_landmark/mcptam/scripts/query.jpg',0) # queryImage
img2 = cv2.imread('/home/vgrlab/catkin_ws/src/YORK_SLAM_landmark/mcptam/scripts/logo_colour.jpg',0) # trainImage
threshhold=0.3

# Initiate SIFT detector
sift = cv2.xfeatures2d.SIFT_create()




# find the keypoints and descriptors with SIFT
kp1, des1 = sift.detectAndCompute(img1,None)
kp2, des2 = sift.detectAndCompute(img2,None)


# BFMatcher with default params
bf = cv2.BFMatcher()
matches = bf.knnMatch(des1,des2, k=2)

#applies for cv2.perspectiveTransform previous version before using homography
good = []
for m,n in matches:
    if m.distance < threshhold*n.distance:
	good.append([m])
matching_points=[]
for m,n in matches:
    if m.distance < threshhold*n.distance:
	matching_points.append(m)

#to allow homography
if len(good)>3:
	# cv2.drawMatchesKnn expects list of lists as matches.
	img3 = cv2.drawMatchesKnn(img1,kp1,img2,kp2,good,None,flags=2)
	#plt.imshow(img3),plt.show()

	query_list, train_list = keypoint_lists(matching_points, kp1, kp2)

	#draw all matching points
	img4 = drawMatches(img1,img2,query_list,train_list)
	plt.imshow(img4),plt.show()

	query_height, query_width = img1.shape[:2]
	train_height, train_width = img2.shape[:2]

	#create transformation matrix
	homography, mask = cv2.findHomography(query_list, train_list, cv2.RANSAC)
	print homography

	ftr_corners = np.float32([[0, 0], [train_width, 0], [train_width, train_height], [0, train_width]]).reshape(1, -1, 2)
	corners = np.int32( cv2.perspectiveTransform(ftr_corners, homography).reshape(-1, 2) )

	#apply to query Image to see if matrix is correct
	dst1 = cv2.warpPerspective(img1,homography, (train_width, train_height))
	plt.subplot(121),plt.imshow(img1),plt.title('Input')
	plt.subplot(122),plt.imshow(dst1),plt.title('Output')
	plt.show()


	# Read Image
	im = cv2.imread('/home/vgrlab/catkin_ws/src/YORK_SLAM_landmark/mcptam/scripts/1.jpg');
	size = im.shape



	#training image is 8.5x11 in^2=0.2159 x 0.2794 m^2
	#define (0,0,0)= top left of training image

	# 3D model points.
	model_points = np.array([
		                    (0.0,0.0, 0.0),         # origin/top left of paper
		                    (0.2794, 0, 0.0),       # top right corner
		                    (0.2794, 0.2159, 0),   # bottom right
		                    (0.0, 0.2159, 0),      # bottom left
		                ])

	 

	train_width_in_m=0.2794
	train_height_in_m=0.2159
	#print "model points: "
	#print model_points

	img_points = np.array([
		                    (0, 0),     # origin top left 
		                    (576, 0),     # top right
		                    (576, 479),     # bottom right
		                    (0, 479),     # bottom left
		                ], dtype="double")


	rot_vect,trans_vect,corner_pts=get_transform(model_points,img_points,homography)
	print "corner points"
	print corner_pts

	query_rect_img=drawLines(img1,corner_pts) #draws square on query image
	plt.subplot(122),plt.imshow(query_rect_img),plt.title('squares')
	plt.show()
	matrix=[]
	for i in range(0,3):
		matrix.append(rot_vect[i])
	for i in range(0,3):
		matrix.append(trans_vect[i])
	outfile = TemporaryFile()
	np.save(outfile, matrix)
	np.savetxt('/home/vgrlab/catkin_ws/src/YORK_SLAM_landmark/mcptam/scripts/matrix.txt', matrix)
