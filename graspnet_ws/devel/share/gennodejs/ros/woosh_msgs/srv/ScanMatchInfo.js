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

class ScanMatchInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.get_scan_match = null;
      this.match_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('get_scan_match')) {
        this.get_scan_match = initObj.get_scan_match
      }
      else {
        this.get_scan_match = false;
      }
      if (initObj.hasOwnProperty('match_pose')) {
        this.match_pose = initObj.match_pose
      }
      else {
        this.match_pose = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ScanMatchInfoRequest
    // Serialize message field [get_scan_match]
    bufferOffset = _serializer.bool(obj.get_scan_match, buffer, bufferOffset);
    // Serialize message field [match_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.match_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ScanMatchInfoRequest
    let len;
    let data = new ScanMatchInfoRequest(null);
    // Deserialize message field [get_scan_match]
    data.get_scan_match = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [match_pose]
    data.match_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.match_pose);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'woosh_msgs/ScanMatchInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e9a6a163e0f51d8a106c2ed6f60d03e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool get_scan_match  #true : get; false: save/update scan match
    geometry_msgs/PoseStamped match_pose
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    const resolved = new ScanMatchInfoRequest(null);
    if (msg.get_scan_match !== undefined) {
      resolved.get_scan_match = msg.get_scan_match;
    }
    else {
      resolved.get_scan_match = false
    }

    if (msg.match_pose !== undefined) {
      resolved.match_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.match_pose)
    }
    else {
      resolved.match_pose = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

class ScanMatchInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.valid = null;
      this.x = null;
      this.iterations = null;
      this.nvalid = null;
      this.error = null;
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
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = [];
      }
      if (initObj.hasOwnProperty('iterations')) {
        this.iterations = initObj.iterations
      }
      else {
        this.iterations = 0;
      }
      if (initObj.hasOwnProperty('nvalid')) {
        this.nvalid = initObj.nvalid
      }
      else {
        this.nvalid = 0;
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ScanMatchInfoResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.int32(obj.valid, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _arraySerializer.float32(obj.x, buffer, bufferOffset, null);
    // Serialize message field [iterations]
    bufferOffset = _serializer.int32(obj.iterations, buffer, bufferOffset);
    // Serialize message field [nvalid]
    bufferOffset = _serializer.int32(obj.nvalid, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.float32(obj.error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ScanMatchInfoResponse
    let len;
    let data = new ScanMatchInfoResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [iterations]
    data.iterations = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [nvalid]
    data.nvalid = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    length += 4 * object.x.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a service object
    return 'woosh_msgs/ScanMatchInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '29caac9bf86f21dd48d6b3114bef1b45';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success   # indicate successful run of triggered service
    string message # informational, e.g. for error messages
    #/** 1 if the result is valid */
    int32 valid
    #/** Scan matching result (x,y,theta) */
    float32[] x
    #/** Number of iterations done */
    int32 iterations
    #/** Number of valid correspondence in the end */
    int32 nvalid
    #/** Total correspondence error */
    float32 error
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ScanMatchInfoResponse(null);
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

    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = []
    }

    if (msg.iterations !== undefined) {
      resolved.iterations = msg.iterations;
    }
    else {
      resolved.iterations = 0
    }

    if (msg.nvalid !== undefined) {
      resolved.nvalid = msg.nvalid;
    }
    else {
      resolved.nvalid = 0
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: ScanMatchInfoRequest,
  Response: ScanMatchInfoResponse,
  md5sum() { return '33f658e01fd3940268f71981c2c56be5'; },
  datatype() { return 'woosh_msgs/ScanMatchInfo'; }
};
