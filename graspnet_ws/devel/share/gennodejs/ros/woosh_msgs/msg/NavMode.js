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

class NavMode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.type = null;
      this.triggered_mode = null;
      this.in = null;
      this.out = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('triggered_mode')) {
        this.triggered_mode = initObj.triggered_mode
      }
      else {
        this.triggered_mode = 0;
      }
      if (initObj.hasOwnProperty('in')) {
        this.in = initObj.in
      }
      else {
        this.in = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('out')) {
        this.out = initObj.out
      }
      else {
        this.out = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavMode
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [triggered_mode]
    bufferOffset = _serializer.int8(obj.triggered_mode, buffer, bufferOffset);
    // Serialize message field [in]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.in, buffer, bufferOffset);
    // Serialize message field [out]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.out, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavMode
    let len;
    let data = new NavMode(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [triggered_mode]
    data.triggered_mode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [in]
    data.in = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [out]
    data.out = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 57;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/NavMode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7cd910cf133377ea47a83949c11e5636';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 id                #通道id
    int32 type               #通道类型, 双行道=0,单行道=1,单向道=2,路口=3, 狭窄通道=4,定位域=5,爬坡域=6,Odom域=7,自动门域=8,限速域=9
    int8 triggered_mode      #触发模式  ，  进方域：0  ，  出方域：1    进圆域：2    出圆域：3
    geometry_msgs/Point in   #通道入点
    geometry_msgs/Point out  #通道出点
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
    const resolved = new NavMode(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.triggered_mode !== undefined) {
      resolved.triggered_mode = msg.triggered_mode;
    }
    else {
      resolved.triggered_mode = 0
    }

    if (msg.in !== undefined) {
      resolved.in = geometry_msgs.msg.Point.Resolve(msg.in)
    }
    else {
      resolved.in = new geometry_msgs.msg.Point()
    }

    if (msg.out !== undefined) {
      resolved.out = geometry_msgs.msg.Point.Resolve(msg.out)
    }
    else {
      resolved.out = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = NavMode;
