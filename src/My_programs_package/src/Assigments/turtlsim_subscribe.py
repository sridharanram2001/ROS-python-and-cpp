#!/usr/bin/env python

import rospy
from turtlesim.msg import Pose

def poseCallback(pose_message):
	print("Pose callback")
	print("x = ",pose_message.x)
	print("y = ",pose_message.y)
	print("Theta_yaw = ",pose_message.theta)
	pass

if __name__ == "__main__":
	
	try:
		rospy.init_node("turtlesim_motion_pose",anonymous=True)
		rospy.Subscriber("/turtle1/pose",Pose,poseCallback)
		rospy.spin()

	except rospy.ROSInterruptException:
		rospy.loginfo("node terminated.")




