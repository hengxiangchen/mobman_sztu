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

let ArTagPose = require('../msg/ArTagPose.js');

//-----------------------------------------------------------

class ArTrackLocateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArTrackLocateRequest
    // Serialize message field [type]
    bufferOffset = _serializer.int8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArTrackLocateRequest
    let len;
    let data = new ArTrackLocateRequest(null);
    // Deserialize message field [type]
    data.type = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'woosh_msgs/ArTrackLocateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3ab5b4c6da3cf583c5328078958d9fe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 type   #0:start
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArTrackLocateRequest(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

class ArTrackLocateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.ar_tag_pose = null;
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
      if (initObj.hasOwnProperty('ar_tag_pose')) {
        this.ar_tag_pose = initObj.ar_tag_pose
      }
      else {
        this.ar_tag_pose = new ArTagPose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArTrackLocateResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [ar_tag_pose]
    bufferOffset = ArTagPose.serialize(obj.ar_tag_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArTrackLocateResponse
    let len;
    let data = new ArTrackLocateResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ar_tag_pose]
    data.ar_tag_pose = ArTagPose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 89;
  }

  static datatype() {
    // Returns string type for a service object
    return 'woosh_msgs/ArTrackLocateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '343796bef7e4c0b5a4ec24bad8f1fdd2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success   # indicate successful run of triggered service
    string message # informational, e.g. for error messages
    ArTagPose ar_tag_pose
    
    
    ================================================================================
    MSG: woosh_msgs/ArTagPose
    geometry_msgs/Point distination
    geometry_msgs/Pose tag_pose
    int32 tag_id
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
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
    const resolved = new ArTrackLocateResponse(null);
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

    if (msg.ar_tag_pose !== undefined) {
      resolved.ar_tag_pose = ArTagPose.Resolve(msg.ar_tag_pose)
    }
    else {
      resolved.ar_tag_pose = new ArTagPose()
    }

    return resolved;
    }
};

module.exports = {
  Request: ArTrackLocateRequest,
  Response: ArTrackLocateResponse,
  md5sum() { return '96c3b80438255363fd436571a1a57861'; },
  datatype() { return 'woosh_msgs/ArTrackLocate'; }
};
