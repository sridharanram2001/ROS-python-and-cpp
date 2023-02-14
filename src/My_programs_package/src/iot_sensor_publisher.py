#!/usr/bin/env python

import rospy
from My_programs_package.msg import IOT_sensor
import random


rospy.init_node("IOT_pub_node",anonymous = True)

pub = rospy.Publisher('iot_sensor_topic',IOT_sensor,queue_size = 10)

rate = rospy.Rate(1)

i = 0

while not rospy.is_shutdown():
	iot_sensor = IOT_sensor()
	iot_sensor.id = 1
	iot_sensor.name = "IOT_parking_1"
	iot_sensor.temperature = 24.33 + (random.random()*2)
	iot_sensor.humidity = 33.43 + (random.random()*2)
	rospy.loginfo("I publish : ")
	rospy.loginfo(iot_sensor)
	pub.publish(iot_sensor)
	rate.sleep()
	i = i+1