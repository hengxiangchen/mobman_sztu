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

class SetMapServerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.startMapServer = null;
      this.pathName = null;
    }
    else {
      if (initObj.hasOwnProperty('startMapServer')) {
        this.startMapServer = initObj.startMapServer
      }
      else {
        this.startMapServer = false;
      }
      if (initObj.hasOwnProperty('pathName')) {
        this.pathName = initObj.pathName
      }
      else {
        this.pathName = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetMapServerRequest
    // Serialize message field [startMapServer]
    bufferOffset = _serializer.bool(obj.startMapServer, buffer, bufferOffset);
    // Serialize message field [pathName]
    bufferOffset = _serializer.string(obj.pathName, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetMapServerRequest
    let len;
    let data = new SetMapServerRequest(null);
    // Deserialize message field [startMapServer]
    data.startMapServer = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pathName]
    data.pathName = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.pathName);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'woosh_msgs/SetMapServerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fcad776725ad09fc175c15950c59f7c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # map_server
    
    # true: call startServe() to start map server pub static map
    # false: call stopServe() to stop publisher of map server
    bool startMapServer
    
    # Only for startMapServer == true. Leave empty for startMapServer == false
    # use pathName to find .yaml
    # pathName format can be [/abc/ddd/]filename[.yaml]
    # if pathName == "", use last loaded pathName in map_server or failed
    string pathName
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetMapServerRequest(null);
    if (msg.startMapServer !== undefined) {
      resolved.startMapServer = msg.startMapServer;
    }
    else {
      resolved.startMapServer = false
    }

    if (msg.pathName !== undefined) {
      resolved.pathName = msg.pathName;
    }
    else {
      resolved.pathName = ''
    }

    return resolved;
    }
};

class SetMapServerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
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
    // Serializes a message object of type SetMapServerResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetMapServerResponse
    let len;
    let data = new SetMapServerResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'woosh_msgs/SetMapServerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success   # indicate successful run of triggered service
    string message # informational, e.g. for error messages
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetMapServerResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
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
  Request: SetMapServerRequest,
  Response: SetMapServerResponse,
  md5sum() { return '00ac068e4aec756233516c167301064c'; },
  datatype() { return 'woosh_msgs/SetMapServer'; }
};
