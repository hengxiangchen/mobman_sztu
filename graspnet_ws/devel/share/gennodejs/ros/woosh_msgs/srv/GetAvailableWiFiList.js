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

class GetAvailableWiFiListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timeout = null;
    }
    else {
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAvailableWiFiListRequest
    // Serialize message field [timeout]
    bufferOffset = _serializer.int32(obj.timeout, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAvailableWiFiListRequest
    let len;
    let data = new GetAvailableWiFiListRequest(null);
    // Deserialize message field [timeout]
    data.timeout = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'woosh_msgs/GetAvailableWiFiListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '59c7c94880c7082d9353d4d0a3356213';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 timeout
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAvailableWiFiListRequest(null);
    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = 0
    }

    return resolved;
    }
};

class GetAvailableWiFiListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.message = null;
      this.wifi_list = null;
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
      if (initObj.hasOwnProperty('wifi_list')) {
        this.wifi_list = initObj.wifi_list
      }
      else {
        this.wifi_list = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAvailableWiFiListResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [wifi_list]
    bufferOffset = _serializer.string(obj.wifi_list, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAvailableWiFiListResponse
    let len;
    let data = new GetAvailableWiFiListResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [wifi_list]
    data.wifi_list = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    length += _getByteLength(object.wifi_list);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'woosh_msgs/GetAvailableWiFiListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1e28c9c58e30f6e1ff23de15589a7501';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    string message
    string wifi_list
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAvailableWiFiListResponse(null);
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

    if (msg.wifi_list !== undefined) {
      resolved.wifi_list = msg.wifi_list;
    }
    else {
      resolved.wifi_list = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GetAvailableWiFiListRequest,
  Response: GetAvailableWiFiListResponse,
  md5sum() { return 'f05424b77a66a214dd3a93c8ea8e16bb'; },
  datatype() { return 'woosh_msgs/GetAvailableWiFiList'; }
};
