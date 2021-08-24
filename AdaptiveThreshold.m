import cv2
import numpy as np
image = cv2.imread("1_MOecD-Ww8mJA_rK0ivsPQg.jpeg")



###  Adaptive Threshold
### the algorithm determines the threshold for a pixel based on a small region around it
### get different thresholds for different regions of the same image which gives better results for images with varying illumination.



## cv.ADAPTIVE_THRESH_MEAN_C: The threshold value is the mean of the neighbourhood area minus the constant C.
thresh1 = cv2.adaptiveThreshold(img,255,cv2.ADAPTIVE_THRESH_MEAN_C,cv2.THRESH_BINARY,199,5)
##the threshold value T(x,y) is a mean of the blockSize×blockSize neighborhood of (x,y) minus C

### cv.ADAPTIVE_THRESH_GAUSSIAN_C: The threshold value is a gaussian-weighted sum of the neighbourhood values minus the constant C.
thresh2 = cv2.adaptiveThreshold(img,255,cv2.ADAPTIVE_THRESH_GAUSSIAN_C,cv2.THRESH_BINARY,199,5)

##the threshold value T(x,y) is a weighted sum (cross-correlation with a Gaussian window) of the blockSize×blockSize neighborhood of (x,y) minus C . The default sigma (standard deviation) is used for the specified blockSize 

cv2.imshow("Adaptive Mean",thresh1)

cv2.imshow("Adpative Guassian ",thresh2)


# De-allocate any associated memory usage
if cv2.waitKey(0) & 0xff == 27:
    cv2.destroyAllWindows()
