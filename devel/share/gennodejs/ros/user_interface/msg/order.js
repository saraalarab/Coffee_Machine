// Auto-generated. Do not edit!

// (in-package user_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class order {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cup_type = null;
      this.coffee_type = null;
      this.milk_level = null;
      this.sugar_level = null;
      this.payment = null;
    }
    else {
      if (initObj.hasOwnProperty('cup_type')) {
        this.cup_type = initObj.cup_type
      }
      else {
        this.cup_type = '';
      }
      if (initObj.hasOwnProperty('coffee_type')) {
        this.coffee_type = initObj.coffee_type
      }
      else {
        this.coffee_type = '';
      }
      if (initObj.hasOwnProperty('milk_level')) {
        this.milk_level = initObj.milk_level
      }
      else {
        this.milk_level = '';
      }
      if (initObj.hasOwnProperty('sugar_level')) {
        this.sugar_level = initObj.sugar_level
      }
      else {
        this.sugar_level = '';
      }
      if (initObj.hasOwnProperty('payment')) {
        this.payment = initObj.payment
      }
      else {
        this.payment = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type order
    // Serialize message field [cup_type]
    bufferOffset = _serializer.string(obj.cup_type, buffer, bufferOffset);
    // Serialize message field [coffee_type]
    bufferOffset = _serializer.string(obj.coffee_type, buffer, bufferOffset);
    // Serialize message field [milk_level]
    bufferOffset = _serializer.string(obj.milk_level, buffer, bufferOffset);
    // Serialize message field [sugar_level]
    bufferOffset = _serializer.string(obj.sugar_level, buffer, bufferOffset);
    // Serialize message field [payment]
    bufferOffset = _serializer.string(obj.payment, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type order
    let len;
    let data = new order(null);
    // Deserialize message field [cup_type]
    data.cup_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [coffee_type]
    data.coffee_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [milk_level]
    data.milk_level = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sugar_level]
    data.sugar_level = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [payment]
    data.payment = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.cup_type);
    length += _getByteLength(object.coffee_type);
    length += _getByteLength(object.milk_level);
    length += _getByteLength(object.sugar_level);
    length += _getByteLength(object.payment);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'user_interface/order';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '19f5dcce4001610f56c1d06d25f2822a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string cup_type
    string coffee_type
    string milk_level
    string sugar_level
    string payment
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new order(null);
    if (msg.cup_type !== undefined) {
      resolved.cup_type = msg.cup_type;
    }
    else {
      resolved.cup_type = ''
    }

    if (msg.coffee_type !== undefined) {
      resolved.coffee_type = msg.coffee_type;
    }
    else {
      resolved.coffee_type = ''
    }

    if (msg.milk_level !== undefined) {
      resolved.milk_level = msg.milk_level;
    }
    else {
      resolved.milk_level = ''
    }

    if (msg.sugar_level !== undefined) {
      resolved.sugar_level = msg.sugar_level;
    }
    else {
      resolved.sugar_level = ''
    }

    if (msg.payment !== undefined) {
      resolved.payment = msg.payment;
    }
    else {
      resolved.payment = ''
    }

    return resolved;
    }
};

module.exports = order;
