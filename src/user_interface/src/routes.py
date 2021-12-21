#!/usr/bin/env python3

# Imports
# ------------------------------------------------------------------------------------------------------------------------------------------------------------------
# General Imports
import gevent
from gevent import monkey

# Flask Imports
from flask import Flask, request, jsonify, render_template, redirect, url_for, jsonify
from flask_socketio import SocketIO, emit
from jinja2 import Template


# ROS Imports
import rospy
from std_msgs.msg import String

from user_interface.msg import order





# Initializations Variables
# ------------------------------------------------------------------------------------------------------------------------------------------------------------------
app = Flask(__name__, template_folder='templates')


socketio = SocketIO(app, async_mode='gevent')

# gevent monkey Patch for asynchronous socket calls
monkey.patch_all()


def shutdownServer():
    socketio.stop()

def order_msg(cup_type,coffee_type,milk_level,sugar_level,payment):

    user_order = order()
    user_order.cup_type = str(cup_type)
    user_order.coffee_type = str(coffee_type)
    user_order.milk_level = str(milk_level)
    user_order.sugar_level = str(sugar_level)
    user_order.payment = str(payment)


    publish_order.publish(user_order)



@app.route("/")
def index():
    return render_template("index.html")

@socketio.on('cup_type')
def cup_type(data):
    rospy.set_param('coffee_machine/ui_action',1)
    order_msg(data,0,0,0,0)
    
@socketio.on('coffee_type')
def coffee_type(data):
    rospy.set_param('coffee_machine/ui_action',1)
   
    order_msg(0,data['coffee_type'],data['milk_level'],data['sugar_level'],0)
    

    
@socketio.on('pay')
def pay(data):
    rospy.set_param('coffee_machine/ui_action',1)
    order_msg(0,0,0,0,data)
    


if __name__=='__main__':
    rospy.init_node('UI_node')
    rospy.on_shutdown(shutdownServer)
    app.debug = True
    
    publish_order = rospy.Publisher('/orderTopic', order, queue_size=10)

    socketio.run(app,host="0.0.0.0",port=5000)

        