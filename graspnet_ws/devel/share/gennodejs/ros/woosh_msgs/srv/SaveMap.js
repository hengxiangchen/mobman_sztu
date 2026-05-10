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
let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SaveMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pathName = null;
      this.useSavedMap = null;
      this.beaconList = null;
      this.eraseBeaconList = null;
      this.topic = null;
      this.map = null;
    }
    else {
      if (initObj.hasOwnProperty('pathName')) {
        this.pathName = initObj.pathName
      }
      else {
        this.pathName = '';
      }
      if (initObj.hasOwnProperty('useSavedMap')) {
        this.useSavedMap = initObj.useSavedMap
      }
      else {
        this.useSavedMap = false;
      }
      if (initObj.hasOwnProperty('beaconList')) {
        this.beaconList = initObj.beaconList
      }
      else {
        this.beaconList = [];
      }
      if (initObj.hasOwnProperty('eraseBeaconList')) {
        this.eraseBeaconList = initObj.eraseBeaconList
      }
      else {
        this.eraseBeaconList = false;
      }
      if (initObj.hasOwnProperty('topic')) {
        this.topic = initObj.topic
      }
      else {
        this.topic = '';
      }
      if (initObj.hasOwnProperty('map')) {
        this.map = initObj.map
      }
      else {
        this.map = new nav_msgs.msg.OccupancyGrid();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveMapRequest
    // Serialize message field [pathName]
    bufferOffset = _serializer.string(obj.pathName, buffer, bufferOffset);
    // Serialize message field [useSavedMap]
    bufferOffset = _serializer.bool(obj.useSavedMap, buffer, bufferOffset);
    // Serialize message field [beaconList]
    // Serialize the length for message field [beaconList]
    bufferOffset = _serializer.uint32(obj.beaconList.length, buffer, bufferOffset);
    obj.beaconList.forEach((val) => {
      bufferOffset = Beacon.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [eraseBeaconList]
    bufferOffset = _serializer.bool(obj.eraseBeaconList, buffer, bufferOffset);
    // Serialize message field [topic]
    bufferOffset = _serializer.string(obj.topic, buffer, bufferOffset);
    // Serialize message field [map]
    bufferOffset = nav_msgs.msg.OccupancyGrid.serialize(obj.map, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveMapRequest
    let len;
    let data = new SaveMapRequest(null);
    // Deserialize message field [pathName]
    data.pathName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [useSavedMap]
    data.useSavedMap = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [beaconList]
    // Deserialize array length for message field [beaconList]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.beaconList = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.beaconList[i] = Beacon.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [eraseBeaconList]
    data.eraseBeaconList = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [topic]
    data.topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [map]
    data.map = nav_msgs.msg.OccupancyGrid.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.pathName);
    object.beaconList.forEach((val) => {
      length += Beacon.getMessageSize(val);
    });
    length += _getByteLength(object.topic);
    length += nav_msgs.msg.OccupancyGrid.getMessageSize(object.map);
    return length + 14;
  }

  static datatype() {
    // Returns string type for a service object
    return 'woosh_msgs/SaveMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4721c06097e4bc02b3433ba539b2116e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # map_server
    
    # if pathName == "", use "./default_map"
    string pathName
    
    # true: use this map as static map the map_server pub, when call startServe last time
    bool useSavedMap
    
    # for map yaml
    Beacon[] beaconList #exist data: use new data replace old data; empty: do nothing
    bool eraseBeaconList #true: delete all beacon data from yaml (only if beaconList is empty); false: do nothing
    
    # For map image
    
    # topic != "": save the map from this topic
    # topic == "": save nav_msgs/OccupancyGrid data
    string topic
    
    # only if topic == "", this map data will be used
    nav_msgs/OccupancyGrid map
    
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
    ================================================================================
    MSG: nav_msgs/OccupancyGrid
    # This represents a 2-D grid map, in which each cell represents the probability of
    # occupancy.
    
    Header header 
    
    #MetaData for the map
    MapMetaData info
    
    # The map data, in row-major order, starting with (0,0).  Occupancy
    # probabilities are in the range [0,100].  Unknown is -1.
    int8[] data
    
    ================================================================================
    MSG: nav_msgs/MapMetaData
    # This hold basic information about the characterists of the OccupancyGrid
    
    # The time at which the map was loaded
    time map_load_time
    # The map resolution [m/cell]
    float32 resolution
    # Map width [cells]
    uint32 width
    # Map height [cells]
    uint32 height
    # The origin of the map [m, m, rad].  This is the real-world pose of the
    # cell (0,0) in the map.
    geometry_msgs/Pose origin
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
    const resolved = new SaveMapRequest(null);
    if (msg.pathName !== undefined) {
      resolved.pathName = msg.pathName;
    }
    else {
      resolved.pathName = ''
    }

    if (msg.useSavedMap !== undefined) {
      resolved.useSavedMap = msg.useSavedMap;
    }
    else {
      resolved.useSavedMap = false
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

    if (msg.eraseBeaconList !== undefined) {
      resolved.eraseBeaconList = msg.eraseBeaconList;
    }
    else {
      resolved.eraseBeaconList = false
    }

    if (msg.topic !== undefined) {
      resolved.topic = msg.topic;
    }
    else {
      resolved.topic = ''
    }

    if (msg.map !== undefined) {
      resolved.map = nav_msgs.msg.OccupancyGrid.Resolve(msg.map)
    }
    else {
      resolved.map = new nav_msgs.msg.OccupancyGrid()
    }

    return resolved;
    }
};

class SaveMapResponse {
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
    // Serializes a message object of type SaveMapResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveMapResponse
    let len;
    let data = new SaveMapResponse(null);
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
    return 'woosh_msgs/SaveMapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success   # indicate successful run of triggered service
    string message # informational, e.g. for error messages
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveMapResponse(null);
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
  Request: SaveMapRequest,
  Response: SaveMapResponse,
  md5sum() { return '856838efac140246f68b796a2c37b1e1'; },
  datatype() { return 'woosh_msgs/SaveMap'; }
};
