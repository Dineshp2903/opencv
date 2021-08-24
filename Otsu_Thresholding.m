##n Otsu Thresholding, a value of the threshold isn’t chosen but is determined automatically.

import cv2

image = cv2.imread("//opencv/1_MOecD-Ww8mJA_rK0ivsPQg.jpeg")




img = cv2.cvtColor(image,cv2.COLOR_BGR2GRAY)

### Otsu's Thresholding Technique

ret, thresh1 = cv2.threshold(img, 120, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU)

cv2.imshow('Otsu Threshold', thresh1)




# De-allocate any associated memory usage
if cv2.waitKey(0) & 0xff == 27:
    cv2.destroyAllWindows()
