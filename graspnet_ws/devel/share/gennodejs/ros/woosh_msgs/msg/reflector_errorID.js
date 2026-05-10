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

class reflector_errorID {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ID1 = null;
      this.ID2 = null;
      this.ID3 = null;
    }
    else {
      if (initObj.hasOwnProperty('ID1')) {
        this.ID1 = initObj.ID1
      }
      else {
        this.ID1 = 0;
      }
      if (initObj.hasOwnProperty('ID2')) {
        this.ID2 = initObj.ID2
      }
      else {
        this.ID2 = 0;
      }
      if (initObj.hasOwnProperty('ID3')) {
        this.ID3 = initObj.ID3
      }
      else {
        this.ID3 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type reflector_errorID
    // Serialize message field [ID1]
    bufferOffset = _serializer.uint32(obj.ID1, buffer, bufferOffset);
    // Serialize message field [ID2]
    bufferOffset = _serializer.uint32(obj.ID2, buffer, bufferOffset);
    // Serialize message field [ID3]
    bufferOffset = _serializer.uint32(obj.ID3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type reflector_errorID
    let len;
    let data = new reflector_errorID(null);
    // Deserialize message field [ID1]
    data.ID1 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ID2]
    data.ID2 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ID3]
    data.ID3 = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/reflector_errorID';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f95342ff8d3c62efed10a6fed87a878';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 ID1
    uint32 ID2
    uint32 ID3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new reflector_errorID(null);
    if (msg.ID1 !== undefined) {
      resolved.ID1 = msg.ID1;
    }
    else {
      resolved.ID1 = 0
    }

    if (msg.ID2 !== undefined) {
      resolved.ID2 = msg.ID2;
    }
    else {
      resolved.ID2 = 0
    }

    if (msg.ID3 !== undefined) {
      resolved.ID3 = msg.ID3;
    }
    else {
      resolved.ID3 = 0
    }

    return resolved;
    }
};

module.exports = reflector_errorID;
