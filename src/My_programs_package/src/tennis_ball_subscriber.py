#!/usr/bin/env python
import rospy
from cv_bridge import CvBridge,CvBridgeError
from sensor_msgs.msg import Image
import numpy as np
import cv2

upper_limit = (60,255,255)
lower_limit = (30,90,100)
bridge = CvBridge()

def read_img(img_path,show):
	img = cv2.imread(img_path)
	if show:
		cv2.imshow("RGB Image",img)
	return img

def rgb2hsv(rgb_img,show):
	hsv_img = cv2.cvtColor(rgb_img,cv2.COLOR_BGR2HSV)
	if show:
		cv2.imshow("HSV image",hsv_img)
	return hsv_img

def color_filter(hsv_image,lower_limit,upper_limit,show):
	mask = cv2.inRange(hsv_image,lower_limit,upper_limit)
	if show:
		cv2.imshow("Color filtered image",mask)
	return mask

def contour_detect(binary_img,show):
	contours, hierarchy = cv2.findContours(binary_img, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
	return contours

def draw_contours(image,contours,show):
	index = -1 
	thickness = 2 
	color = (255, 0, 255) 
	cv2.drawContours(image, contours, index, color, thickness)
	if show:
		cv2.imshow("Contoured image",image)

def get_contour_center(contour):
    M = cv2.moments(contour)
    cx=-1
    cy=-1
    if (M['m00']!=0):
        cx= int(M['m10']/M['m00'])
        cy= int(M['m01']/M['m00'])
    return cx, cy

def process_contours(binary_image, rgb_image, contours):
    black_image = np.zeros([binary_image.shape[0], binary_image.shape[1],3],'uint8')
    
    for c in contours:
        area = cv2.contourArea(c)
        perimeter= cv2.arcLength(c, True)
        ((x, y), radius) = cv2.minEnclosingCircle(c)
        cv2.drawContours(rgb_image, [c], -1, (150,250,150), 1)
        cv2.drawContours(black_image, [c], -1, (150,250,150), 1)
        cx, cy = get_contour_center(c)
        cv2.circle(rgb_image, (cx,cy),(int)(radius),(0,0,255),1)
        cv2.circle(black_image, (cx,cy),(int)(radius),(0,0,255),1)
        print ("Area: {}, Perimeter: {}".format(area, perimeter))
    print ("number of contours: {}".format(len(contours)))
    cv2.imshow("RGB Image Contours",rgb_image)
    cv2.imshow("Black Image Contours",black_image)
    cv2.waitKey(25)

def image_callback(ros_image):
	global upper_limit,lower_limit,bridge
	
	try:
		cv_image = bridge.imgmsg_to_cv2(ros_image, "bgr8")
	except CvBridgeError as e:
		print(e)

	hsv = rgb2hsv(cv_image,False)
	filtered = color_filter(hsv,lower_limit,upper_limit,False)
	cont = contour_detect(filtered,False)
	process_contours(filtered,cv_image,cont)




if __name__ == "__main__":
	
	rospy.init_node("tennis_ball_vid_sub",anonymous=True)
	rospy.Subscriber("usb_cam/image_raw",Image,image_callback)

	try:
		rospy.spin()
	except KeyboardInterrupt:
		print("Shutting down")

	cv2.destroyAllWindows()
	
		
	
	