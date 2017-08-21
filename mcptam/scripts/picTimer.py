#!/usr/bin/env python
import math
import rospy
from std_msgs.msg import Int32
from std_msgs.msg import String

robotAlive=False

def talker():
    count=0
    rospy.init_node('picTimer')
    rate = rospy.Rate(0.6)
    pub=rospy.Publisher('clock',Int32,queue_size=10)
    while not rospy.is_shutdown():
        pub.publish(count)
        count+=1
        print count
        rate.sleep()


if __name__ == '__main__':
    try:
          talker()
    except rospy.ROSInterruptException:
        pass

