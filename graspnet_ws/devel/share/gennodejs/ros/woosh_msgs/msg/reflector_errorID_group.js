// Auto-generated. Do not edit!

// (in-package woosh_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let reflector_errorID = require('./reflector_errorID.js');

//-----------------------------------------------------------

class reflector_errorID_group {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reflector_errorIDs = null;
    }
    else {
      if (initObj.hasOwnProperty('reflector_errorIDs')) {
        this.reflector_errorIDs = initObj.reflector_errorIDs
      }
      else {
        this.reflector_errorIDs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type reflector_errorID_group
    // Serialize message field [reflector_errorIDs]
    // Serialize the length for message field [reflector_errorIDs]
    bufferOffset = _serializer.uint32(obj.reflector_errorIDs.length, buffer, bufferOffset);
    obj.reflector_errorIDs.forEach((val) => {
      bufferOffset = reflector_errorID.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type reflector_errorID_group
    let len;
    let data = new reflector_errorID_group(null);
    // Deserialize message field [reflector_errorIDs]
    // Deserialize array length for message field [reflector_errorIDs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.reflector_errorIDs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.reflector_errorIDs[i] = reflector_errorID.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.reflector_errorIDs.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/reflector_errorID_group';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e143066129136a656399632cc78743b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    reflector_errorID[] reflector_errorIDs
    
    ================================================================================
    MSG: woosh_msgs/reflector_errorID
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
    const resolved = new reflector_errorID_group(null);
    if (msg.reflector_errorIDs !== undefined) {
      resolved.reflector_errorIDs = new Array(msg.reflector_errorIDs.length);
      for (let i = 0; i < resolved.reflector_errorIDs.length; ++i) {
        resolved.reflector_errorIDs[i] = reflector_errorID.Resolve(msg.reflector_errorIDs[i]);
      }
    }
    else {
      resolved.reflector_errorIDs = []
    }

    return resolved;
    }
};

module.exports = reflector_errorID_group;
