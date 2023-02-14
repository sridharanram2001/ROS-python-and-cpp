#!/usr/bin/env python
import rospy
from sensor_msgs.msg import Image
import numpy as np
import cv2
from cv_bridge import CvBridge,CvBridgeError

if __name__ == "__main__":
	
	rospy.init_node("tennis_ball_vid_pub",anonymous=True)
	vid_pub = rospy.Publisher("sensor_msgs/Image",Image,queue_size=10)
	cap = cv2.VideoCapture("/home/ramprakash/My_workspace/src/ros_essentials_cpp/src/topic03_perception/video/tennis-ball-video.mp4")
	bridge = CvBridge()
	while True:

		ret,frame = cap.read()
		#cv2.imshow("Frame",frame)
		
		try:
			ros_image = bridge.cv2_to_imgmsg(frame,"bgr8")
		except CvBridgeError as e:
			print(e)

		vid_pub.publish(ros_image)

		if cv2.waitKey(25) & 0xFF == ord('q'):
			break

	cap.release()
	cv2.destroyAllWindows()

	