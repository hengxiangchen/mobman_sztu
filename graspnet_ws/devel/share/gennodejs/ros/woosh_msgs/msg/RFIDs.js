// Auto-generated. Do not edit!

// (in-package woosh_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RFID = require('./RFID.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RFIDs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.RFIDs = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('RFIDs')) {
        this.RFIDs = initObj.RFIDs
      }
      else {
        this.RFIDs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RFIDs
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [RFIDs]
    // Serialize the length for message field [RFIDs]
    bufferOffset = _serializer.uint32(obj.RFIDs.length, buffer, bufferOffset);
    obj.RFIDs.forEach((val) => {
      bufferOffset = RFID.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RFIDs
    let len;
    let data = new RFIDs(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [RFIDs]
    // Deserialize array length for message field [RFIDs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.RFIDs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.RFIDs[i] = RFID.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.RFIDs.forEach((val) => {
      length += RFID.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/RFIDs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c8455bbcbfc144fa46bb2c3d0fed4433';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    RFID[] RFIDs
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
    MSG: woosh_msgs/RFID
    Header header
    uint8 submodule
    uint16 rfidType
    uint16 rfid
    uint8 flag
    uint8 signal
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RFIDs(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.RFIDs !== undefined) {
      resolved.RFIDs = new Array(msg.RFIDs.length);
      for (let i = 0; i < resolved.RFIDs.length; ++i) {
        resolved.RFIDs[i] = RFID.Resolve(msg.RFIDs[i]);
      }
    }
    else {
      resolved.RFIDs = []
    }

    return resolved;
    }
};

module.exports = RFIDs;
