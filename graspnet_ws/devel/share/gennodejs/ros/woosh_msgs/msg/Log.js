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

//-----------------------------------------------------------

class Log {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.linearX = null;
      this.linearY = null;
      this.angularZ = null;
      this.odometryX = null;
      this.odometryY = null;
      this.odometryTheta = null;
      this.odometryImuTheta = null;
      this.odometryLinearX = null;
      this.odometryLinearY = null;
      this.odometryAngularZ = null;
      this.pwmLeft = null;
      this.pwmRight = null;
      this.rSpeedLeft = null;
      this.rSpeedRight = null;
      this.pulseLeft = null;
      this.pulseRight = null;
      this.errorType = null;
      this.errorStatus = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('linearX')) {
        this.linearX = initObj.linearX
      }
      else {
        this.linearX = 0.0;
      }
      if (initObj.hasOwnProperty('linearY')) {
        this.linearY = initObj.linearY
      }
      else {
        this.linearY = 0.0;
      }
      if (initObj.hasOwnProperty('angularZ')) {
        this.angularZ = initObj.angularZ
      }
      else {
        this.angularZ = 0.0;
      }
      if (initObj.hasOwnProperty('odometryX')) {
        this.odometryX = initObj.odometryX
      }
      else {
        this.odometryX = 0.0;
      }
      if (initObj.hasOwnProperty('odometryY')) {
        this.odometryY = initObj.odometryY
      }
      else {
        this.odometryY = 0.0;
      }
      if (initObj.hasOwnProperty('odometryTheta')) {
        this.odometryTheta = initObj.odometryTheta
      }
      else {
        this.odometryTheta = 0.0;
      }
      if (initObj.hasOwnProperty('odometryImuTheta')) {
        this.odometryImuTheta = initObj.odometryImuTheta
      }
      else {
        this.odometryImuTheta = 0.0;
      }
      if (initObj.hasOwnProperty('odometryLinearX')) {
        this.odometryLinearX = initObj.odometryLinearX
      }
      else {
        this.odometryLinearX = 0.0;
      }
      if (initObj.hasOwnProperty('odometryLinearY')) {
        this.odometryLinearY = initObj.odometryLinearY
      }
      else {
        this.odometryLinearY = 0.0;
      }
      if (initObj.hasOwnProperty('odometryAngularZ')) {
        this.odometryAngularZ = initObj.odometryAngularZ
      }
      else {
        this.odometryAngularZ = 0.0;
      }
      if (initObj.hasOwnProperty('pwmLeft')) {
        this.pwmLeft = initObj.pwmLeft
      }
      else {
        this.pwmLeft = 0.0;
      }
      if (initObj.hasOwnProperty('pwmRight')) {
        this.pwmRight = initObj.pwmRight
      }
      else {
        this.pwmRight = 0.0;
      }
      if (initObj.hasOwnProperty('rSpeedLeft')) {
        this.rSpeedLeft = initObj.rSpeedLeft
      }
      else {
        this.rSpeedLeft = 0.0;
      }
      if (initObj.hasOwnProperty('rSpeedRight')) {
        this.rSpeedRight = initObj.rSpeedRight
      }
      else {
        this.rSpeedRight = 0.0;
      }
      if (initObj.hasOwnProperty('pulseLeft')) {
        this.pulseLeft = initObj.pulseLeft
      }
      else {
        this.pulseLeft = 0;
      }
      if (initObj.hasOwnProperty('pulseRight')) {
        this.pulseRight = initObj.pulseRight
      }
      else {
        this.pulseRight = 0;
      }
      if (initObj.hasOwnProperty('errorType')) {
        this.errorType = initObj.errorType
      }
      else {
        this.errorType = 0;
      }
      if (initObj.hasOwnProperty('errorStatus')) {
        this.errorStatus = initObj.errorStatus
      }
      else {
        this.errorStatus = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Log
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [linearX]
    bufferOffset = _serializer.float32(obj.linearX, buffer, bufferOffset);
    // Serialize message field [linearY]
    bufferOffset = _serializer.float32(obj.linearY, buffer, bufferOffset);
    // Serialize message field [angularZ]
    bufferOffset = _serializer.float32(obj.angularZ, buffer, bufferOffset);
    // Serialize message field [odometryX]
    bufferOffset = _serializer.float32(obj.odometryX, buffer, bufferOffset);
    // Serialize message field [odometryY]
    bufferOffset = _serializer.float32(obj.odometryY, buffer, bufferOffset);
    // Serialize message field [odometryTheta]
    bufferOffset = _serializer.float32(obj.odometryTheta, buffer, bufferOffset);
    // Serialize message field [odometryImuTheta]
    bufferOffset = _serializer.float32(obj.odometryImuTheta, buffer, bufferOffset);
    // Serialize message field [odometryLinearX]
    bufferOffset = _serializer.float32(obj.odometryLinearX, buffer, bufferOffset);
    // Serialize message field [odometryLinearY]
    bufferOffset = _serializer.float32(obj.odometryLinearY, buffer, bufferOffset);
    // Serialize message field [odometryAngularZ]
    bufferOffset = _serializer.float32(obj.odometryAngularZ, buffer, bufferOffset);
    // Serialize message field [pwmLeft]
    bufferOffset = _serializer.float32(obj.pwmLeft, buffer, bufferOffset);
    // Serialize message field [pwmRight]
    bufferOffset = _serializer.float32(obj.pwmRight, buffer, bufferOffset);
    // Serialize message field [rSpeedLeft]
    bufferOffset = _serializer.float32(obj.rSpeedLeft, buffer, bufferOffset);
    // Serialize message field [rSpeedRight]
    bufferOffset = _serializer.float32(obj.rSpeedRight, buffer, bufferOffset);
    // Serialize message field [pulseLeft]
    bufferOffset = _serializer.int64(obj.pulseLeft, buffer, bufferOffset);
    // Serialize message field [pulseRight]
    bufferOffset = _serializer.int64(obj.pulseRight, buffer, bufferOffset);
    // Serialize message field [errorType]
    bufferOffset = _serializer.uint8(obj.errorType, buffer, bufferOffset);
    // Serialize message field [errorStatus]
    bufferOffset = _serializer.uint8(obj.errorStatus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Log
    let len;
    let data = new Log(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [linearX]
    data.linearX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [linearY]
    data.linearY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angularZ]
    data.angularZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [odometryX]
    data.odometryX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [odometryY]
    data.odometryY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [odometryTheta]
    data.odometryTheta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [odometryImuTheta]
    data.odometryImuTheta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [odometryLinearX]
    data.odometryLinearX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [odometryLinearY]
    data.odometryLinearY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [odometryAngularZ]
    data.odometryAngularZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pwmLeft]
    data.pwmLeft = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pwmRight]
    data.pwmRight = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rSpeedLeft]
    data.rSpeedLeft = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rSpeedRight]
    data.rSpeedRight = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pulseLeft]
    data.pulseLeft = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [pulseRight]
    data.pulseRight = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [errorType]
    data.errorType = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [errorStatus]
    data.errorStatus = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 74;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/Log';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '400a739358edc0a0d82f935b706445f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float32 linearX
    float32 linearY
    float32 angularZ
    float32 odometryX
    float32 odometryY
    float32 odometryTheta
    float32 odometryImuTheta
    float32 odometryLinearX
    float32 odometryLinearY
    float32 odometryAngularZ
    float32 pwmLeft
    float32 pwmRight
    float32 rSpeedLeft
    float32 rSpeedRight
    int64 pulseLeft
    int64 pulseRight
    uint8 errorType
    uint8 errorStatus
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Log(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.linearX !== undefined) {
      resolved.linearX = msg.linearX;
    }
    else {
      resolved.linearX = 0.0
    }

    if (msg.linearY !== undefined) {
      resolved.linearY = msg.linearY;
    }
    else {
      resolved.linearY = 0.0
    }

    if (msg.angularZ !== undefined) {
      resolved.angularZ = msg.angularZ;
    }
    else {
      resolved.angularZ = 0.0
    }

    if (msg.odometryX !== undefined) {
      resolved.odometryX = msg.odometryX;
    }
    else {
      resolved.odometryX = 0.0
    }

    if (msg.odometryY !== undefined) {
      resolved.odometryY = msg.odometryY;
    }
    else {
      resolved.odometryY = 0.0
    }

    if (msg.odometryTheta !== undefined) {
      resolved.odometryTheta = msg.odometryTheta;
    }
    else {
      resolved.odometryTheta = 0.0
    }

    if (msg.odometryImuTheta !== undefined) {
      resolved.odometryImuTheta = msg.odometryImuTheta;
    }
    else {
      resolved.odometryImuTheta = 0.0
    }

    if (msg.odometryLinearX !== undefined) {
      resolved.odometryLinearX = msg.odometryLinearX;
    }
    else {
      resolved.odometryLinearX = 0.0
    }

    if (msg.odometryLinearY !== undefined) {
      resolved.odometryLinearY = msg.odometryLinearY;
    }
    else {
      resolved.odometryLinearY = 0.0
    }

    if (msg.odometryAngularZ !== undefined) {
      resolved.odometryAngularZ = msg.odometryAngularZ;
    }
    else {
      resolved.odometryAngularZ = 0.0
    }

    if (msg.pwmLeft !== undefined) {
      resolved.pwmLeft = msg.pwmLeft;
    }
    else {
      resolved.pwmLeft = 0.0
    }

    if (msg.pwmRight !== undefined) {
      resolved.pwmRight = msg.pwmRight;
    }
    else {
      resolved.pwmRight = 0.0
    }

    if (msg.rSpeedLeft !== undefined) {
      resolved.rSpeedLeft = msg.rSpeedLeft;
    }
    else {
      resolved.rSpeedLeft = 0.0
    }

    if (msg.rSpeedRight !== undefined) {
      resolved.rSpeedRight = msg.rSpeedRight;
    }
    else {
      resolved.rSpeedRight = 0.0
    }

    if (msg.pulseLeft !== undefined) {
      resolved.pulseLeft = msg.pulseLeft;
    }
    else {
      resolved.pulseLeft = 0
    }

    if (msg.pulseRight !== undefined) {
      resolved.pulseRight = msg.pulseRight;
    }
    else {
      resolved.pulseRight = 0
    }

    if (msg.errorType !== undefined) {
      resolved.errorType = msg.errorType;
    }
    else {
      resolved.errorType = 0
    }

    if (msg.errorStatus !== undefined) {
      resolved.errorStatus = msg.errorStatus;
    }
    else {
      resolved.errorStatus = 0
    }

    return resolved;
    }
};

module.exports = Log;
