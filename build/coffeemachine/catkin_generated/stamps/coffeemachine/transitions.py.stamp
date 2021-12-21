#!/usr/bin/env python3

import os
import sys

file_dir = os.path.dirname(__file__)
sys.path.append(file_dir)

from states import *
import rospy
import smach
import yaml
from user_interface.msg import order




def subscriber_cb(response):
    cup_type = response.cup_type
    coffee_type = response.coffee_type
    milk_level = response.milk_level
    sugar_level = response.sugar_level
    payment = response.payment

    if(cup_type!= 0):
        rospy.set_param('/coffee_machine/user/cup_type',cup_type)
    if(coffee_type!= 0):
            rospy.set_param('/coffee_machine/user/coffee_type',coffee_type)
    if(milk_level!= 0):
        rospy.set_param('/coffee_machine/user/milk_level',milk_level)
    if(sugar_level!= 0):
        rospy.set_param('/coffee_machine/user/sugar_level',sugar_level)
    if(payment!= 0):
        rospy.set_param('/coffee_machine/user/payment',payment)
        
 

def main():
    rospy.init_node('coffee_machine')
    rospy.Subscriber("/orderTopic", order, subscriber_cb)


    sm_top = smach.StateMachine(outcomes=['order_succeeded','order_aborted'])
    
    sm_top.userdata.coffee_type="" 
    sm_top.userdata.cup_type=""    
    sm_top.userdata.milk=""
    sm_top.userdata.sugar=""
    
    with sm_top:
        smach.StateMachine.add("WaitforUser1",waitforUser(),transitions={'update':'Start'}) 
        smach.StateMachine.add("Start", Start(),transitions={'machine_cup':'CheckCups','my_cup':'WaitforUser2'},remapping={'cup_type_out':'cup_type'})
        smach.StateMachine.add('CheckCups',CheckCups(),transitions={'succeeded':'WaitforUser2','aborted':'order_aborted'})
        smach.StateMachine.add('WaitforUser2',waitforUser(),transitions={'update':'Coffee_Choice'}) 
        smach.StateMachine.add('Coffee_Choice', Coffee_Choice(),transitions={'succeeded':'WaitforUser3','aborted':'order_aborted'},remapping={'coffee_type_out':'coffee_type','milk_out':'milk','sugar_out':'sugar'})
        smach.StateMachine.add('WaitforUser3',waitforUser(),transitions={'update':'Pay'}) 
        smach.StateMachine.add('Pay',Pay(),transitions={'succeeded':'Rotate','aborted':'order_aborted'})
        smach.StateMachine.add('Rotate',Rotate(),transitions={'succeeded':'Add_Ingrediants'},remapping={'cup_type_in':'cup_type'})
        
        sm_sub = smach.StateMachine(outcomes=['succeeded']) 

        sm_sub.userdata = sm_top.userdata
        sm_sub.userdata.counter=0

        with sm_sub:
            smach.StateMachine.add("Add_Coffee", Add_Ingredients(),transitions={'succeeded':'Add_Milk'},remapping={'ingredient_in':'coffee_type','ingredient_out':'ingredient1','counter':'counter'})
            smach.StateMachine.add("Add_Milk",Add_Ingredients(),transitions={'succeeded':'Add_Sugar'},remapping={'ingredient_in':'ingredient1','counter':'counter','ingredient_out':'ingredient2','milk_in':'milk','sugar_in':'sugar'})
            smach.StateMachine.add("Add_Sugar",Add_Ingredients(),transitions={'succeeded':'succeeded'},remapping={'ingredient_in':'ingredient2','counter':'counter','milk_in':'milk','sugar_in':'sugar'})
            
        smach.StateMachine.add('Add_Ingrediants',sm_sub,transitions={'succeeded':'Done'})
        smach.StateMachine.add('Done',Done(),transitions={'succeeded':'WaitforUser1'})
        
    sm_top.execute()
    
if __name__=='__main__':
    main()