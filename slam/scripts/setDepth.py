#!/usr/bin/env python
import rospy
from Tkinter import *
from std_msgs.msg import Int32
def show_values():
	print (w1.get(), w2.get())
	
	

master = Tk()
w1 = Scale(master, from_=0, to=42)
w1.pack()
w2 = Scale(master, from_=0, to=200, orient=HORIZONTAL)
w2.pack()
Button(master, text='Show', command=show_values).pack()

rospy.init_node('setDepth')
print "node running"
#pub=rospy.Publisher('depth',Int32,queue_size=10)

rospy.spin()


mainloop()
