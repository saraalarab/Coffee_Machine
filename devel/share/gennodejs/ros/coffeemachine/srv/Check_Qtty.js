// Auto-generated. Do not edit!

// (in-package coffeemachine.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class Check_QttyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.check_type = null;
      this.coffee_type = null;
    }
    else {
      if (initObj.hasOwnProperty('check_type')) {
        this.check_type = initObj.check_type
      }
      else {
        this.check_type = 0;
      }
      if (initObj.hasOwnProperty('coffee_type')) {
        this.coffee_type = initObj.coffee_type
      }
      else {
        this.coffee_type = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Check_QttyRequest
    // Serialize message field [check_type]
    bufferOffset = _serializer.int32(obj.check_type, buffer, bufferOffset);
    // Serialize message field [coffee_type]
    bufferOffset = _serializer.string(obj.coffee_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Check_QttyRequest
    let len;
    let data = new Check_QttyRequest(null);
    // Deserialize message field [check_type]
    data.check_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [coffee_type]
    data.coffee_type = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.coffee_type);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'coffeemachine/Check_QttyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '597c14e188b8ce7d400f2cf2e78e2d96';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 check_type
    string coffee_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Check_QttyRequest(null);
    if (msg.check_type !== undefined) {
      resolved.check_type = msg.check_type;
    }
    else {
      resolved.check_type = 0
    }

    if (msg.coffee_type !== undefined) {
      resolved.coffee_type = msg.coffee_type;
    }
    else {
      resolved.coffee_type = ''
    }

    return resolved;
    }
};

class Check_QttyResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.quantity = null;
    }
    else {
      if (initObj.hasOwnProperty('quantity')) {
        this.quantity = initObj.quantity
      }
      else {
        this.quantity = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Check_QttyResponse
    // Serialize message field [quantity]
    bufferOffset = _serializer.string(obj.quantity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Check_QttyResponse
    let len;
    let data = new Check_QttyResponse(null);
    // Deserialize message field [quantity]
    data.quantity = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.quantity);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'coffeemachine/Check_QttyResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ba18e1feb537f78454848d17fe57641';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string quantity
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Check_QttyResponse(null);
    if (msg.quantity !== undefined) {
      resolved.quantity = msg.quantity;
    }
    else {
      resolved.quantity = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: Check_QttyRequest,
  Response: Check_QttyResponse,
  md5sum() { return 'c0572ee26a5f83fa67fcff4e56c1ca00'; },
  datatype() { return 'coffeemachine/Check_Qtty'; }
};
