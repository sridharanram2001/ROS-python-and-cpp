#!/usr/bin/env python
import rospy
from std_msgs.msg import String

def chatter_callback(message):
	print(f"I heard {message.data} ")
	pass

def listener():
	rospy.init_node('Listener',anonymous=True)
	rospy.Subscriber('Chatter',String,chatter_callback)
	rospy.spin()
	pass


if __name__ == "__main__":
	listener()
