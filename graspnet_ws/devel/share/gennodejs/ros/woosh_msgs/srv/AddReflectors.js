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

class AddReflectorsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isSave = null;
      this.deleteReflector = null;
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('isSave')) {
        this.isSave = initObj.isSave
      }
      else {
        this.isSave = false;
      }
      if (initObj.hasOwnProperty('deleteReflector')) {
        this.deleteReflector = initObj.deleteReflector
      }
      else {
        this.deleteReflector = false;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddReflectorsRequest
    // Serialize message field [isSave]
    bufferOffset = _serializer.bool(obj.isSave, buffer, bufferOffset);
    // Serialize message field [deleteReflector]
    bufferOffset = _serializer.bool(obj.deleteReflector, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddReflectorsRequest
    let len;
    let data = new AddReflectorsRequest(null);
    // Deserialize message field [isSave]
    data.isSave = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [deleteReflector]
    data.deleteReflector = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'woosh_msgs/AddReflectorsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3b2430547d42b81d587ff6241efc999c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool    isSave            #true:在map中添加新的reflactors； flase:定位
    bool    deleteReflector   #删除地图上已添加的reflector
    uint32   id                #删除指定id号的reflector
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddReflectorsRequest(null);
    if (msg.isSave !== undefined) {
      resolved.isSave = msg.isSave;
    }
    else {
      resolved.isSave = false
    }

    if (msg.deleteReflector !== undefined) {
      resolved.deleteReflector = msg.deleteReflector;
    }
    else {
      resolved.deleteReflector = false
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

class AddReflectorsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddReflectorsResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddReflectorsResponse
    let len;
    let data = new AddReflectorsResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'woosh_msgs/AddReflectorsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddReflectorsResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: AddReflectorsRequest,
  Response: AddReflectorsResponse,
  md5sum() { return '3b2430547d42b81d587ff6241efc999c'; },
  datatype() { return 'woosh_msgs/AddReflectors'; }
};
