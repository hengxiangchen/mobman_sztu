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

class Ble_status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isConnected = null;
      this.isPaired = null;
      this.onPairing = null;
      this.target_mac = null;
      this.target_magic = null;
    }
    else {
      if (initObj.hasOwnProperty('isConnected')) {
        this.isConnected = initObj.isConnected
      }
      else {
        this.isConnected = false;
      }
      if (initObj.hasOwnProperty('isPaired')) {
        this.isPaired = initObj.isPaired
      }
      else {
        this.isPaired = false;
      }
      if (initObj.hasOwnProperty('onPairing')) {
        this.onPairing = initObj.onPairing
      }
      else {
        this.onPairing = false;
      }
      if (initObj.hasOwnProperty('target_mac')) {
        this.target_mac = initObj.target_mac
      }
      else {
        this.target_mac = '';
      }
      if (initObj.hasOwnProperty('target_magic')) {
        this.target_magic = initObj.target_magic
      }
      else {
        this.target_magic = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ble_status
    // Serialize message field [isConnected]
    bufferOffset = _serializer.bool(obj.isConnected, buffer, bufferOffset);
    // Serialize message field [isPaired]
    bufferOffset = _serializer.bool(obj.isPaired, buffer, bufferOffset);
    // Serialize message field [onPairing]
    bufferOffset = _serializer.bool(obj.onPairing, buffer, bufferOffset);
    // Serialize message field [target_mac]
    bufferOffset = _serializer.string(obj.target_mac, buffer, bufferOffset);
    // Serialize message field [target_magic]
    bufferOffset = _serializer.string(obj.target_magic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ble_status
    let len;
    let data = new Ble_status(null);
    // Deserialize message field [isConnected]
    data.isConnected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [isPaired]
    data.isPaired = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [onPairing]
    data.onPairing = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [target_mac]
    data.target_mac = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_magic]
    data.target_magic = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.target_mac);
    length += _getByteLength(object.target_magic);
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/Ble_status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a3f6334597a0d117e6034fd6a0cdabe7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool isConnected
    bool isPaired
    bool onPairing
    string target_mac
    string target_magic
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Ble_status(null);
    if (msg.isConnected !== undefined) {
      resolved.isConnected = msg.isConnected;
    }
    else {
      resolved.isConnected = false
    }

    if (msg.isPaired !== undefined) {
      resolved.isPaired = msg.isPaired;
    }
    else {
      resolved.isPaired = false
    }

    if (msg.onPairing !== undefined) {
      resolved.onPairing = msg.onPairing;
    }
    else {
      resolved.onPairing = false
    }

    if (msg.target_mac !== undefined) {
      resolved.target_mac = msg.target_mac;
    }
    else {
      resolved.target_mac = ''
    }

    if (msg.target_magic !== undefined) {
      resolved.target_magic = msg.target_magic;
    }
    else {
      resolved.target_magic = ''
    }

    return resolved;
    }
};

module.exports = Ble_status;
