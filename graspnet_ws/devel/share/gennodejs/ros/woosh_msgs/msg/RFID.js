// Auto-generated. Do not edit!

// (in-package woosh_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RFID {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.submodule = null;
      this.rfidType = null;
      this.rfid = null;
      this.flag = null;
      this.signal = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('submodule')) {
        this.submodule = initObj.submodule
      }
      else {
        this.submodule = 0;
      }
      if (initObj.hasOwnProperty('rfidType')) {
        this.rfidType = initObj.rfidType
      }
      else {
        this.rfidType = 0;
      }
      if (initObj.hasOwnProperty('rfid')) {
        this.rfid = initObj.rfid
      }
      else {
        this.rfid = 0;
      }
      if (initObj.hasOwnProperty('flag')) {
        this.flag = initObj.flag
      }
      else {
        this.flag = 0;
      }
      if (initObj.hasOwnProperty('signal')) {
        this.signal = initObj.signal
      }
      else {
        this.signal = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RFID
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [submodule]
    bufferOffset = _serializer.uint8(obj.submodule, buffer, bufferOffset);
    // Serialize message field [rfidType]
    bufferOffset = _serializer.uint16(obj.rfidType, buffer, bufferOffset);
    // Serialize message field [rfid]
    bufferOffset = _serializer.uint16(obj.rfid, buffer, bufferOffset);
    // Serialize message field [flag]
    bufferOffset = _serializer.uint8(obj.flag, buffer, bufferOffset);
    // Serialize message field [signal]
    bufferOffset = _serializer.uint8(obj.signal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RFID
    let len;
    let data = new RFID(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [submodule]
    data.submodule = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rfidType]
    data.rfidType = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [rfid]
    data.rfid = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [flag]
    data.flag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [signal]
    data.signal = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/RFID';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db8c502dc6e5f530e881175b0ae270e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint8 submodule
    uint16 rfidType
    uint16 rfid
    uint8 flag
    uint8 signal
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RFID(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.submodule !== undefined) {
      resolved.submodule = msg.submodule;
    }
    else {
      resolved.submodule = 0
    }

    if (msg.rfidType !== undefined) {
      resolved.rfidType = msg.rfidType;
    }
    else {
      resolved.rfidType = 0
    }

    if (msg.rfid !== undefined) {
      resolved.rfid = msg.rfid;
    }
    else {
      resolved.rfid = 0
    }

    if (msg.flag !== undefined) {
      resolved.flag = msg.flag;
    }
    else {
      resolved.flag = 0
    }

    if (msg.signal !== undefined) {
      resolved.signal = msg.signal;
    }
    else {
      resolved.signal = 0
    }

    return resolved;
    }
};

module.exports = RFID;
