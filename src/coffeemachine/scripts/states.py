#!/usr/bin/env python3

from os import abort
import rospy
from rospy.timer import sleep
from std_msgs.msg import String

import rospy
from std_msgs.msg import String
import smach
import yaml
import time

from coffeemachine.srv import Check_Qtty

import os
import sys

file_dir = os.path.dirname(__file__)
sys.path.append(file_dir)



def get_qtty(check_type,coffee_type):
    rospy.wait_for_service('check_quantity')
    
    quantity_service = rospy.ServiceProxy('check_quantity', Check_Qtty)

    res = quantity_service(check_type,coffee_type)
    return int(res.quantity)

class waitforUser(smach.State):

    def __init__(self):
        smach.State.__init__(self, outcomes=['update'])
    

    def execute(self, userdata):
        rospy.loginfo('Waiting for Button...')
        time.sleep(1)
        rospy.set_param('coffee_machine/ui_action', 0)

        while rospy.get_param('coffee_machine/ui_action') == 0:
            rospy.sleep(1)
        return 'update'


class Start(smach.State):

    def __init__(self):
        smach.State.__init__(self,outcomes=['machine_cup','my_cup'],output_keys=['cup_type_out'])
    
    def execute(self, userdata):
        cup_choice = rospy.get_param('/coffee_machine/user/cup_type')
        
        if(cup_choice =='my_cup'):
            rospy.loginfo("User chose to use his own cup")
            time.sleep(1)
            userdata.cup_type_out = 'my_cup'
            return 'my_cup'
        else:
            rospy.loginfo("User chose to get a machine cup")
            time.sleep(1)
            userdata.cup_type_out = 'machine_cup'
            return 'machine_cup'
    
class CheckCups(smach.State):
    def __init__(self):
        smach.State.__init__(self,outcomes=['succeeded','aborted'])
    
    def execute(self, userdata):
        nb_of_cups = get_qtty(0,"")
        if nb_of_cups>0:
            rospy.loginfo("There are enough cups to continue")
            time.sleep(1)
            return 'succeeded'
        else:
            rospy.loginfo("No more cups! Misson Aborted")
            time.sleep(1)
            return 'aborted'

class Coffee_Choice(smach.State):
    def __init__(self):
        smach.State.__init__(self,outcomes=['succeeded','aborted'],input_keys=['coffee_type_out','milk_out','sugar_out'],output_keys=['coffee_type_out','milk_out','sugar_out'])
    
    def execute(self, userdata):
        user_choice = rospy.get_param('/coffee_machine/user/coffee_type')
        extra_milk = rospy.get_param('/coffee_machine/user/milk_level')
        extra_sugar = rospy.get_param('/coffee_machine/user/sugar_level')
        
        qtty_coffee = get_qtty(1,user_choice)
        qtty_milk = get_qtty(2,"")
        qtty_sugar = get_qtty(3,"")
        
        if(qtty_coffee < 1 or qtty_sugar <1 or qtty_milk<1):
            rospy.loginfo('Not enough ingredients to make the coffee! Mission Aborted')
            time.sleep(1)
            return 'aborted'
        
        else:
            rospy.set_param('/coffee_machine/quantity/coffee/'+user_choice,int(rospy.get_param('/coffee_machine/quantity/coffee/'+user_choice))-1)

  
            userdata.coffee_type_out = str(user_choice)
            userdata.milk_out = str(extra_milk)
            userdata.sugar_out = str(extra_sugar)
            
            if(extra_milk == 'high'):
                rospy.set_param('/coffee_machine/quantity/milk',int(rospy.get_param('/coffee_machine/quantity/milk'))-2)
            else:
                rospy.set_param('/coffee_machine/quantity/milk',int(rospy.get_param('/coffee_machine/quantity/milk'))-1)
                
            if(extra_sugar == 'high'):
                rospy.set_param('/coffee_machine/quantity/sugar',int(rospy.get_param('/coffee_machine/quantity/sugar'))-2)
            else:
                rospy.set_param('/coffee_machine/quantity/sugar',int(rospy.get_param('/coffee_machine/quantity/sugar'))-1)

            
            rospy.loginfo('User successfully chose '+ str(userdata.coffee_type_out))
            time.sleep(1)
            rospy.loginfo('Milk Level '+str(userdata.milk_out) )
            time.sleep(1)
            rospy.loginfo('Sugar Level '+ str(userdata.sugar_out))
            time.sleep(1)
                
            return 'succeeded'
        
        
class Pay(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['succeeded','aborted'])
    
    def execute(self, userdata):
        transaction_complete = rospy.get_param('/coffee_machine/user/payment')
        if(transaction_complete == 'successful'):
            rospy.loginfo('Payment Successful')
            time.sleep(1)
            return 'succeeded'
        else:
            rospy.loginfo('Payment Aborted')
            time.sleep(1)
            return 'aborted'
    
class Rotate(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['succeeded'], input_keys=['cup_type_in'])
    def execute(self, userdata):
        if(userdata.cup_type_in == 'machine_cup'):
            rospy.loginfo("Rotating Cup")
            rospy.set_param('/coffee_machine/quantity/cups',rospy.get_param('/coffee_machine/quantity/cups')-1)
            time.sleep(1)
        else:
            rospy.loginfo('No need to rotate')
            time.sleep(1)
        
        return 'succeeded'

class Add_Ingredients(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['succeeded'],input_keys=['ingredient_in','counter','milk_in','sugar_in'],output_keys=['ingredient_out','counter'])
    
    def execute(self, userdata):
        userdata.counter = userdata.counter + 1

        if(userdata.counter==1):
            rospy.loginfo("Adding %s ...",userdata.ingredient_in)
            time.sleep(1)
            userdata.ingredient_out = 'Milk'
        elif(userdata.counter==2):
            rospy.loginfo("Adding %s  %s ...",userdata.milk_in,userdata.ingredient_in)
            time.sleep(1)
            userdata.ingredient_out = 'Sugar'
        elif(userdata.counter==3):
            rospy.loginfo("Adding %s  %s ...",userdata.sugar_in,userdata.ingredient_in)
            time.sleep(1)

            
        time.sleep(2)
        return 'succeeded'

class Done(smach.State):
    def __init__(self):
        smach.State.__init__(self,outcomes=['succeeded'])
    def execute(self, userdata):
        rospy.loginfo("Thank you for purchasing! ")
        time.sleep(1)
        return 'succeeded'
    


        



            
        
        
            
        

