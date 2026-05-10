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

class Follower {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.seq = null;
      this.rssiFirst = null;
      this.rssiAll = null;
      this.battery = null;
      this.keys = null;
      this.tagID = null;
      this.distance = null;
      this.angle = null;
      this.anchorStatus = null;
      this.quality = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('seq')) {
        this.seq = initObj.seq
      }
      else {
        this.seq = 0;
      }
      if (initObj.hasOwnProperty('rssiFirst')) {
        this.rssiFirst = initObj.rssiFirst
      }
      else {
        this.rssiFirst = 0;
      }
      if (initObj.hasOwnProperty('rssiAll')) {
        this.rssiAll = initObj.rssiAll
      }
      else {
        this.rssiAll = 0;
      }
      if (initObj.hasOwnProperty('battery')) {
        this.battery = initObj.battery
      }
      else {
        this.battery = 0;
      }
      if (initObj.hasOwnProperty('keys')) {
        this.keys = initObj.keys
      }
      else {
        this.keys = 0;
      }
      if (initObj.hasOwnProperty('tagID')) {
        this.tagID = initObj.tagID
      }
      else {
        this.tagID = 0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
      if (initObj.hasOwnProperty('anchorStatus')) {
        this.anchorStatus = initObj.anchorStatus
      }
      else {
        this.anchorStatus = 0;
      }
      if (initObj.hasOwnProperty('quality')) {
        this.quality = initObj.quality
      }
      else {
        this.quality = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Follower
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [seq]
    bufferOffset = _serializer.uint8(obj.seq, buffer, bufferOffset);
    // Serialize message field [rssiFirst]
    bufferOffset = _serializer.int8(obj.rssiFirst, buffer, bufferOffset);
    // Serialize message field [rssiAll]
    bufferOffset = _serializer.int8(obj.rssiAll, buffer, bufferOffset);
    // Serialize message field [battery]
    bufferOffset = _serializer.uint8(obj.battery, buffer, bufferOffset);
    // Serialize message field [keys]
    bufferOffset = _serializer.uint8(obj.keys, buffer, bufferOffset);
    // Serialize message field [tagID]
    bufferOffset = _serializer.uint16(obj.tagID, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float32(obj.angle, buffer, bufferOffset);
    // Serialize message field [anchorStatus]
    bufferOffset = _serializer.uint8(obj.anchorStatus, buffer, bufferOffset);
    // Serialize message field [quality]
    bufferOffset = _serializer.uint8(obj.quality, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Follower
    let len;
    let data = new Follower(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [seq]
    data.seq = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rssiFirst]
    data.rssiFirst = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [rssiAll]
    data.rssiAll = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [battery]
    data.battery = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [keys]
    data.keys = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [tagID]
    data.tagID = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [anchorStatus]
    data.anchorStatus = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [quality]
    data.quality = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/Follower';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d72f0a2a91edeee0e92612da6dfeafa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint8 seq
    int8 rssiFirst
    int8 rssiAll
    uint8 battery
    uint8 keys
    uint16 tagID
    float32 distance
    float32 angle
    uint8 anchorStatus
    uint8 quality
    
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
    const resolved = new Follower(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.seq !== undefined) {
      resolved.seq = msg.seq;
    }
    else {
      resolved.seq = 0
    }

    if (msg.rssiFirst !== undefined) {
      resolved.rssiFirst = msg.rssiFirst;
    }
    else {
      resolved.rssiFirst = 0
    }

    if (msg.rssiAll !== undefined) {
      resolved.rssiAll = msg.rssiAll;
    }
    else {
      resolved.rssiAll = 0
    }

    if (msg.battery !== undefined) {
      resolved.battery = msg.battery;
    }
    else {
      resolved.battery = 0
    }

    if (msg.keys !== undefined) {
      resolved.keys = msg.keys;
    }
    else {
      resolved.keys = 0
    }

    if (msg.tagID !== undefined) {
      resolved.tagID = msg.tagID;
    }
    else {
      resolved.tagID = 0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    if (msg.anchorStatus !== undefined) {
      resolved.anchorStatus = msg.anchorStatus;
    }
    else {
      resolved.anchorStatus = 0
    }

    if (msg.quality !== undefined) {
      resolved.quality = msg.quality;
    }
    else {
      resolved.quality = 0
    }

    return resolved;
    }
};

module.exports = Follower;
