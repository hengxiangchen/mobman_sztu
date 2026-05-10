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

class SetSafetyFieldRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.safetyField = null;
    }
    else {
      if (initObj.hasOwnProperty('safetyField')) {
        this.safetyField = initObj.safetyField
      }
      else {
        this.safetyField = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetSafetyFieldRequest
    // Serialize message field [safetyField]
    bufferOffset = _serializer.uint8(obj.safetyField, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetSafetyFieldRequest
    let len;
    let data = new SetSafetyFieldRequest(null);
    // Deserialize message field [safetyField]
    data.safetyField = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'woosh_msgs/SetSafetyFieldRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '24450e6f0053c1dfda84f0295d306c20';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 safetyField
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetSafetyFieldRequest(null);
    if (msg.safetyField !== undefined) {
      resolved.safetyField = msg.safetyField;
    }
    else {
      resolved.safetyField = 0
    }

    return resolved;
    }
};

class SetSafetyFieldResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enable = null;
      this.safetyField = null;
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('enable')) {
        this.enable = initObj.enable
      }
      else {
        this.enable = false;
      }
      if (initObj.hasOwnProperty('safetyField')) {
        this.safetyField = initObj.safetyField
      }
      else {
        this.safetyField = 0;
      }
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
    // Serializes a message object of type SetSafetyFieldResponse
    // Serialize message field [enable]
    bufferOffset = _serializer.bool(obj.enable, buffer, bufferOffset);
    // Serialize message field [safetyField]
    bufferOffset = _serializer.uint8(obj.safetyField, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetSafetyFieldResponse
    let len;
    let data = new SetSafetyFieldResponse(null);
    // Deserialize message field [enable]
    data.enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [safetyField]
    data.safetyField = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 7;
  }

  static datatype() {
    // Returns string type for a service object
    return 'woosh_msgs/SetSafetyFieldResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '700a122da93ce2ea622650a5d32a3a05';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool enable
    uint8 safetyField
    bool success
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetSafetyFieldResponse(null);
    if (msg.enable !== undefined) {
      resolved.enable = msg.enable;
    }
    else {
      resolved.enable = false
    }

    if (msg.safetyField !== undefined) {
      resolved.safetyField = msg.safetyField;
    }
    else {
      resolved.safetyField = 0
    }

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
  Request: SetSafetyFieldRequest,
  Response: SetSafetyFieldResponse,
  md5sum() { return 'fb961668e1417ae513efc8848f6b7d57'; },
  datatype() { return 'woosh_msgs/SetSafetyField'; }
};
