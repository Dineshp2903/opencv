import cv2
import numpy as np
image = cv2.imread("1_MOecD-Ww8mJA_rK0ivsPQg.jpeg")
  
  

kernal = np.ones((5,5),np.uint8)
### Erosion
## Erodes away the boundaries of the foreground object
##Used to diminish the features of an image.
img_erosion = cv2.erode(image,kernal,iterations=1)
cv2.imshow("Erosion",img_erosion)
### Uses
#It is useful for removing small white noises.
#Used to detach two connected objects etc.

### Dilation
#Increases the object area
#Used to accentuate features
dilation = cv2.dilate(image,kernal,iterations=1)
cv2.imshow("Dilation",dilation)
### Uses
##In cases like noise removal, erosion is followed by dilation. Because, erosion removes white noises, but it also shrinks our object. So we dilate it. Since noise is gone, they won’t come back, but our object area increases.
##It is also useful in joining broken parts of an object.
cv2.waitKey(60000)
cv2.destroyAllWindows()
