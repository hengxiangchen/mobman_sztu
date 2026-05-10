// Auto-generated. Do not edit!

// (in-package woosh_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Magnetism = require('./Magnetism.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Magnetisms {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.magnetisms = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('magnetisms')) {
        this.magnetisms = initObj.magnetisms
      }
      else {
        this.magnetisms = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Magnetisms
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [magnetisms]
    // Serialize the length for message field [magnetisms]
    bufferOffset = _serializer.uint32(obj.magnetisms.length, buffer, bufferOffset);
    obj.magnetisms.forEach((val) => {
      bufferOffset = Magnetism.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Magnetisms
    let len;
    let data = new Magnetisms(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [magnetisms]
    // Deserialize array length for message field [magnetisms]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.magnetisms = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.magnetisms[i] = Magnetism.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.magnetisms.forEach((val) => {
      length += Magnetism.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/Magnetisms';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '92532dc1a0b2153d3ec5e22e240f9557';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    Magnetism[] magnetisms
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: woosh_msgs/Magnetism
    Header header
    uint8 submodule
    uint8 pointNum
    uint32 status
    float32 bias
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Magnetisms(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.magnetisms !== undefined) {
      resolved.magnetisms = new Array(msg.magnetisms.length);
      for (let i = 0; i < resolved.magnetisms.length; ++i) {
        resolved.magnetisms[i] = Magnetism.Resolve(msg.magnetisms[i]);
      }
    }
    else {
      resolved.magnetisms = []
    }

    return resolved;
    }
};

module.exports = Magnetisms;
