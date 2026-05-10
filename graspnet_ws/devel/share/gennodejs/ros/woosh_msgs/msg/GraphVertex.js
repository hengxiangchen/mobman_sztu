// Auto-generated. Do not edit!

// (in-package woosh_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NavFieldPoint = require('./NavFieldPoint.js');

//-----------------------------------------------------------

class GraphVertex {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mark = null;
      this.field_id = null;
    }
    else {
      if (initObj.hasOwnProperty('mark')) {
        this.mark = initObj.mark
      }
      else {
        this.mark = new NavFieldPoint();
      }
      if (initObj.hasOwnProperty('field_id')) {
        this.field_id = initObj.field_id
      }
      else {
        this.field_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GraphVertex
    // Serialize message field [mark]
    bufferOffset = NavFieldPoint.serialize(obj.mark, buffer, bufferOffset);
    // Serialize message field [field_id]
    bufferOffset = _serializer.int32(obj.field_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GraphVertex
    let len;
    let data = new GraphVertex(null);
    // Deserialize message field [mark]
    data.mark = NavFieldPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [field_id]
    data.field_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/GraphVertex';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '62869234d6d1db121c045433a043e865';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    NavFieldPoint mark
    int32 field_id
    
    ================================================================================
    MSG: woosh_msgs/NavFieldPoint
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
    const resolved = new GraphVertex(null);
    if (msg.mark !== undefined) {
      resolved.mark = NavFieldPoint.Resolve(msg.mark)
    }
    else {
      resolved.mark = new NavFieldPoint()
    }

    if (msg.field_id !== undefined) {
      resolved.field_id = msg.field_id;
    }
    else {
      resolved.field_id = 0
    }

    return resolved;
    }
};

module.exports = GraphVertex;
