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

class RobotInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.length = null;
      this.width = null;
      this.laserNum = null;
      this.cameraNum = null;
      this.beaconPose = null;
    }
    else {
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('laserNum')) {
        this.laserNum = initObj.laserNum
      }
      else {
        this.laserNum = 0;
      }
      if (initObj.hasOwnProperty('cameraNum')) {
        this.cameraNum = initObj.cameraNum
      }
      else {
        this.cameraNum = 0;
      }
      if (initObj.hasOwnProperty('beaconPose')) {
        this.beaconPose = initObj.beaconPose
      }
      else {
        this.beaconPose = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotInfo
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [laserNum]
    bufferOffset = _serializer.uint8(obj.laserNum, buffer, bufferOffset);
    // Serialize message field [cameraNum]
    bufferOffset = _serializer.uint8(obj.cameraNum, buffer, bufferOffset);
    // Serialize message field [beaconPose]
    // Serialize the length for message field [beaconPose]
    bufferOffset = _serializer.uint32(obj.beaconPose.length, buffer, bufferOffset);
    obj.beaconPose.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotInfo
    let len;
    let data = new RobotInfo(null);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [laserNum]
    data.laserNum = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cameraNum]
    data.cameraNum = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [beaconPose]
    // Deserialize array length for message field [beaconPose]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.beaconPose = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.beaconPose[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 56 * object.beaconPose.length;
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/RobotInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b7a46e6518a49c07799e15858569507b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Header header
    float32 length
    float32 width
    uint8 laserNum
    uint8 cameraNum
    geometry_msgs/Pose[] beaconPose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotInfo(null);
    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.laserNum !== undefined) {
      resolved.laserNum = msg.laserNum;
    }
    else {
      resolved.laserNum = 0
    }

    if (msg.cameraNum !== undefined) {
      resolved.cameraNum = msg.cameraNum;
    }
    else {
      resolved.cameraNum = 0
    }

    if (msg.beaconPose !== undefined) {
      resolved.beaconPose = new Array(msg.beaconPose.length);
      for (let i = 0; i < resolved.beaconPose.length; ++i) {
        resolved.beaconPose[i] = geometry_msgs.msg.Pose.Resolve(msg.beaconPose[i]);
      }
    }
    else {
      resolved.beaconPose = []
    }

    return resolved;
    }
};

module.exports = RobotInfo;
