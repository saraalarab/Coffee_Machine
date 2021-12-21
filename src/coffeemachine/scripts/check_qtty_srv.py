#!/usr/bin/env python

from coffeemachine.srv import Check_Qtty
import rospy

def check_qtty_handler(req):
    
    nb_of_cups = rospy.get_param('/coffee_machine/quantity/cups')
    qtty_milk =  rospy.get_param('/coffee_machine/quantity/milk')
    qtty_sugar =  rospy.get_param('/coffee_machine/quantity/sugar')

    # if 0, get qtty of cups
    if req.check_type == 0:
        return str(nb_of_cups)
    # if 1, get qtty of coffee
    elif req.check_type == 1:
        return str(rospy.get_param('/coffee_machine/quantity/coffee/'+req.coffee_type))
    # if 2, get qtty of milk
    elif req.check_type == 2:
        return str(qtty_milk)
    # if 3, get qtty of sugar
    elif req.check_type == 3:
        return str(qtty_sugar)
    
        
    
    

def check_qtty_server():
    rospy.init_node('check_quantity_server')
    checkservice = rospy.Service('check_quantity',Check_Qtty, check_qtty_handler)
    print("waiting for request from client ...")
    rospy.spin()
    
    
if __name__ == "__main__":
    check_qtty_server()
    