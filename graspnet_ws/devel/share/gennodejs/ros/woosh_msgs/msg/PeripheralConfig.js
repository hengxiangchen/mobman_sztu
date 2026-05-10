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

class PeripheralConfig {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.deviceType = null;
      this.deviceNum = null;
      this.setNum = null;
      this.config = null;
    }
    else {
      if (initObj.hasOwnProperty('deviceType')) {
        this.deviceType = initObj.deviceType
      }
      else {
        this.deviceType = 0;
      }
      if (initObj.hasOwnProperty('deviceNum')) {
        this.deviceNum = initObj.deviceNum
      }
      else {
        this.deviceNum = 0;
      }
      if (initObj.hasOwnProperty('setNum')) {
        this.setNum = initObj.setNum
      }
      else {
        this.setNum = 0;
      }
      if (initObj.hasOwnProperty('config')) {
        this.config = initObj.config
      }
      else {
        this.config = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PeripheralConfig
    // Serialize message field [deviceType]
    bufferOffset = _serializer.uint8(obj.deviceType, buffer, bufferOffset);
    // Serialize message field [deviceNum]
    bufferOffset = _serializer.uint16(obj.deviceNum, buffer, bufferOffset);
    // Serialize message field [setNum]
    bufferOffset = _serializer.uint16(obj.setNum, buffer, bufferOffset);
    // Serialize message field [config]
    bufferOffset = _arraySerializer.uint8(obj.config, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PeripheralConfig
    let len;
    let data = new PeripheralConfig(null);
    // Deserialize message field [deviceType]
    data.deviceType = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [deviceNum]
    data.deviceNum = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [setNum]
    data.setNum = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [config]
    data.config = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.config.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/PeripheralConfig';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '30e9701f5cb23ca374d0e89621584272';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 deviceType
    uint16 deviceNum
    uint16 setNum
    uint8[] config
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PeripheralConfig(null);
    if (msg.deviceType !== undefined) {
      resolved.deviceType = msg.deviceType;
    }
    else {
      resolved.deviceType = 0
    }

    if (msg.deviceNum !== undefined) {
      resolved.deviceNum = msg.deviceNum;
    }
    else {
      resolved.deviceNum = 0
    }

    if (msg.setNum !== undefined) {
      resolved.setNum = msg.setNum;
    }
    else {
      resolved.setNum = 0
    }

    if (msg.config !== undefined) {
      resolved.config = msg.config;
    }
    else {
      resolved.config = []
    }

    return resolved;
    }
};

module.exports = PeripheralConfig;
