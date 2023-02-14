import numpy as np
import cv2

image_name = "tree"

color_image = cv2.imread("/home/ramprakash/Downloads/Img_sketch_final.png")

cv2.imshow("Original Image",color_image)
cv2.moveWindow("Original Image",0,0)
print(color_image.shape)

h,w,channel = color_image.shape
blue,green,red = cv2.split(color_image)

cv2.imshow("Blue Image",blue)
cv2.moveWindow("Blue Image",0,h)

cv2.imshow("Red Image",red)
cv2.moveWindow("Red Image",0,h*2)

cv2.imshow("Green Image",green)
cv2.moveWindow("Green Image",0,h*3)

hsv = cv2.cvtColor(color_image,cv2.COLOR_BGR2HSV)
h,s,v = cv2.split(hsv)
hsv_image = np.concatenate((h,s,v),axis=1)
cv2.imshow("Hue, Saturation, Value Image",hsv_image)

cv2.waitKey(0)
cv2.destroyAllWindows()