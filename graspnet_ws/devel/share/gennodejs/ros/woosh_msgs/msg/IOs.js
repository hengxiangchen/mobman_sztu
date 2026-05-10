// Auto-generated. Do not edit!

// (in-package woosh_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let IO = require('./IO.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class IOs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.IOs = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('IOs')) {
        this.IOs = initObj.IOs
      }
      else {
        this.IOs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IOs
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [IOs]
    // Serialize the length for message field [IOs]
    bufferOffset = _serializer.uint32(obj.IOs.length, buffer, bufferOffset);
    obj.IOs.forEach((val) => {
      bufferOffset = IO.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IOs
    let len;
    let data = new IOs(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [IOs]
    // Deserialize array length for message field [IOs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.IOs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.IOs[i] = IO.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.IOs.forEach((val) => {
      length += IO.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/IOs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5f7e2f12a8fa7c08c84c3dca127e2b59';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    IO[] IOs
    
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
    MSG: woosh_msgs/IO
    Header header
    uint8 module
    uint8 submodule
    uint8 id
    uint8 status
    
    #channel and IO
    #0x01 movebase key
    #0x02 motor
    #0x03 alarm  0.Beep 1.red 2.yellow 3.green 4.laser
    #0x81 photoelec
    
    #status
    #0 default
    #1 trigger
    #2 stop
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IOs(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.IOs !== undefined) {
      resolved.IOs = new Array(msg.IOs.length);
      for (let i = 0; i < resolved.IOs.length; ++i) {
        resolved.IOs[i] = IO.Resolve(msg.IOs[i]);
      }
    }
    else {
      resolved.IOs = []
    }

    return resolved;
    }
};

module.exports = IOs;
