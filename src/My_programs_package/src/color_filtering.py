import numpy as np
import cv2
import imutils

image = cv2.imread("/home/ramprakash/My_workspace/src/ros_essentials_cpp/src/topic03_perception/images/tennisball02.jpg")
cv2.imshow("Original",image)

hsv = cv2.cvtColor(image,cv2.COLOR_BGR2HSV)
cv2.imshow("HSV formatted image",hsv)

#find the upper and the lower bounds for the upper and lower 

yellowLower = (30,130,170)
yellowUpper = (60,255,255)

#define as mask using the lower and upper bounds of the yellow color

mask = cv2.inRange(hsv,yellowLower,yellowUpper)

cv2.imshow("Mask",mask)

cv2.waitKey(0)
cv2.destroyAllWindows()