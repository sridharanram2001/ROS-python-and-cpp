#!/usr/bin/env python

from My_programs_package.srv import addTwoInt
from My_programs_package.srv import addTwoIntRequest
from My_programs_package.srv import addTwoIntResponse
import sys
import rospy


def add_ints_client(x,y):
	rospy.wait_for_service("add_ints_service")

	try:
		add_ints = rospy.ServiceProxy("add_ints_service",addTwoInt)
		resp1 = add_ints(x,y)
		return resp1.sum

	except rospy.ServiceException(e):
		print("Service call failed : ",e)
		
if __name__ == "__main__":
	
	if len(sys.argv) == 3:
		x = int(sys.argv[1])
		y = int(sys.argv[2])

	else:
		print(f"{sys.argv[0]}[x y]")
		sys.exit(1)

	print(f"Requesting {x}+{y} ")
	s = add_ints_client(x,y)
	print(f"{x} + {y} = {s}")
