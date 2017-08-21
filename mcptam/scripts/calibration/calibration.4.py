import numpy as np
import cv2
import glob
from tempfile import TemporaryFile

# termination criteria
criteria = (cv2.TERM_CRITERIA_EPS + cv2.TERM_CRITERIA_MAX_ITER, 30, 0.001)

# prepare object points, like (0,0,0), (1,0,0), (2,0,0) ....,(6,5,0)
objp = np.zeros((6*9,3), np.float32)
objp[:,:2] = np.mgrid[0:9,0:6].T.reshape(-1,2)

# Arrays to store object points and image points from all the images.
objpoints = [] # 3d point in real world space
imgpoints = [] # 2d points in image plane.

images = glob.glob('*.jpg')
print images
count=0
for fname in images:
    img = cv2.imread(fname)
    gray = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
    w,h=img.shape[:2]
    # Find the chess board corners
    ret, corners = cv2.findChessboardCorners(gray, (9,6),None)

    # If found, add object points, image points (after refining them)
    if ret == True:
	count+=1
        objpoints.append(objp)
	
        corners2 = cv2.cornerSubPix(gray,corners,(11,11),(-1,-1),criteria)

        # Draw and display the corners
        img = cv2.drawChessboardCorners(img, (9,6), corners2,ret)
	img = cv2.resize(img, (0,0), fx=0.5, fy=0.5) 
        cv2.imshow('img',img)
	cv2.imwrite('post' + fname,img)

	print "waiting"
print "count : " + str(count)
#print cv2.fisheye.calibrate(objpoints, imgpoints, (w, h), None, None)
ret, mtx, dist, rvecs, tvecs = cv2.calibrateCamera(objpoints, imgpoints, gray.shape[::-1],None,None)
outfile = TemporaryFile()
calib=[]
calib.append(mtx)
calib.append(dist)

dist=np.array(dist,dtype=np.uint8)

img = cv2.imread('frame0011.jpg')
h,  w = img.shape[:2]
newcameramtx, roi=cv2.getOptimalNewCameraMatrix(mtx,dist,(w,h),1,(w,h))

# undistort
dst = cv2.undistort(img, mtx, dist, None, newcameramtx)

# crop the image
x,y,w,h = roi
dst = dst[y:y+h, x:x+w]
cv2.imwrite('calibresult.png',dst)

mapx,mapy = cv2.initUndistortRectifyMap(mtx,dist,None,newcameramtx,(w,h),5)
dst = cv2.remap(img,mapx,mapy,cv2.INTER_LINEAR)

# crop the image
x,y,w,h = roi
dst = dst[y:y+h, x:x+w]
cv2.imwrite('calibresult9.png',dst)
'''
print calib
np.save(outfile, calib)
np.savetxt('/home/vgrlab/catkin_ws/src/YORK_SLAM_landmark/mcptam/scripts/calib.txt', calib)

print ret
print mtx
print dist
print rvecs
print tvecs
'''
