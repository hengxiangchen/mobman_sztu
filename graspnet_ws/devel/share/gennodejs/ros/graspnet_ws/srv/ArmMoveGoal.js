// Auto-generated. Do not edit!

// (in-package graspnet_ws.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ArmMoveGoalRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.array1 = null;
      this.array2 = null;
    }
    else {
      if (initObj.hasOwnProperty('array1')) {
        this.array1 = initObj.array1
      }
      else {
        this.array1 = [];
      }
      if (initObj.hasOwnProperty('array2')) {
        this.array2 = initObj.array2
      }
      else {
        this.array2 = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmMoveGoalRequest
    // Serialize message field [array1]
    bufferOffset = _arraySerializer.float64(obj.array1, buffer, bufferOffset, null);
    // Serialize message field [array2]
    bufferOffset = _arraySerializer.float64(obj.array2, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmMoveGoalRequest
    let len;
    let data = new ArmMoveGoalRequest(null);
    // Deserialize message field [array1]
    data.array1 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [array2]
    data.array2 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.array1.length;
    length += 8 * object.array2.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'graspnet_ws/ArmMoveGoalRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97a51d1758e0887793f47ea3c5b65566';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] array1
    float64[] array2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArmMoveGoalRequest(null);
    if (msg.array1 !== undefined) {
      resolved.array1 = msg.array1;
    }
    else {
      resolved.array1 = []
    }

    if (msg.array2 !== undefined) {
      resolved.array2 = msg.array2;
    }
    else {
      resolved.array2 = []
    }

    return resolved;
    }
};

class ArmMoveGoalResponse {
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
    // Serializes a message object of type ArmMoveGoalResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmMoveGoalResponse
    let len;
    let data = new ArmMoveGoalResponse(null);
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
    return 'graspnet_ws/ArmMoveGoalResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArmMoveGoalResponse(null);
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
  Request: ArmMoveGoalRequest,
  Response: ArmMoveGoalResponse,
  md5sum() { return 'e703bc5a1f2ac12df2a6a9e2abd0ba96'; },
  datatype() { return 'graspnet_ws/ArmMoveGoal'; }
};
