// Auto-generated. Do not edit!

// (in-package woosh_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let mono_path = require('./mono_path.js');
let bidirect_path = require('./bidirect_path.js');

//-----------------------------------------------------------

class Path_info {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mono_paths = null;
      this.bidirect_paths = null;
    }
    else {
      if (initObj.hasOwnProperty('mono_paths')) {
        this.mono_paths = initObj.mono_paths
      }
      else {
        this.mono_paths = [];
      }
      if (initObj.hasOwnProperty('bidirect_paths')) {
        this.bidirect_paths = initObj.bidirect_paths
      }
      else {
        this.bidirect_paths = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Path_info
    // Serialize message field [mono_paths]
    // Serialize the length for message field [mono_paths]
    bufferOffset = _serializer.uint32(obj.mono_paths.length, buffer, bufferOffset);
    obj.mono_paths.forEach((val) => {
      bufferOffset = mono_path.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [bidirect_paths]
    // Serialize the length for message field [bidirect_paths]
    bufferOffset = _serializer.uint32(obj.bidirect_paths.length, buffer, bufferOffset);
    obj.bidirect_paths.forEach((val) => {
      bufferOffset = bidirect_path.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Path_info
    let len;
    let data = new Path_info(null);
    // Deserialize message field [mono_paths]
    // Deserialize array length for message field [mono_paths]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.mono_paths = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.mono_paths[i] = mono_path.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [bidirect_paths]
    // Deserialize array length for message field [bidirect_paths]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bidirect_paths = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bidirect_paths[i] = bidirect_path.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.mono_paths.forEach((val) => {
      length += mono_path.getMessageSize(val);
    });
    object.bidirect_paths.forEach((val) => {
      length += bidirect_path.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/Path_info';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2de62e876ce2d4454b408d3b3598dd50';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mono_path[] mono_paths  #单向路径集合
    bidirect_path[] bidirect_paths #双向路径集合
    
    ================================================================================
    MSG: woosh_msgs/mono_path
    nav_msgs/Path path
    float32 width
    bool allow_avoid
    
    ================================================================================
    MSG: nav_msgs/Path
    #An array of poses that represents a Path for a robot to follow
    Header header
    geometry_msgs/PoseStamped[] poses
    
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
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    
    ================================================================================
    MSG: woosh_msgs/bidirect_path
    nav_msgs/Path path
    bool allow_avoid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Path_info(null);
    if (msg.mono_paths !== undefined) {
      resolved.mono_paths = new Array(msg.mono_paths.length);
      for (let i = 0; i < resolved.mono_paths.length; ++i) {
        resolved.mono_paths[i] = mono_path.Resolve(msg.mono_paths[i]);
      }
    }
    else {
      resolved.mono_paths = []
    }

    if (msg.bidirect_paths !== undefined) {
      resolved.bidirect_paths = new Array(msg.bidirect_paths.length);
      for (let i = 0; i < resolved.bidirect_paths.length; ++i) {
        resolved.bidirect_paths[i] = bidirect_path.Resolve(msg.bidirect_paths[i]);
      }
    }
    else {
      resolved.bidirect_paths = []
    }

    return resolved;
    }
};

module.exports = Path_info;
