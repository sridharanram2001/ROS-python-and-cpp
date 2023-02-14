#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose
import math
import time
from std_srvs.srv import Empty

x_dis = 0
y_dis = 0
theta_ang = 0
pi = 3.1415926535897

def Home_pos():
	Rotate(10.0,180,"anticlockwise")
	Move(1.0,x_dis,"forward")
	Rotate(10.0,90,"anticlockwise")
	Move(1.0,y_dis,"forward")
	Rotate(10.0,90,"anticlockwise")



def Move_to(x_coord,y_coord):

	mag = math.sqrt(x_coord**2 + y_coord**2)
	dir_cos = (x_coord/mag)
	dir_cos = math.acos(dir_cos)
	dir_cos = math.degrees(dir_cos)
	print(dir_cos)
	Rotate(10.0,dir_cos,"anticlockwise")
	Move(1.0,mag,"forward")


def Move(speed,distance,dir):
	vel_msg = Twist()
	
	x0 = x_dis
	y0 = y_dis
	

	if dir == "forward":
		vel_msg.linear.x = speed

	elif dir == "reverse":
		vel_msg.linear.x = -speed



	vel_pub = rospy.Publisher("/turtle1/cmd_vel",Twist,queue_size = 10)
	

	t0 = rospy.Time.now().to_sec()

	current_distance = 0
	
	while current_distance < distance: 	
		
		vel_pub.publish(vel_msg)

		t1=rospy.Time.now().to_sec()

		current_distance= speed*(t1-t0)

		#print(current_distance)

	vel_msg.linear.x = 0
	vel_msg.linear.y = 0
	vel_pub.publish(vel_msg)	
		


def Rotate(ang_speed,angle,rot_dir):
	rot_vel_msg = Twist()

	relative_angle = angle*(pi/180) 
	angular_speed = ang_speed*(pi/180)
	
	loop_rate = rospy.Rate(3)
	vel_pub = rospy.Publisher("/turtle1/cmd_vel",Twist,queue_size = 10)


	if rot_dir == "clockwise":
		rot_vel_msg.angular.z = -angular_speed
	
	elif rot_dir == "anticlockwise":
		rot_vel_msg.angular.z = angular_speed

	t0 = rospy.Time.now().to_sec()
	current_angle = 0
	 
	while(current_angle < relative_angle):
		vel_pub.publish(rot_vel_msg)
		loop_rate.sleep()
		t1 = rospy.Time.now().to_sec()
		current_angle = angular_speed*(t1-t0)
		

	rot_vel_msg.angular.z = 0
	vel_pub.publish(rot_vel_msg)
	rospy.loginfo("turned")

def circular_spiral_clean(speed,increment):
	cir_vel_msg = Twist()
	cir_vel_pub = rospy.Publisher("/turtle1/cmd_vel",Twist,queue_size = 10)
	while True:
		cir_vel_msg.linear.x = speed
		cir_vel_msg.angular.z = speed
		cir_vel_pub.publish(cir_vel_msg)
		time.sleep(1)
		Move(speed,increment,"forward")
		
		if x_dis>11.08 or y_dis>11.08:
			break 






def rectangular_spiral_clean(min_dis,increment):
	while True:
		if shape_type == "rectangle":
			Move(1.0,min_dis,"forward")
			Rotate(10.0,90,"anticlockwise")
			Move(1.0,min_dis,"forward")
			Rotate(10.0,90,"anticlockwise")
			min_dis = min_dis + increment
			Move(1.0,min_dis,"forward")
			Rotate(10.0,90,"anticlockwise")
			Move(1.0,min_dis,"forward")
			min_dis = min_dis + increment
			Rotate(10.0,90,"anticlockwise")
			if x_dis>11.08 or y_dis>11.08:
				break
		





 
def pose_callback(pose_msg):
	global x_dis,y_dis,theta_ang
	x_dis = pose_msg.x
	y_dis = pose_msg.y
	theta_ang = math.degrees(pose_msg.theta)
	if (theta_ang < 0):
		theta_ang = 360 + theta_ang  	 
	pass
	print(x_dis,y_dis,theta_ang)


def reset_bot():
	rospy.wait_for_service('reset')
	reset_turtle = rospy.ServiceProxy('reset',Empty)
	reset_turtle()


if __name__ == "__main__":
	
	try:
		rospy.init_node("Clean_command",anonymous = True)

		pose_sub = rospy.Subscriber("/turtle1/pose",Pose,pose_callback)

		time.sleep(2)

		#Rotate(0.2,210,"clockwise")
		#Home_pos()
		
		
		#rectangular_spiral_clean(0.5,1.0)
		circular_spiral_clean(5,1)

		#11.1
		rospy.spin()

	except rospy.ROSInterruptException:
		rospy.loginfo("Node Terminated")
