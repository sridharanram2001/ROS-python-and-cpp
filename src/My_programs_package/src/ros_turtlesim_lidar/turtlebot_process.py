#!/usr/bin/env python
import rospy
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist
import numpy as np


filter_data = []
twist_msg = Twist()
pub = rospy.Publisher("cmd_vel",Twist,queue_size = 10)

def scan_callback(data):
	global filter_data
	index = [0,1,2,3,4,-1,-2,-3,-4,-5]
	range_data = np.array(data.ranges,dtype=float)
	filter_data = range_data[index]
	move_forward(filter_data)
	pass

def move_forward(data):
	global filter_data,twist_msg,pub 
	vel = 0.4
	pub = rospy.Publisher("cmd_vel",Twist,queue_size = 10)

	twist_msg.linear.x = vel
	twist_msg.linear.y = 0
	twist_msg.linear.z = 0
	
	twist_msg.angular.x = 0
	twist_msg.angular.y = 0
	twist_msg.angular.z = 0
	
	#t0 = rospy.Time.now()
	#time_limit = rospy.Time(sec)
	pub.publish(twist_msg)
	filter_data = (data<0.6)
	print(filter_data)
	if type(filter_data) == np.ndarray and filter_data.any():
		twist_msg.linear.x = 0
		pub.publish(twist_msg)

	if twist_msg.linear.x == 0:
		rotate_bot(data)
		pub.publish(twist_msg)		

def rotate_bot(data):
	
	global filter_data,twist_msg,pub
	filter_data_1 = (data[0:5]<3)
	filter_data_2 = (data[5:10]<3)
	if type(filter_data_1) == np.ndarray and filter_data_1.any():
		twist_msg.angular.z = 1
	elif type(filter_data_2) == np.ndarray and filter_data_2.any():
		twist_msg.angular.z = -1
	else:
		pub.publish(twist_msg)


if __name__ == "__main__":
	rospy.init_node("turtlebot_laser_scan")
	sub = rospy.Subscriber("scan",LaserScan,scan_callback)
	move_forward(2) 
	rospy.spin()
