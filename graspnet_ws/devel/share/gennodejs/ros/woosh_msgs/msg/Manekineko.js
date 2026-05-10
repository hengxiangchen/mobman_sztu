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

class Manekineko {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.LeftMode = null;
      this.LeftRadian = null;
      this.LeftAngularVelocity = null;
      this.RightMode = null;
      this.RightRadian = null;
      this.RightAngularVelocity = null;
    }
    else {
      if (initObj.hasOwnProperty('LeftMode')) {
        this.LeftMode = initObj.LeftMode
      }
      else {
        this.LeftMode = 0;
      }
      if (initObj.hasOwnProperty('LeftRadian')) {
        this.LeftRadian = initObj.LeftRadian
      }
      else {
        this.LeftRadian = 0.0;
      }
      if (initObj.hasOwnProperty('LeftAngularVelocity')) {
        this.LeftAngularVelocity = initObj.LeftAngularVelocity
      }
      else {
        this.LeftAngularVelocity = 0.0;
      }
      if (initObj.hasOwnProperty('RightMode')) {
        this.RightMode = initObj.RightMode
      }
      else {
        this.RightMode = 0;
      }
      if (initObj.hasOwnProperty('RightRadian')) {
        this.RightRadian = initObj.RightRadian
      }
      else {
        this.RightRadian = 0.0;
      }
      if (initObj.hasOwnProperty('RightAngularVelocity')) {
        this.RightAngularVelocity = initObj.RightAngularVelocity
      }
      else {
        this.RightAngularVelocity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Manekineko
    // Serialize message field [LeftMode]
    bufferOffset = _serializer.uint8(obj.LeftMode, buffer, bufferOffset);
    // Serialize message field [LeftRadian]
    bufferOffset = _serializer.float32(obj.LeftRadian, buffer, bufferOffset);
    // Serialize message field [LeftAngularVelocity]
    bufferOffset = _serializer.float32(obj.LeftAngularVelocity, buffer, bufferOffset);
    // Serialize message field [RightMode]
    bufferOffset = _serializer.uint8(obj.RightMode, buffer, bufferOffset);
    // Serialize message field [RightRadian]
    bufferOffset = _serializer.float32(obj.RightRadian, buffer, bufferOffset);
    // Serialize message field [RightAngularVelocity]
    bufferOffset = _serializer.float32(obj.RightAngularVelocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Manekineko
    let len;
    let data = new Manekineko(null);
    // Deserialize message field [LeftMode]
    data.LeftMode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LeftRadian]
    data.LeftRadian = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [LeftAngularVelocity]
    data.LeftAngularVelocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [RightMode]
    data.RightMode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RightRadian]
    data.RightRadian = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [RightAngularVelocity]
    data.RightAngularVelocity = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/Manekineko';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e93473ba02e79c4c770856e2b34478bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LeftMode
    float32 LeftRadian #unit: rad
    float32 LeftAngularVelocity #unit: rad/s
    uint8 RightMode
    float32 RightRadian #unit: rad
    float32 RightAngularVelocity #unit: rad/s
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Manekineko(null);
    if (msg.LeftMode !== undefined) {
      resolved.LeftMode = msg.LeftMode;
    }
    else {
      resolved.LeftMode = 0
    }

    if (msg.LeftRadian !== undefined) {
      resolved.LeftRadian = msg.LeftRadian;
    }
    else {
      resolved.LeftRadian = 0.0
    }

    if (msg.LeftAngularVelocity !== undefined) {
      resolved.LeftAngularVelocity = msg.LeftAngularVelocity;
    }
    else {
      resolved.LeftAngularVelocity = 0.0
    }

    if (msg.RightMode !== undefined) {
      resolved.RightMode = msg.RightMode;
    }
    else {
      resolved.RightMode = 0
    }

    if (msg.RightRadian !== undefined) {
      resolved.RightRadian = msg.RightRadian;
    }
    else {
      resolved.RightRadian = 0.0
    }

    if (msg.RightAngularVelocity !== undefined) {
      resolved.RightAngularVelocity = msg.RightAngularVelocity;
    }
    else {
      resolved.RightAngularVelocity = 0.0
    }

    return resolved;
    }
};

module.exports = Manekineko;
