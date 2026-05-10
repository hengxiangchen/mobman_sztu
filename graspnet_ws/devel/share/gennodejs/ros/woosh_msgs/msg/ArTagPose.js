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

class ArTagPose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distination = null;
      this.tag_pose = null;
      this.tag_id = null;
    }
    else {
      if (initObj.hasOwnProperty('distination')) {
        this.distination = initObj.distination
      }
      else {
        this.distination = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('tag_pose')) {
        this.tag_pose = initObj.tag_pose
      }
      else {
        this.tag_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('tag_id')) {
        this.tag_id = initObj.tag_id
      }
      else {
        this.tag_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArTagPose
    // Serialize message field [distination]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.distination, buffer, bufferOffset);
    // Serialize message field [tag_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.tag_pose, buffer, bufferOffset);
    // Serialize message field [tag_id]
    bufferOffset = _serializer.int32(obj.tag_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArTagPose
    let len;
    let data = new ArTagPose(null);
    // Deserialize message field [distination]
    data.distination = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [tag_pose]
    data.tag_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [tag_id]
    data.tag_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 84;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/ArTagPose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c61879d8040fe8796fb4042d4277e94';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ArTagPose(null);
    if (msg.distination !== undefined) {
      resolved.distination = geometry_msgs.msg.Point.Resolve(msg.distination)
    }
    else {
      resolved.distination = new geometry_msgs.msg.Point()
    }

    if (msg.tag_pose !== undefined) {
      resolved.tag_pose = geometry_msgs.msg.Pose.Resolve(msg.tag_pose)
    }
    else {
      resolved.tag_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.tag_id !== undefined) {
      resolved.tag_id = msg.tag_id;
    }
    else {
      resolved.tag_id = 0
    }

    return resolved;
    }
};

module.exports = ArTagPose;
