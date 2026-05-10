// Auto-generated. Do not edit!

// (in-package woosh_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class NavFieldPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pt = null;
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('pt')) {
        this.pt = initObj.pt
      }
      else {
        this.pt = new geometry_msgs.msg.Point();
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
    // Serializes a message object of type NavFieldPoint
    // Serialize message field [pt]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.pt, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavFieldPoint
    let len;
    let data = new NavFieldPoint(null);
    // Deserialize message field [pt]
    data.pt = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/NavFieldPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13b00633b9c5d2d37ee845ea08015a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point pt	#Marker position
    uint32 id 		#Marker id
    
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
    const resolved = new NavFieldPoint(null);
    if (msg.pt !== undefined) {
      resolved.pt = geometry_msgs.msg.Point.Resolve(msg.pt)
    }
    else {
      resolved.pt = new geometry_msgs.msg.Point()
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

module.exports = NavFieldPoint;
