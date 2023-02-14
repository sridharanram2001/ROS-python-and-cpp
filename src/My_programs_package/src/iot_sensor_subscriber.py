#!/usr/bin/env python

import rospy
from My_programs_package.msg import IOT_sensor

def iot_sensor_callback(iot_sens_msg):
	rospy.loginfo("IOT data received : id - {} name - {} temperature - {} humidity - {}".format(iot_sens_msg.id,iot_sens_msg.name,iot_sens_msg.temperature,iot_sens_msg.humidity) )


rospy.init_node("iot_subscriber_node",anonymous = True)
rospy.Subscriber("iot_sensor_topic",IOT_sensor,iot_sensor_callback)

rospy.spin()	