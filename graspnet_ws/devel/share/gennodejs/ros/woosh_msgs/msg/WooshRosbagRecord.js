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

class WooshRosbagRecord {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.startOrstop = null;
      this.removeBag = null;
    }
    else {
      if (initObj.hasOwnProperty('startOrstop')) {
        this.startOrstop = initObj.startOrstop
      }
      else {
        this.startOrstop = false;
      }
      if (initObj.hasOwnProperty('removeBag')) {
        this.removeBag = initObj.removeBag
      }
      else {
        this.removeBag = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WooshRosbagRecord
    // Serialize message field [startOrstop]
    bufferOffset = _serializer.bool(obj.startOrstop, buffer, bufferOffset);
    // Serialize message field [removeBag]
    bufferOffset = _serializer.bool(obj.removeBag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WooshRosbagRecord
    let len;
    let data = new WooshRosbagRecord(null);
    // Deserialize message field [startOrstop]
    data.startOrstop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [removeBag]
    data.removeBag = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/WooshRosbagRecord';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '65d3c77019d7f0e27129b759c962321f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool startOrstop #true:start  false:stop
    bool removeBag   #true:remove false:keep
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WooshRosbagRecord(null);
    if (msg.startOrstop !== undefined) {
      resolved.startOrstop = msg.startOrstop;
    }
    else {
      resolved.startOrstop = false
    }

    if (msg.removeBag !== undefined) {
      resolved.removeBag = msg.removeBag;
    }
    else {
      resolved.removeBag = false
    }

    return resolved;
    }
};

module.exports = WooshRosbagRecord;
