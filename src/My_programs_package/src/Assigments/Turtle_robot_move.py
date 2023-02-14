#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist 

def move_bot():
    
    speed_publisher = rospy.Publisher('/turtle1/cmd_vel',Twist,queue_size=10)
     
    rospy.init_node('move', anonymous=True)
    
    rate = rospy.Rate(1) 
    i = 0
    while not rospy.is_shutdown():
        
        twist = Twist()
        
        twist.linear.x = 1.0
        twist.linear.y = 0.0
        twist.linear.z = 0.0
        
        twist.angular.x = 0.0
        twist.angular.y = 0.0
        twist.angular.z = 1.0

        speed_publisher.publish(twist)
        rate.sleep()



if __name__ == '__main__':
    try:
        move_bot()
    except rospy.ROSInterruptException:
        pass