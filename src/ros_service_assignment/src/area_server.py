#!/usr/bin/env python

from ros_service_assignment.srv import RectangleAreaService
from ros_service_assignment.srv import RectangleAreaServiceRequest
from ros_service_assignment.srv import RectangleAreaServiceResponse
import rospy
import time



def calc_area(rectangle_dim):
	print("Calculating ... ")
	time.sleep(5)
	area_val = RectangleAreaServiceResponse(rectangle_dim.width * rectangle_dim.height)
	#area_val.area = 
	return area_val

def rect_calc_server():
	rospy.init_node("rectange_area_server")
	s = rospy.Service("rectangle_area",RectangleAreaService,calc_area)
	print("Ready to calculate area ")
	rospy.spin()



if __name__ == "__main__":
	rect_calc_server()