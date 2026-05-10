// Auto-generated. Do not edit!

// (in-package woosh_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class getRoadMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.one_way = null;
      this.bidirect = null;
    }
    else {
      if (initObj.hasOwnProperty('one_way')) {
        this.one_way = initObj.one_way
      }
      else {
        this.one_way = [];
      }
      if (initObj.hasOwnProperty('bidirect')) {
        this.bidirect = initObj.bidirect
      }
      else {
        this.bidirect = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type getRoadMapRequest
    // Serialize message field [one_way]
    // Serialize the length for message field [one_way]
    bufferOffset = _serializer.uint32(obj.one_way.length, buffer, bufferOffset);
    obj.one_way.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [bidirect]
    // Serialize the length for message field [bidirect]
    bufferOffset = _serializer.uint32(obj.bidirect.length, buffer, bufferOffset);
    obj.bidirect.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type getRoadMapRequest
    let len;
    let data = new getRoadMapRequest(null);
    // Deserialize message field [one_way]
    // Deserialize array length for message field [one_way]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.one_way = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.one_way[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [bidirect]
    // Deserialize array length for message field [bidirect]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bidirect = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bidirect[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.one_way.length;
    length += 24 * object.bidirect.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'woosh_msgs/getRoadMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1910be0d1ef00ac4cb0394dab1854fd2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point[] one_way
    geometry_msgs/Point[] bidirect
    
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new getRoadMapRequest(null);
    if (msg.one_way !== undefined) {
      resolved.one_way = new Array(msg.one_way.length);
      for (let i = 0; i < resolved.one_way.length; ++i) {
        resolved.one_way[i] = geometry_msgs.msg.Point.Resolve(msg.one_way[i]);
      }
    }
    else {
      resolved.one_way = []
    }

    if (msg.bidirect !== undefined) {
      resolved.bidirect = new Array(msg.bidirect.length);
      for (let i = 0; i < resolved.bidirect.length; ++i) {
        resolved.bidirect[i] = geometry_msgs.msg.Point.Resolve(msg.bidirect[i]);
      }
    }
    else {
      resolved.bidirect = []
    }

    return resolved;
    }
};

class getRoadMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type getRoadMapResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type getRoadMapResponse
    let len;
    let data = new getRoadMapResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'woosh_msgs/getRoadMapResponse';
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
    const resolved = new getRoadMapResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: getRoadMapRequest,
  Response: getRoadMapResponse,
  md5sum() { return '1910be0d1ef00ac4cb0394dab1854fd2'; },
  datatype() { return 'woosh_msgs/getRoadMap'; }
};
