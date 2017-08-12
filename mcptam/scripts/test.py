import cv2
import numpy as np

a = np.array([[1, 2], [4, 5], [7, 8]], dtype='float32')
h = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]], dtype='float32')
a = np.array([a])
print a
print h

print cv2.perspectiveTransform(a, h)
