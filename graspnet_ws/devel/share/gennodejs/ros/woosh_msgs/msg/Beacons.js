// Auto-generated. Do not edit!

// (in-package woosh_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Beacon = require('./Beacon.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Beacons {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.beacons = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('beacons')) {
        this.beacons = initObj.beacons
      }
      else {
        this.beacons = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Beacons
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [beacons]
    // Serialize the length for message field [beacons]
    bufferOffset = _serializer.uint32(obj.beacons.length, buffer, bufferOffset);
    obj.beacons.forEach((val) => {
      bufferOffset = Beacon.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Beacons
    let len;
    let data = new Beacons(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [beacons]
    // Deserialize array length for message field [beacons]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.beacons = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.beacons[i] = Beacon.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.beacons.forEach((val) => {
      length += Beacon.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/Beacons';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6a6c605e47bffb9a548789d9b0089a38';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    Beacon[] beacons
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: woosh_msgs/Beacon
    Header header #frame_id is the frame of receiver in the robot
    uint8 submodule
    uint32 beaconID
    string beaconIDStr
    geometry_msgs/Point32 position #beacon's position of the world
    float32 range
    float32 bearing
    float32 max_range
    uint8 batteryPercentage
    uint16  group
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Beacons(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.beacons !== undefined) {
      resolved.beacons = new Array(msg.beacons.length);
      for (let i = 0; i < resolved.beacons.length; ++i) {
        resolved.beacons[i] = Beacon.Resolve(msg.beacons[i]);
      }
    }
    else {
      resolved.beacons = []
    }

    return resolved;
    }
};

module.exports = Beacons;
