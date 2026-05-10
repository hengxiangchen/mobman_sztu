// Auto-generated. Do not edit!

// (in-package woosh_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let deployment_markers = require('../msg/deployment_markers.js');
let reflector_errorID_group = require('../msg/reflector_errorID_group.js');

//-----------------------------------------------------------

class DeploymentRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DeploymentRequest
    // Serialize message field [type]
    bufferOffset = _serializer.int8(obj.type, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.int8(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeploymentRequest
    let len;
    let data = new DeploymentRequest(null);
    // Deserialize message field [type]
    data.type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'woosh_msgs/DeploymentRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9e2945a6922bafcd9fd114e002c6a80';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 type   #0:beacons  1:ar_tag  2:reflector
    int8 mode   #0:开始采集  1:取消采集（beacons多组数据生效）  2:reflector校验
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DeploymentRequest(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    return resolved;
    }
};

class DeploymentResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.point1Valid = null;
      this.point2Valid = null;
      this.point3Valid = null;
      this.collectedNumber = null;
      this.numberOfFailBeacons = null;
      this.markers = null;
      this.reflector_errorID_groups = null;
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
      if (initObj.hasOwnProperty('point1Valid')) {
        this.point1Valid = initObj.point1Valid
      }
      else {
        this.point1Valid = false;
      }
      if (initObj.hasOwnProperty('point2Valid')) {
        this.point2Valid = initObj.point2Valid
      }
      else {
        this.point2Valid = false;
      }
      if (initObj.hasOwnProperty('point3Valid')) {
        this.point3Valid = initObj.point3Valid
      }
      else {
        this.point3Valid = false;
      }
      if (initObj.hasOwnProperty('collectedNumber')) {
        this.collectedNumber = initObj.collectedNumber
      }
      else {
        this.collectedNumber = 0;
      }
      if (initObj.hasOwnProperty('numberOfFailBeacons')) {
        this.numberOfFailBeacons = initObj.numberOfFailBeacons
      }
      else {
        this.numberOfFailBeacons = 0;
      }
      if (initObj.hasOwnProperty('markers')) {
        this.markers = initObj.markers
      }
      else {
        this.markers = new deployment_markers();
      }
      if (initObj.hasOwnProperty('reflector_errorID_groups')) {
        this.reflector_errorID_groups = initObj.reflector_errorID_groups
      }
      else {
        this.reflector_errorID_groups = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DeploymentResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [point1Valid]
    bufferOffset = _serializer.bool(obj.point1Valid, buffer, bufferOffset);
    // Serialize message field [point2Valid]
    bufferOffset = _serializer.bool(obj.point2Valid, buffer, bufferOffset);
    // Serialize message field [point3Valid]
    bufferOffset = _serializer.bool(obj.point3Valid, buffer, bufferOffset);
    // Serialize message field [collectedNumber]
    bufferOffset = _serializer.uint8(obj.collectedNumber, buffer, bufferOffset);
    // Serialize message field [numberOfFailBeacons]
    bufferOffset = _serializer.int8(obj.numberOfFailBeacons, buffer, bufferOffset);
    // Serialize message field [markers]
    bufferOffset = deployment_markers.serialize(obj.markers, buffer, bufferOffset);
    // Serialize message field [reflector_errorID_groups]
    // Serialize the length for message field [reflector_errorID_groups]
    bufferOffset = _serializer.uint32(obj.reflector_errorID_groups.length, buffer, bufferOffset);
    obj.reflector_errorID_groups.forEach((val) => {
      bufferOffset = reflector_errorID_group.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeploymentResponse
    let len;
    let data = new DeploymentResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [point1Valid]
    data.point1Valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [point2Valid]
    data.point2Valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [point3Valid]
    data.point3Valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [collectedNumber]
    data.collectedNumber = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [numberOfFailBeacons]
    data.numberOfFailBeacons = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [markers]
    data.markers = deployment_markers.deserialize(buffer, bufferOffset);
    // Deserialize message field [reflector_errorID_groups]
    // Deserialize array length for message field [reflector_errorID_groups]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.reflector_errorID_groups = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.reflector_errorID_groups[i] = reflector_errorID_group.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    length += deployment_markers.getMessageSize(object.markers);
    object.reflector_errorID_groups.forEach((val) => {
      length += reflector_errorID_group.getMessageSize(val);
    });
    return length + 14;
  }

  static datatype() {
    // Returns string type for a service object
    return 'woosh_msgs/DeploymentResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '041a6fb2f9dc6c2f664d067e2b4b5e09';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success   # indicate successful run of triggered service
    string message # informational, e.g. for error messages
    bool point1Valid
    bool point2Valid
    bool point3Valid
    uint8 collectedNumber       #表示此时已经收集几个数据了（总共需要三个）
    int8 numberOfFailBeacons     #三次采集后未发布的uwb基站数
    
    deployment_markers markers  #基于map坐标系
    
    reflector_errorID_group[] reflector_errorID_groups
    
    
    ================================================================================
    MSG: woosh_msgs/deployment_markers
    Header header
    deployment_marker[] markers
    
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
    MSG: woosh_msgs/deployment_marker
    uint32 markerID
    geometry_msgs/Pose pose
    uint16  group
    
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
    MSG: woosh_msgs/reflector_errorID_group
    reflector_errorID[] reflector_errorIDs
    
    ================================================================================
    MSG: woosh_msgs/reflector_errorID
    uint32 ID1
    uint32 ID2
    uint32 ID3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DeploymentResponse(null);
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

    if (msg.point1Valid !== undefined) {
      resolved.point1Valid = msg.point1Valid;
    }
    else {
      resolved.point1Valid = false
    }

    if (msg.point2Valid !== undefined) {
      resolved.point2Valid = msg.point2Valid;
    }
    else {
      resolved.point2Valid = false
    }

    if (msg.point3Valid !== undefined) {
      resolved.point3Valid = msg.point3Valid;
    }
    else {
      resolved.point3Valid = false
    }

    if (msg.collectedNumber !== undefined) {
      resolved.collectedNumber = msg.collectedNumber;
    }
    else {
      resolved.collectedNumber = 0
    }

    if (msg.numberOfFailBeacons !== undefined) {
      resolved.numberOfFailBeacons = msg.numberOfFailBeacons;
    }
    else {
      resolved.numberOfFailBeacons = 0
    }

    if (msg.markers !== undefined) {
      resolved.markers = deployment_markers.Resolve(msg.markers)
    }
    else {
      resolved.markers = new deployment_markers()
    }

    if (msg.reflector_errorID_groups !== undefined) {
      resolved.reflector_errorID_groups = new Array(msg.reflector_errorID_groups.length);
      for (let i = 0; i < resolved.reflector_errorID_groups.length; ++i) {
        resolved.reflector_errorID_groups[i] = reflector_errorID_group.Resolve(msg.reflector_errorID_groups[i]);
      }
    }
    else {
      resolved.reflector_errorID_groups = []
    }

    return resolved;
    }
};

module.exports = {
  Request: DeploymentRequest,
  Response: DeploymentResponse,
  md5sum() { return '57f1fbe19bd792986d22fb16590e842c'; },
  datatype() { return 'woosh_msgs/Deployment'; }
};
