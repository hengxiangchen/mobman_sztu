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

class Parameter {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.wheelPerimeter = null;
      this.wheelDistant = null;
      this.ratioLeft = null;
      this.ratioRight = null;
      this.pulsePerCircle = null;
      this.maxRPM = null;
      this.minSpeed = null;
      this.maxLinear = null;
      this.maxAngular = null;
      this.joystickMaxLinear = null;
      this.joystickMaxAngular = null;
      this.maxSpeed = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('wheelPerimeter')) {
        this.wheelPerimeter = initObj.wheelPerimeter
      }
      else {
        this.wheelPerimeter = 0.0;
      }
      if (initObj.hasOwnProperty('wheelDistant')) {
        this.wheelDistant = initObj.wheelDistant
      }
      else {
        this.wheelDistant = 0.0;
      }
      if (initObj.hasOwnProperty('ratioLeft')) {
        this.ratioLeft = initObj.ratioLeft
      }
      else {
        this.ratioLeft = 0.0;
      }
      if (initObj.hasOwnProperty('ratioRight')) {
        this.ratioRight = initObj.ratioRight
      }
      else {
        this.ratioRight = 0.0;
      }
      if (initObj.hasOwnProperty('pulsePerCircle')) {
        this.pulsePerCircle = initObj.pulsePerCircle
      }
      else {
        this.pulsePerCircle = 0;
      }
      if (initObj.hasOwnProperty('maxRPM')) {
        this.maxRPM = initObj.maxRPM
      }
      else {
        this.maxRPM = 0.0;
      }
      if (initObj.hasOwnProperty('minSpeed')) {
        this.minSpeed = initObj.minSpeed
      }
      else {
        this.minSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('maxLinear')) {
        this.maxLinear = initObj.maxLinear
      }
      else {
        this.maxLinear = 0.0;
      }
      if (initObj.hasOwnProperty('maxAngular')) {
        this.maxAngular = initObj.maxAngular
      }
      else {
        this.maxAngular = 0.0;
      }
      if (initObj.hasOwnProperty('joystickMaxLinear')) {
        this.joystickMaxLinear = initObj.joystickMaxLinear
      }
      else {
        this.joystickMaxLinear = 0.0;
      }
      if (initObj.hasOwnProperty('joystickMaxAngular')) {
        this.joystickMaxAngular = initObj.joystickMaxAngular
      }
      else {
        this.joystickMaxAngular = 0.0;
      }
      if (initObj.hasOwnProperty('maxSpeed')) {
        this.maxSpeed = initObj.maxSpeed
      }
      else {
        this.maxSpeed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Parameter
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [wheelPerimeter]
    bufferOffset = _serializer.float32(obj.wheelPerimeter, buffer, bufferOffset);
    // Serialize message field [wheelDistant]
    bufferOffset = _serializer.float32(obj.wheelDistant, buffer, bufferOffset);
    // Serialize message field [ratioLeft]
    bufferOffset = _serializer.float32(obj.ratioLeft, buffer, bufferOffset);
    // Serialize message field [ratioRight]
    bufferOffset = _serializer.float32(obj.ratioRight, buffer, bufferOffset);
    // Serialize message field [pulsePerCircle]
    bufferOffset = _serializer.uint32(obj.pulsePerCircle, buffer, bufferOffset);
    // Serialize message field [maxRPM]
    bufferOffset = _serializer.float32(obj.maxRPM, buffer, bufferOffset);
    // Serialize message field [minSpeed]
    bufferOffset = _serializer.float32(obj.minSpeed, buffer, bufferOffset);
    // Serialize message field [maxLinear]
    bufferOffset = _serializer.float32(obj.maxLinear, buffer, bufferOffset);
    // Serialize message field [maxAngular]
    bufferOffset = _serializer.float32(obj.maxAngular, buffer, bufferOffset);
    // Serialize message field [joystickMaxLinear]
    bufferOffset = _serializer.float32(obj.joystickMaxLinear, buffer, bufferOffset);
    // Serialize message field [joystickMaxAngular]
    bufferOffset = _serializer.float32(obj.joystickMaxAngular, buffer, bufferOffset);
    // Serialize message field [maxSpeed]
    bufferOffset = _serializer.float32(obj.maxSpeed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Parameter
    let len;
    let data = new Parameter(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [wheelPerimeter]
    data.wheelPerimeter = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheelDistant]
    data.wheelDistant = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ratioLeft]
    data.ratioLeft = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ratioRight]
    data.ratioRight = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pulsePerCircle]
    data.pulsePerCircle = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [maxRPM]
    data.maxRPM = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [minSpeed]
    data.minSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [maxLinear]
    data.maxLinear = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [maxAngular]
    data.maxAngular = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [joystickMaxLinear]
    data.joystickMaxLinear = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [joystickMaxAngular]
    data.joystickMaxAngular = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [maxSpeed]
    data.maxSpeed = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/Parameter';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2433376ffe16488ef10a6bb56ed7b4a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Parameter(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.wheelPerimeter !== undefined) {
      resolved.wheelPerimeter = msg.wheelPerimeter;
    }
    else {
      resolved.wheelPerimeter = 0.0
    }

    if (msg.wheelDistant !== undefined) {
      resolved.wheelDistant = msg.wheelDistant;
    }
    else {
      resolved.wheelDistant = 0.0
    }

    if (msg.ratioLeft !== undefined) {
      resolved.ratioLeft = msg.ratioLeft;
    }
    else {
      resolved.ratioLeft = 0.0
    }

    if (msg.ratioRight !== undefined) {
      resolved.ratioRight = msg.ratioRight;
    }
    else {
      resolved.ratioRight = 0.0
    }

    if (msg.pulsePerCircle !== undefined) {
      resolved.pulsePerCircle = msg.pulsePerCircle;
    }
    else {
      resolved.pulsePerCircle = 0
    }

    if (msg.maxRPM !== undefined) {
      resolved.maxRPM = msg.maxRPM;
    }
    else {
      resolved.maxRPM = 0.0
    }

    if (msg.minSpeed !== undefined) {
      resolved.minSpeed = msg.minSpeed;
    }
    else {
      resolved.minSpeed = 0.0
    }

    if (msg.maxLinear !== undefined) {
      resolved.maxLinear = msg.maxLinear;
    }
    else {
      resolved.maxLinear = 0.0
    }

    if (msg.maxAngular !== undefined) {
      resolved.maxAngular = msg.maxAngular;
    }
    else {
      resolved.maxAngular = 0.0
    }

    if (msg.joystickMaxLinear !== undefined) {
      resolved.joystickMaxLinear = msg.joystickMaxLinear;
    }
    else {
      resolved.joystickMaxLinear = 0.0
    }

    if (msg.joystickMaxAngular !== undefined) {
      resolved.joystickMaxAngular = msg.joystickMaxAngular;
    }
    else {
      resolved.joystickMaxAngular = 0.0
    }

    if (msg.maxSpeed !== undefined) {
      resolved.maxSpeed = msg.maxSpeed;
    }
    else {
      resolved.maxSpeed = 0.0
    }

    return resolved;
    }
};

module.exports = Parameter;
