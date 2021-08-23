import cv2
import numpy as np
image = cv2.imread("opencv/1_MOecD-Ww8mJA_rK0ivsPQg.jpeg")
  
img = cv2.cvtColor(image,cv2.COLOR_BGR2GRAY)


  
ret , thresh1 = cv2.threshold(img,120,255,cv2.THRESH_BINARY)
## cv2.THRESH_BINARY --> If the pixel is greater than 120 will assign 255 or 0(Black)
ret , thresh2 = cv2.threshold(img,120,255,cv2.THRESH_BINARY_INV)
## cv2.THRESH_BINARY_INV --> If the pixel is greater than 120 will assign 0(Black) or 255 ----> Inversion of Binary 
ret, thresh3 = cv2.threshold(img, 120, 255, cv2.THRESH_TRUNC)
##cv.THRESH_TRUNC: If pixel intensity value is greater than threshold, it is truncated to the threshold. The pixel values are set to be the same as the threshold. All other values remain the same.

ret, thresh4 = cv2.threshold(img, 120, 255, cv2.THRESH_TOZERO)
##cv.THRESH_TOZERO: Pixel intensity is set to 0, for all the pixels intensity, less than the threshold value.

ret, thresh5 = cv2.threshold(img, 120, 255, cv2.THRESH_TOZERO_INV)
##cv.THRESH_TOZERO_INV: Inverted or Opposite case of cv2.THRESH_TOZERO.
cv2.imshow('Binary Threshold', thresh1)
cv2.imshow('Binary Threshold Inverted', thresh2)
cv2.imshow('Truncated Threshold', thresh3)
cv2.imshow('Set to 0', thresh4)
cv2.imshow('Set to 0 Inverted', thresh5)

# De-allocate any associated memory usage
if cv2.waitKey(0) & 0xff == 27:
    cv2.destroyAllWindows()
