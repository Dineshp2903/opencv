import cv2
import numpy as np
image = cv2.imread("1_MOecD-Ww8mJA_rK0ivsPQg.jpeg")

thresh1 = cv2.adaptiveThreshold(img,255,cv2.ADAPTIVE_THRESH_MEAN_C,cv2.THRESH_BINARY,199,5)

thresh2 = cv2.adaptiveThreshold(img,255,cv2.ADAPTIVE_THRESH_GAUSSIAN_C,cv2.THRESH_BINARY,199,5)

cv2.imshow("Adaptive Mean",thresh1)

cv2.imshow("Adpative Guassian ",thresh2)


# De-allocate any associated memory usage
if cv2.waitKey(0) & 0xff == 27:
    cv2.destroyAllWindows()
