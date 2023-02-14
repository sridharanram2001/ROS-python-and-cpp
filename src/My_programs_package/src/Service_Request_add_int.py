#!/usr/bin/env python

from My_programs_package.srv import addTwoInt
from My_programs_package.srv import addTwoIntRequest
from My_programs_package.srv import addTwoIntResponse
import time
import rospy


def handle_int(req):
	print(f"Returning {req.a} + {req.b} = {req.a + req.b}")
	time.sleep(5)
	sum_response = addTwoIntResponse(req.a+req.b) 
	return sum_response

def add_int_server():
	rospy.init_node("adding_server")
	s = rospy.Service("add_ints_service",addTwoInt,handle_int)
	print("Ready to add two ints ")
	rospy.spin()

if __name__ == "__main__":
	add_int_server()
