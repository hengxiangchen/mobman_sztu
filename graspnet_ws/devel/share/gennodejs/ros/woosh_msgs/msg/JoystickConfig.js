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

class JoystickConfig {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.maxLinear = null;
      this.maxAngular = null;
    }
    else {
      if (initObj.hasOwnProperty('maxLinear')) {
        this.maxLinear = initObj.maxLinear
      }
      else {
        this.maxLinear = 0.0;
      }
      if (initObj.hasOwnProperty('maxAngular')) {
        this.maxAngular = initObj.maxAngular
      }
      else {
        this.maxAngular = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JoystickConfig
    // Serialize message field [maxLinear]
    bufferOffset = _serializer.float32(obj.maxLinear, buffer, bufferOffset);
    // Serialize message field [maxAngular]
    bufferOffset = _serializer.float32(obj.maxAngular, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JoystickConfig
    let len;
    let data = new JoystickConfig(null);
    // Deserialize message field [maxLinear]
    data.maxLinear = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [maxAngular]
    data.maxAngular = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/JoystickConfig';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7b4bec2a79f3f32272b58c3fa7b2518a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 maxLinear
    float32 maxAngular
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JoystickConfig(null);
    if (msg.maxLinear !== undefined) {
      resolved.maxLinear = msg.maxLinear;
    }
    else {
      resolved.maxLinear = 0.0
    }

    if (msg.maxAngular !== undefined) {
      resolved.maxAngular = msg.maxAngular;
    }
    else {
      resolved.maxAngular = 0.0
    }

    return resolved;
    }
};

module.exports = JoystickConfig;
