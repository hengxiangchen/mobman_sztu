// Auto-generated. Do not edit!

// (in-package woosh_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Beacon = require('../msg/Beacon.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class BeaconListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isSave = null;
      this.beaconList = null;
    }
    else {
      if (initObj.hasOwnProperty('isSave')) {
        this.isSave = initObj.isSave
      }
      else {
        this.isSave = false;
      }
      if (initObj.hasOwnProperty('beaconList')) {
        this.beaconList = initObj.beaconList
      }
      else {
        this.beaconList = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BeaconListRequest
    // Serialize message field [isSave]
    bufferOffset = _serializer.bool(obj.isSave, buffer, bufferOffset);
    // Serialize message field [beaconList]
    // Serialize the length for message field [beaconList]
    bufferOffset = _serializer.uint32(obj.beaconList.length, buffer, bufferOffset);
    obj.beaconList.forEach((val) => {
      bufferOffset = Beacon.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BeaconListRequest
    let len;
    let data = new BeaconListRequest(null);
    // Deserialize message field [isSave]
    data.isSave = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [beaconList]
    // Deserialize array length for message field [beaconList]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.beaconList = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.beaconList[i] = Beacon.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.beaconList.forEach((val) => {
      length += Beacon.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'woosh_msgs/BeaconListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '06b2f6f62de19f7496d8931d27898d76';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Set Get beacon list
    bool isSave #true: save beacon list false: get beacon list
    Beacon[] beaconList
    
    
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
    const resolved = new BeaconListRequest(null);
    if (msg.isSave !== undefined) {
      resolved.isSave = msg.isSave;
    }
    else {
      resolved.isSave = false
    }

    if (msg.beaconList !== undefined) {
      resolved.beaconList = new Array(msg.beaconList.length);
      for (let i = 0; i < resolved.beaconList.length; ++i) {
        resolved.beaconList[i] = Beacon.Resolve(msg.beaconList[i]);
      }
    }
    else {
      resolved.beaconList = []
    }

    return resolved;
    }
};

class BeaconListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.beaconList = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('beaconList')) {
        this.beaconList = initObj.beaconList
      }
      else {
        this.beaconList = [];
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
    // Serializes a message object of type BeaconListResponse
    // Serialize message field [beaconList]
    // Serialize the length for message field [beaconList]
    bufferOffset = _serializer.uint32(obj.beaconList.length, buffer, bufferOffset);
    obj.beaconList.forEach((val) => {
      bufferOffset = Beacon.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BeaconListResponse
    let len;
    let data = new BeaconListResponse(null);
    // Deserialize message field [beaconList]
    // Deserialize array length for message field [beaconList]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.beaconList = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.beaconList[i] = Beacon.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.beaconList.forEach((val) => {
      length += Beacon.getMessageSize(val);
    });
    length += _getByteLength(object.message);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'woosh_msgs/BeaconListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0fbfb36b70fad5c240624ba0029865db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    Beacon[] beaconList
    string message
    
    
    
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
    const resolved = new BeaconListResponse(null);
    if (msg.beaconList !== undefined) {
      resolved.beaconList = new Array(msg.beaconList.length);
      for (let i = 0; i < resolved.beaconList.length; ++i) {
        resolved.beaconList[i] = Beacon.Resolve(msg.beaconList[i]);
      }
    }
    else {
      resolved.beaconList = []
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
  Request: BeaconListRequest,
  Response: BeaconListResponse,
  md5sum() { return 'f034c0ec4803c205aaeddc3bfdfaa7fe'; },
  datatype() { return 'woosh_msgs/BeaconList'; }
};
