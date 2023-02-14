#!/usr/bin/env python

from ros_service_assignment.srv import RectangleAreaService
from ros_service_assignment.srv import RectangleAreaServiceRequest
from ros_service_assignment.srv import RectangleAreaServiceResponse
import rospy
import time
import sys

def send_data_to_server(width,height):
	print("Sending Data ")
	rospy.wait_for_service("rectangle_area")
	try:
		calculate_area = rospy.ServiceProxy("rectangle_area",RectangleAreaService)
		response = calculate_area(width,height)
		return response.area
	except rospy.ServiceException(e):
		print("Service call failed : ",e)




if __name__ == "__main__":
	
	rospy.init_node("rectangle_area_server")

	if len(sys.argv) == 3:
		width = int(sys.argv[1])
		height = int(sys.argv[2])
	else:
		print("Usage : rosrun Package_name Program_name {rectangle_width} {rectangle_height}")
		sys.exit(1)

	print(" Requesting Area ")
	rect_area = send_data_to_server(width,height)

	print(f"The area of rectangle of width {width} and height {height} is {rect_area}")