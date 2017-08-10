#!/usr/bin/env python
import cv2
from matplotlib import pyplot as plt
from random import randint, sample
import math
from tempfile import TemporaryFile
import numpy as np

def distance(v1, v2):
    return np.sqrt(np.sum((np.array(v1) - np.array(v2)) ** 2))   

def inumerate(objs, indices):
	for idx in indices:
		yield objs[idx], idx

def outputMatches(matches, kps, thresh):
	chosen_matches = []
	chosen_keypoints = []
	# keeps shuffle and removing indices to iterate thru
	indices = range(len(matches))
	while len(chosen_matches) < 4:
		for match, index in inumerate(matches, sample(indices, len(indices))):
			if len(chosen_matches) >= 4:
				break
			if not close_to_other_keypoints(chosen_keypoints, kps[match.queryIdx], thresh):
				chosen_matches.append(match)
				chosen_keypoints.append(kps[match.queryIdx])
				indices.remove(index)
			pass
		pass	
	return chosen_matches
		

def output4Matches(good_matches,kp):
	list=[]
	prev=[]
	thresh=100
	print len(good_matches)
	print len(kp)
	while len(list)<4:
		x=randint(0,len(good_matches)-1)
		if not already_chosen(prev,x):
			if not close_to_others(prev,x,thresh,kp):
				list.append(good_matches[x])
				prev.append(x)
				print "good match"
	for l in prev:
		print "point:" + str(kp[l].pt)
	for l in list:
		print kp[l.trainIdx].pt
	for l in list:
		print kp[l.trainIdx].pt
	return list

def close_to_other_keypoints(kps, keypoint, thresh):
	if len(kps) == 0:
		return False
	for kp in kps:
		if distance(kp.pt, keypoint.pt) < thresh:
			return True
	return False

def keypoint_lists(points, kp1, kp2):
	a = np.float32([kp1[p.queryIdx].pt for p in points])
	b = np.float32([kp2[p.trainIdx].pt for p in points])
	return a, b

def create_same_points(points,kp1,kp2):
	list=[]
	list.append([])
	list.append([])
	for p in points:
		list[0].append(kp1[p.queryIdx].pt)
		list[1].append(kp2[p.trainIdx].pt)
	a=np.float32(list[0])
	b=np.float32(list[1])
	list2=[]
	list2.append(a)
	list2.append(b)
	return list2
	

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
    for i in range(0,4):
	
        # x - columns
        # y - rows
        (x1,y1) = list1[i]
        (x2,y2) = list2[i]
	print str((x1,y1))
	print str((x2,y2))
        # Draw a small circle at both co-ordinates
        # radius 4
        # colour blue
        # thickness = 1
        cv2.circle(out, (int(x1),int(y1)), 8, (255, 0, 0), 7)   
        cv2.circle(out, (int(x2)+cols1,int(y2)), 8, (255, 0, 0), 7)

        # Draw a line in between the two points
        # thickness = 1
        # colour blue
        cv2.line(out, (int(x1),int(y1)), (int(x2)+cols1,int(y2)), (255, 0, 0), 8)


    # Show the image
    #cv2.imshow('Matched Features', out)
    cv2.waitKey(0)
    cv2.destroyWindow('Matched Features')

    # Also return the image if you'd like a copy
    return out


img1 = cv2.imread('/home/vgrlab/catkin_ws/src/mcptam/scripts/1.jpg',0) # queryImage
img2 = cv2.imread('/home/vgrlab/catkin_ws/src/mcptam/scripts/logo_colour.jpg',0) # trainImage
threshhold=0.3



# Initiate SIFT detector
sift = cv2.xfeatures2d.SIFT_create()

#print "post sift"
# find the keypoints and descriptors with SIFT
kp1, des1 = sift.detectAndCompute(img1,None)
#print "post sift"
kp2, des2 = sift.detectAndCompute(img2,None)
#print "post sift"

# BFMatcher with default params
bf = cv2.BFMatcher()
matches = bf.knnMatch(des1,des2, k=2)

# Apply ratio test
good = []
for m,n in matches:
    if m.distance < threshhold*n.distance:
	good.append([m])
good2=[]
for m,n in matches:
    if m.distance < threshhold*n.distance:
	good2.append(m)


# cv2.drawMatchesKnn expects list of lists as matches.
img3 = cv2.drawMatchesKnn(img1,kp1,img2,kp2,good,None,flags=2)

plt.imshow(img3),plt.show()

#output 4 necessary matches
#matching_points=outputMatches(good2, kp1, 150)
matching_points = good2

print matching_points

query_list, train_list = keypoint_lists(matching_points, kp1, kp2)

#point_list=create_same_points(matching_points,kp1,kp2)
#query_points, train_point = point_list[0], point_list[1]

#draw 4  matching points
img4 = drawMatches(img1,img2,query_list,train_list)

plt.imshow(img4),plt.show()

query_height, query_width = img1.shape[:2]
train_height, train_width = img2.shape[:2]

#create transfomration matrix
homography, mask = cv2.findHomography(query_list, train_list, cv2.RANSAC)

#M = cv2.getPerspectiveTransform(train_list,query_list)

ftr_corners = np.float32([[0, 0], [train_width, 0], [train_width, train_height], [0, train_width]]).reshape(1, -1, 2)
corners = np.int32( cv2.perspectiveTransform(ftr_corners, homography).reshape(-1, 2) )

#print M
#matrix=[]
#for l in M:
#	for p in l:
#		matrix.append(float(p))
#print matrix
#outfile = TemporaryFile()
#np.save(outfile, matrix)
#np.savetxt('/home/vgrlab/catkin_ws/src/mcptam/scripts/matrix.txt', matrix)

#apply to query Image to see if matrix is correct
dst1 = cv2.warpPerspective(img1,homography, (train_width, train_height))
plt.subplot(121),plt.imshow(img1),plt.title('Input')
plt.subplot(122),plt.imshow(dst1),plt.title('Output')
plt.show()


