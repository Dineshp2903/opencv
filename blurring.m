import cv2

image = cv2.imread("1_MOecD-Ww8mJA_rK0ivsPQg.jpeg")

cv2.imshow('Original Image', image)

## Blurring Techinques

##  blurring an image by a Gaussian function
## widely used effect in graphics software, typically to reduce image noise and reduce detail

GuassianBlur = cv2.GaussianBlur(image,(7,7),0)
cv2.imshow("Guassian Blur",GuassianBlur)

### Median Blur
# non-linear digital filtering technique, often used to remove noise from an image or signal.


medianBlur = cv2.medianBlur(image,5)
cv2.imshow("MedianBlur",medianBlur)

### Bilateral Blur
## A bilateral filter is a non-linear, edge-preserving, and noise-reducing smoothing filter for images. 
###It replaces the intensity of each pixel with a weighted average of intensity values from nearby pixels
bilateralBlur = cv2.bilateralFilter(image,9,75,75)
cv2.imshow("Bilateral",bilateralBlur)

cv2.waitKey(60000)
cv2.destroyAllWindows()
