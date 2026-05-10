// Auto-generated. Do not edit!

// (in-package woosh_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class AddWiFiRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wifi_parameter = null;
      this.connect_now = null;
    }
    else {
      if (initObj.hasOwnProperty('wifi_parameter')) {
        this.wifi_parameter = initObj.wifi_parameter
      }
      else {
        this.wifi_parameter = '';
      }
      if (initObj.hasOwnProperty('connect_now')) {
        this.connect_now = initObj.connect_now
      }
      else {
        this.connect_now = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddWiFiRequest
    // Serialize message field [wifi_parameter]
    bufferOffset = _serializer.string(obj.wifi_parameter, buffer, bufferOffset);
    // Serialize message field [connect_now]
    bufferOffset = _serializer.bool(obj.connect_now, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddWiFiRequest
    let len;
    let data = new AddWiFiRequest(null);
    // Deserialize message field [wifi_parameter]
    data.wifi_parameter = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [connect_now]
    data.connect_now = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.wifi_parameter);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'woosh_msgs/AddWiFiRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0eebfd57ad8b07a51802ae6e3093e0e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string wifi_parameter
    bool connect_now
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddWiFiRequest(null);
    if (msg.wifi_parameter !== undefined) {
      resolved.wifi_parameter = msg.wifi_parameter;
    }
    else {
      resolved.wifi_parameter = ''
    }

    if (msg.connect_now !== undefined) {
      resolved.connect_now = msg.connect_now;
    }
    else {
      resolved.connect_now = false
    }

    return resolved;
    }
};

class AddWiFiResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddWiFiResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddWiFiResponse
    let len;
    let data = new AddWiFiResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'woosh_msgs/AddWiFiResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c1d00fb8b4e78420f43d93d5292a429';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddWiFiResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: AddWiFiRequest,
  Response: AddWiFiResponse,
  md5sum() { return '01216da3b47dc86d0d6d1f4a6238121c'; },
  datatype() { return 'woosh_msgs/AddWiFi'; }
};
