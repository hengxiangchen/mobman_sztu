// Auto-generated. Do not edit!

// (in-package woosh_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WheelConfig {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wheelPerimeter = null;
      this.wheelDistant = null;
    }
    else {
      if (initObj.hasOwnProperty('wheelPerimeter')) {
        this.wheelPerimeter = initObj.wheelPerimeter
      }
      else {
        this.wheelPerimeter = 0.0;
      }
      if (initObj.hasOwnProperty('wheelDistant')) {
        this.wheelDistant = initObj.wheelDistant
      }
      else {
        this.wheelDistant = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelConfig
    // Serialize message field [wheelPerimeter]
    bufferOffset = _serializer.float32(obj.wheelPerimeter, buffer, bufferOffset);
    // Serialize message field [wheelDistant]
    bufferOffset = _serializer.float32(obj.wheelDistant, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelConfig
    let len;
    let data = new WheelConfig(null);
    // Deserialize message field [wheelPerimeter]
    data.wheelPerimeter = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheelDistant]
    data.wheelDistant = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/WheelConfig';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f53031119c87c0c3b85e13970f5569ba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 wheelPerimeter
    float32 wheelDistant
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelConfig(null);
    if (msg.wheelPerimeter !== undefined) {
      resolved.wheelPerimeter = msg.wheelPerimeter;
    }
    else {
      resolved.wheelPerimeter = 0.0
    }

    if (msg.wheelDistant !== undefined) {
      resolved.wheelDistant = msg.wheelDistant;
    }
    else {
      resolved.wheelDistant = 0.0
    }

    return resolved;
    }
};

module.exports = WheelConfig;
