#!/usr/bin/env python

import rospy
from turtlesim.msg import Pose
from geometry_msgs.msg import Twist
import time
import math


Theta = 0

def pose_callback(message):
	global Theta
	Theta = math.degrees(message.theta)

	if (Theta < 0):
		Theta = 360 + Theta  
		
	#print("X dis : ",message.x,"Y dis : ",message.y,"Theta : ",Theta)
	pass



def Rotate(speed,angle):
	global Theta
	Theta_mov = 0
	rate = rospy.Rate(10)
	rot_vel_pub  = rospy.Publisher("/turtle1/cmd_vel",Twist,queue_size = 10)
	#angle = math.radians(angle) 
	twist = Twist()
	twist.angular.z = angle
	
	Theta_prev = 0
	while True:
		twist = Twist()
		rot_vel_pub.publish(twist)
		twist.angular.z = speed
		rot_vel_pub.publish(twist)
		Theta_curr = round(Theta)
		
		rate.sleep()

		if Theta_prev != Theta_curr:
			Theta_mov = Theta_mov + 1
			Theta_prev = Theta_curr

		print(Theta_mov)
		if angle < Theta_mov  :
			twist.angular.z = 0.0
			rot_vel_pub.publish(twist)
			rospy.loginfo("reached")
			break





if __name__ == "__main__":
	
	try:
		rospy.init_node("Turtle_Rotate",anonymous =True)
		rot_pose_sub = rospy.Subscriber("/turtle1/pose",Pose,pose_callback)
		time.sleep(2)
		Rotate(0.2,30)

	except rospy.ROSInterruptException:
		rospy.loginfo("Node terminated")
