// Auto-generated. Do not edit!

// (in-package woosh_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Beacon {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.submodule = null;
      this.beaconID = null;
      this.beaconIDStr = null;
      this.position = null;
      this.range = null;
      this.bearing = null;
      this.max_range = null;
      this.batteryPercentage = null;
      this.group = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('submodule')) {
        this.submodule = initObj.submodule
      }
      else {
        this.submodule = 0;
      }
      if (initObj.hasOwnProperty('beaconID')) {
        this.beaconID = initObj.beaconID
      }
      else {
        this.beaconID = 0;
      }
      if (initObj.hasOwnProperty('beaconIDStr')) {
        this.beaconIDStr = initObj.beaconIDStr
      }
      else {
        this.beaconIDStr = '';
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('range')) {
        this.range = initObj.range
      }
      else {
        this.range = 0.0;
      }
      if (initObj.hasOwnProperty('bearing')) {
        this.bearing = initObj.bearing
      }
      else {
        this.bearing = 0.0;
      }
      if (initObj.hasOwnProperty('max_range')) {
        this.max_range = initObj.max_range
      }
      else {
        this.max_range = 0.0;
      }
      if (initObj.hasOwnProperty('batteryPercentage')) {
        this.batteryPercentage = initObj.batteryPercentage
      }
      else {
        this.batteryPercentage = 0;
      }
      if (initObj.hasOwnProperty('group')) {
        this.group = initObj.group
      }
      else {
        this.group = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Beacon
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [submodule]
    bufferOffset = _serializer.uint8(obj.submodule, buffer, bufferOffset);
    // Serialize message field [beaconID]
    bufferOffset = _serializer.uint32(obj.beaconID, buffer, bufferOffset);
    // Serialize message field [beaconIDStr]
    bufferOffset = _serializer.string(obj.beaconIDStr, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [range]
    bufferOffset = _serializer.float32(obj.range, buffer, bufferOffset);
    // Serialize message field [bearing]
    bufferOffset = _serializer.float32(obj.bearing, buffer, bufferOffset);
    // Serialize message field [max_range]
    bufferOffset = _serializer.float32(obj.max_range, buffer, bufferOffset);
    // Serialize message field [batteryPercentage]
    bufferOffset = _serializer.uint8(obj.batteryPercentage, buffer, bufferOffset);
    // Serialize message field [group]
    bufferOffset = _serializer.uint16(obj.group, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Beacon
    let len;
    let data = new Beacon(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [submodule]
    data.submodule = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [beaconID]
    data.beaconID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [beaconIDStr]
    data.beaconIDStr = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [range]
    data.range = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bearing]
    data.bearing = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_range]
    data.max_range = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [batteryPercentage]
    data.batteryPercentage = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [group]
    data.group = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.beaconIDStr);
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/Beacon';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1884dff50198bbc7db795331c8e650a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Beacon(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.submodule !== undefined) {
      resolved.submodule = msg.submodule;
    }
    else {
      resolved.submodule = 0
    }

    if (msg.beaconID !== undefined) {
      resolved.beaconID = msg.beaconID;
    }
    else {
      resolved.beaconID = 0
    }

    if (msg.beaconIDStr !== undefined) {
      resolved.beaconIDStr = msg.beaconIDStr;
    }
    else {
      resolved.beaconIDStr = ''
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point32.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point32()
    }

    if (msg.range !== undefined) {
      resolved.range = msg.range;
    }
    else {
      resolved.range = 0.0
    }

    if (msg.bearing !== undefined) {
      resolved.bearing = msg.bearing;
    }
    else {
      resolved.bearing = 0.0
    }

    if (msg.max_range !== undefined) {
      resolved.max_range = msg.max_range;
    }
    else {
      resolved.max_range = 0.0
    }

    if (msg.batteryPercentage !== undefined) {
      resolved.batteryPercentage = msg.batteryPercentage;
    }
    else {
      resolved.batteryPercentage = 0
    }

    if (msg.group !== undefined) {
      resolved.group = msg.group;
    }
    else {
      resolved.group = 0
    }

    return resolved;
    }
};

module.exports = Beacon;
