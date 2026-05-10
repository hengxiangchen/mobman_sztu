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

class LED {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.submodule = null;
      this.urgency = null;
      this.abnormal = null;
      this.normal = null;
      this.color = null;
    }
    else {
      if (initObj.hasOwnProperty('submodule')) {
        this.submodule = initObj.submodule
      }
      else {
        this.submodule = 0;
      }
      if (initObj.hasOwnProperty('urgency')) {
        this.urgency = initObj.urgency
      }
      else {
        this.urgency = 0;
      }
      if (initObj.hasOwnProperty('abnormal')) {
        this.abnormal = initObj.abnormal
      }
      else {
        this.abnormal = 0;
      }
      if (initObj.hasOwnProperty('normal')) {
        this.normal = initObj.normal
      }
      else {
        this.normal = 0;
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LED
    // Serialize message field [submodule]
    bufferOffset = _serializer.uint8(obj.submodule, buffer, bufferOffset);
    // Serialize message field [urgency]
    bufferOffset = _serializer.uint8(obj.urgency, buffer, bufferOffset);
    // Serialize message field [abnormal]
    bufferOffset = _serializer.uint8(obj.abnormal, buffer, bufferOffset);
    // Serialize message field [normal]
    bufferOffset = _serializer.uint8(obj.normal, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = _serializer.uint32(obj.color, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LED
    let len;
    let data = new LED(null);
    // Deserialize message field [submodule]
    data.submodule = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [urgency]
    data.urgency = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [abnormal]
    data.abnormal = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [normal]
    data.normal = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/LED';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3751062b64f080928398f47d67ca9edb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 submodule
    uint8 urgency
    uint8 abnormal
    uint8 normal
    uint32 color
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LED(null);
    if (msg.submodule !== undefined) {
      resolved.submodule = msg.submodule;
    }
    else {
      resolved.submodule = 0
    }

    if (msg.urgency !== undefined) {
      resolved.urgency = msg.urgency;
    }
    else {
      resolved.urgency = 0
    }

    if (msg.abnormal !== undefined) {
      resolved.abnormal = msg.abnormal;
    }
    else {
      resolved.abnormal = 0
    }

    if (msg.normal !== undefined) {
      resolved.normal = msg.normal;
    }
    else {
      resolved.normal = 0
    }

    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = 0
    }

    return resolved;
    }
};

module.exports = LED;
