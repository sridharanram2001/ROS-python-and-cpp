#!/usr/bin/env python


import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose
import math
import time
from std_srvs.srv import Empty


pi = 3.14159265359

x_dis = 0;
y_dis = 0;
Theta = 0;


def deg2rad(deg):
	return deg*(pi/180.0)

def getDistance(x0,y0,x1,y1):
	return math.sqrt((x1-x0)**2+(y1-y0)**2)


def Pose_callback(message):
	global x_dis,y_dis,Theta
	x_dis = message.x
	y_dis = message.y
	Theta = message.theta
	#print(x_dis," ",y_dis," ",Theta)


def Move(speed,distance,isForward):


	vel_msg = Twist()


	vel_msg.linear.x = speed
	vel_msg.linear.y = 0
	vel_msg.linear.z = 0

	vel_msg.angular.x = 0
	vel_msg.angular.y = 0
	vel_msg.angular.z = 0
	
	if not isForward:

		vel_msg.linear.x = -speed

	vel_pub = rospy.Publisher("/turtle1/cmd_vel",Twist,queue_size = 10)	

	t0 = rospy.Time.now().to_sec()
	
	current_distance = 0

	loop_rate = rospy.Rate(100)

	while(current_distance<distance):

		t1 = rospy.Time.now().to_sec()

		current_distance = 	speed*(t1-t0);

		vel_pub.publish(vel_msg)

		loop_rate.sleep()

	vel_msg.linear.x = 0
	vel_pub.publish(vel_msg)



def Rotate(ang_speed,relative_angle,isClockwise):
	
	vel_msg = Twist()

	vel_msg.linear.x = 0
	vel_msg.linear.y = 0
	vel_msg.linear.z = 0

	vel_msg.angular.x = 0
	vel_msg.angular.y = 0
	vel_msg.angular.z = ang_speed 

	vel_pub = rospy.Publisher("/turtle1/cmd_vel",Twist,queue_size = 10)	

	if isClockwise:
		vel_msg.angular.z = -ang_speed

	t0 = rospy.Time.now().to_sec()

	current_angle = 0

	loop_rate = rospy.Rate(10)

	while(current_angle<relative_angle):
		
		vel_pub.publish(vel_msg)		

		t1 = rospy.Time.now().to_sec()

		current_angle = ang_speed*(t1-t0)

		loop_rate.sleep()

	vel_msg.angular.z = 0
	vel_pub.publish(vel_msg)


def setDesiredOrientation(absolute_angle_rad):
	global Theta

	relative_angle_rad = absolute_angle_rad - Theta

	clockwise = True if relative_angle_rad<0 else False

	Rotate(deg2rad(30),relative_angle_rad,clockwise)

	pass

def Move_to(position,tolerance): 

	global x_dis,y_dis,Theta

	vel_msg = Twist()
	vel_pub = rospy.Publisher("/turtle1/cmd_vel",Twist,queue_size = 10)	

	vel_msg.linear.y = 0
	vel_msg.linear.z = 0

	vel_msg.angular.x = 0
	vel_msg.angular.y = 0

	loop_rate = rospy.Rate(100)

	while(getDistance(position.x,position.y,x_dis,y_dis)>tolerance):
		vel_msg.linear.x = 1*getDistance(position.x,position.y,x_dis,y_dis)
		vel_msg.angular.z = 4*(math.atan2((position.y - y_dis),(position.x-x_dis))-Theta)
		vel_pub.publish(vel_msg)
		loop_rate.sleep()
	
	vel_msg.linear.x = 0
	vel_msg.angular.z = 0 
	vel_pub.publish(vel_msg)



def gridClean():
	
	rospy.loginfo(" ----- Starting Grid Clean -----")
	
	global x_dis,y_dis

	loop_rate = rospy.Rate(0.5)
	position  = Pose()
	position.x = 1;
	position.y = 1;
	position.theta = 0;

	Move_to(position,0.01)
	loop_rate.sleep()
	setDesiredOrientation(0)
	loop_rate.sleep()

	Move(2.0, 9.0, True);
	loop_rate.sleep();
	Rotate(deg2rad(10), deg2rad(90), False);
	loop_rate.sleep();
	Move(2.0, 9.0, True);

	while(x_dis<11 and y_dis<11):


		Rotate(deg2rad(10), deg2rad(90), False);
		loop_rate.sleep();
		Move(2.0, 1.0, True);
		Rotate(deg2rad(10), deg2rad(90), False);
		loop_rate.sleep();
		Move(2.0, 9.0, True);

		Rotate(deg2rad(30), deg2rad(90), True);
		loop_rate.sleep();
		Move(2.0, 1.0, True);
		Rotate(deg2rad(30), deg2rad(90), True);
		loop_rate.sleep();
		Move(2.0, 9.0, True);

	rospy.loginfo(" ----- Finished Grid Clean -----")



def spiralClean():
	
	rospy.loginfo(" ----- Starting Spiral Clean -----")

	global x_dis,y_dis
	const_speed = 4;
	rk = 0.5;

	vel_msg = Twist()

	vel_msg.linear.y = 0;
	vel_msg.linear.z = 0;

	vel_msg.angular.x = 0;
	vel_msg.angular.y = 0;
	vel_msg.angular.z = const_speed;

	vel_pub = rospy.Publisher("/turtle1/cmd_vel",Twist,queue_size = 10)	

	loop_rate = rospy.Rate(1)
	
	while(x_dis<11 and y_dis<11):
		
		rk = rk+0.5

		vel_msg.linear.x = rk;

		vel_pub.publish(vel_msg)

		loop_rate.sleep()

	vel_msg.linear.x = 0;
	vel_msg.angular.z = 0;
	vel_pub.publish(vel_msg)

	rospy.loginfo(" ----- Finished Spiral Clean -----")


def reset_bot():
	clear_bg = rospy.ServiceProxy('reset', Empty)
	clear_bg()

if __name__ == "__main__":

	try:
		rospy.init_node("Clean_application",anonymous = True)
		
		Pose_subscriber = rospy.Subscriber("/turtle1/pose",Pose,Pose_callback)
		
		#Move(2.0,5.0,1)

		#Rotate(deg2rad(10.0),deg2rad(90.0),0)

		#setDesiredOrientation(deg2rad(90.0))

		'''pose_msg = Pose()
		pose_msg.x = 0.1
		pose_msg.y = 0.1
		Move_to(pose_msg,0.01)'''

		
		
		
		#gridClean()

		spiralClean()
		for i in range(5,0,-1):
			print("Resetting Bot in ",i," seconds")
			time.sleep(1)

		reset_bot()

		gridClean()
		

		rospy.spin()

	except rospy.ROSInterruptException:
		rospy.loginfo("Cleaning Interrupted")

