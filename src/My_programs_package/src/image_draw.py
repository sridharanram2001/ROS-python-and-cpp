import numpy as np
import cv2

image = np.zeros((512,512,3),dtype=np.uint8)

cv2.line(image,(0,0),(511,511),(255,255,255),5)

cv2.rectangle(image,(384,0),(510,128),(0,255,0),3)

font = cv2.FONT_HERSHEY_SIMPLEX
cv2.putText(image,"ROS,OpenCV",(10,500),font,2,(255,255,255),2,cv2.LINE_AA)


cv2.imshow("Image Panel",image)

cv2.waitKey(0)
cv2.destroyAllWindows()