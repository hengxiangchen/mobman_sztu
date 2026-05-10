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

class Charge {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.chargeMode = null;
    }
    else {
      if (initObj.hasOwnProperty('chargeMode')) {
        this.chargeMode = initObj.chargeMode
      }
      else {
        this.chargeMode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Charge
    // Serialize message field [chargeMode]
    bufferOffset = _serializer.uint8(obj.chargeMode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Charge
    let len;
    let data = new Charge(null);
    // Deserialize message field [chargeMode]
    data.chargeMode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/Charge';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '446f3dbd75e1b0a9087aefb6619cc591';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 chargeMode
    
    #status
    uint8 manualMode = 0
    uint8 autoMode = 1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Charge(null);
    if (msg.chargeMode !== undefined) {
      resolved.chargeMode = msg.chargeMode;
    }
    else {
      resolved.chargeMode = 0
    }

    return resolved;
    }
};

// Constants for message
Charge.Constants = {
  MANUALMODE: 0,
  AUTOMODE: 1,
}

module.exports = Charge;
