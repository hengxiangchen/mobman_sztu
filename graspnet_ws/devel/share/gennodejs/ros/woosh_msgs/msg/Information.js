// Auto-generated. Do not edit!

// (in-package woosh_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Parameter = require('./Parameter.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Information {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.hardwareVersion = null;
      this.softwareVersion = null;
      this.IAPSoftwareVersion = null;
      this.movebaseType = null;
      this.parameter = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('hardwareVersion')) {
        this.hardwareVersion = initObj.hardwareVersion
      }
      else {
        this.hardwareVersion = '';
      }
      if (initObj.hasOwnProperty('softwareVersion')) {
        this.softwareVersion = initObj.softwareVersion
      }
      else {
        this.softwareVersion = '';
      }
      if (initObj.hasOwnProperty('IAPSoftwareVersion')) {
        this.IAPSoftwareVersion = initObj.IAPSoftwareVersion
      }
      else {
        this.IAPSoftwareVersion = '';
      }
      if (initObj.hasOwnProperty('movebaseType')) {
        this.movebaseType = initObj.movebaseType
      }
      else {
        this.movebaseType = '';
      }
      if (initObj.hasOwnProperty('parameter')) {
        this.parameter = initObj.parameter
      }
      else {
        this.parameter = new Parameter();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Information
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [hardwareVersion]
    bufferOffset = _serializer.string(obj.hardwareVersion, buffer, bufferOffset);
    // Serialize message field [softwareVersion]
    bufferOffset = _serializer.string(obj.softwareVersion, buffer, bufferOffset);
    // Serialize message field [IAPSoftwareVersion]
    bufferOffset = _serializer.string(obj.IAPSoftwareVersion, buffer, bufferOffset);
    // Serialize message field [movebaseType]
    bufferOffset = _serializer.string(obj.movebaseType, buffer, bufferOffset);
    // Serialize message field [parameter]
    bufferOffset = Parameter.serialize(obj.parameter, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Information
    let len;
    let data = new Information(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [hardwareVersion]
    data.hardwareVersion = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [softwareVersion]
    data.softwareVersion = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [IAPSoftwareVersion]
    data.IAPSoftwareVersion = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [movebaseType]
    data.movebaseType = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [parameter]
    data.parameter = Parameter.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.hardwareVersion);
    length += _getByteLength(object.softwareVersion);
    length += _getByteLength(object.IAPSoftwareVersion);
    length += _getByteLength(object.movebaseType);
    length += Parameter.getMessageSize(object.parameter);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/Information';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f0fb1764f6f87e8178f98663f3ce6a9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string hardwareVersion
    string softwareVersion
    string IAPSoftwareVersion
    string movebaseType
    Parameter parameter
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
    MSG: woosh_msgs/Parameter
    Header header
    float32 wheelPerimeter
    float32 wheelDistant
    float32 ratioLeft
    float32 ratioRight
    uint32 pulsePerCircle
    float32 maxRPM
    float32 minSpeed
    float32 maxLinear
    float32 maxAngular
    float32 joystickMaxLinear
    float32 joystickMaxAngular
    float32 maxSpeed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Information(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.hardwareVersion !== undefined) {
      resolved.hardwareVersion = msg.hardwareVersion;
    }
    else {
      resolved.hardwareVersion = ''
    }

    if (msg.softwareVersion !== undefined) {
      resolved.softwareVersion = msg.softwareVersion;
    }
    else {
      resolved.softwareVersion = ''
    }

    if (msg.IAPSoftwareVersion !== undefined) {
      resolved.IAPSoftwareVersion = msg.IAPSoftwareVersion;
    }
    else {
      resolved.IAPSoftwareVersion = ''
    }

    if (msg.movebaseType !== undefined) {
      resolved.movebaseType = msg.movebaseType;
    }
    else {
      resolved.movebaseType = ''
    }

    if (msg.parameter !== undefined) {
      resolved.parameter = Parameter.Resolve(msg.parameter)
    }
    else {
      resolved.parameter = new Parameter()
    }

    return resolved;
    }
};

module.exports = Information;
