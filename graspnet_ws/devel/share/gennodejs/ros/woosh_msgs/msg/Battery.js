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

class Battery {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.submodule = null;
      this.batteryPercentage = null;
      this.chargeMode = null;
      this.chargeStatus = null;
      this.batteryVoltage = null;
      this.batteryCurrent = null;
      this.timeRemain = null;
      this.tempMax = null;
      this.tempMin = null;
      this.capacityRemain = null;
      this.capacityFull = null;
      this.capacityDesign = null;
      this.chargeCycle = null;
      this.batteryCycle = null;
      this.cellVoltageMax = null;
      this.cellVoltageMin = null;
      this.bmsStatus = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('submodule')) {
        this.submodule = initObj.submodule
      }
      else {
        this.submodule = 0;
      }
      if (initObj.hasOwnProperty('batteryPercentage')) {
        this.batteryPercentage = initObj.batteryPercentage
      }
      else {
        this.batteryPercentage = 0;
      }
      if (initObj.hasOwnProperty('chargeMode')) {
        this.chargeMode = initObj.chargeMode
      }
      else {
        this.chargeMode = 0;
      }
      if (initObj.hasOwnProperty('chargeStatus')) {
        this.chargeStatus = initObj.chargeStatus
      }
      else {
        this.chargeStatus = 0;
      }
      if (initObj.hasOwnProperty('batteryVoltage')) {
        this.batteryVoltage = initObj.batteryVoltage
      }
      else {
        this.batteryVoltage = 0.0;
      }
      if (initObj.hasOwnProperty('batteryCurrent')) {
        this.batteryCurrent = initObj.batteryCurrent
      }
      else {
        this.batteryCurrent = 0.0;
      }
      if (initObj.hasOwnProperty('timeRemain')) {
        this.timeRemain = initObj.timeRemain
      }
      else {
        this.timeRemain = 0.0;
      }
      if (initObj.hasOwnProperty('tempMax')) {
        this.tempMax = initObj.tempMax
      }
      else {
        this.tempMax = 0;
      }
      if (initObj.hasOwnProperty('tempMin')) {
        this.tempMin = initObj.tempMin
      }
      else {
        this.tempMin = 0;
      }
      if (initObj.hasOwnProperty('capacityRemain')) {
        this.capacityRemain = initObj.capacityRemain
      }
      else {
        this.capacityRemain = 0.0;
      }
      if (initObj.hasOwnProperty('capacityFull')) {
        this.capacityFull = initObj.capacityFull
      }
      else {
        this.capacityFull = 0.0;
      }
      if (initObj.hasOwnProperty('capacityDesign')) {
        this.capacityDesign = initObj.capacityDesign
      }
      else {
        this.capacityDesign = 0.0;
      }
      if (initObj.hasOwnProperty('chargeCycle')) {
        this.chargeCycle = initObj.chargeCycle
      }
      else {
        this.chargeCycle = 0;
      }
      if (initObj.hasOwnProperty('batteryCycle')) {
        this.batteryCycle = initObj.batteryCycle
      }
      else {
        this.batteryCycle = 0;
      }
      if (initObj.hasOwnProperty('cellVoltageMax')) {
        this.cellVoltageMax = initObj.cellVoltageMax
      }
      else {
        this.cellVoltageMax = 0.0;
      }
      if (initObj.hasOwnProperty('cellVoltageMin')) {
        this.cellVoltageMin = initObj.cellVoltageMin
      }
      else {
        this.cellVoltageMin = 0.0;
      }
      if (initObj.hasOwnProperty('bmsStatus')) {
        this.bmsStatus = initObj.bmsStatus
      }
      else {
        this.bmsStatus = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Battery
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [submodule]
    bufferOffset = _serializer.uint8(obj.submodule, buffer, bufferOffset);
    // Serialize message field [batteryPercentage]
    bufferOffset = _serializer.uint8(obj.batteryPercentage, buffer, bufferOffset);
    // Serialize message field [chargeMode]
    bufferOffset = _serializer.uint8(obj.chargeMode, buffer, bufferOffset);
    // Serialize message field [chargeStatus]
    bufferOffset = _serializer.uint8(obj.chargeStatus, buffer, bufferOffset);
    // Serialize message field [batteryVoltage]
    bufferOffset = _serializer.float32(obj.batteryVoltage, buffer, bufferOffset);
    // Serialize message field [batteryCurrent]
    bufferOffset = _serializer.float32(obj.batteryCurrent, buffer, bufferOffset);
    // Serialize message field [timeRemain]
    bufferOffset = _serializer.float32(obj.timeRemain, buffer, bufferOffset);
    // Serialize message field [tempMax]
    bufferOffset = _serializer.int8(obj.tempMax, buffer, bufferOffset);
    // Serialize message field [tempMin]
    bufferOffset = _serializer.int8(obj.tempMin, buffer, bufferOffset);
    // Serialize message field [capacityRemain]
    bufferOffset = _serializer.float32(obj.capacityRemain, buffer, bufferOffset);
    // Serialize message field [capacityFull]
    bufferOffset = _serializer.float32(obj.capacityFull, buffer, bufferOffset);
    // Serialize message field [capacityDesign]
    bufferOffset = _serializer.float32(obj.capacityDesign, buffer, bufferOffset);
    // Serialize message field [chargeCycle]
    bufferOffset = _serializer.uint16(obj.chargeCycle, buffer, bufferOffset);
    // Serialize message field [batteryCycle]
    bufferOffset = _serializer.uint16(obj.batteryCycle, buffer, bufferOffset);
    // Serialize message field [cellVoltageMax]
    bufferOffset = _serializer.float32(obj.cellVoltageMax, buffer, bufferOffset);
    // Serialize message field [cellVoltageMin]
    bufferOffset = _serializer.float32(obj.cellVoltageMin, buffer, bufferOffset);
    // Serialize message field [bmsStatus]
    bufferOffset = _serializer.uint32(obj.bmsStatus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Battery
    let len;
    let data = new Battery(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [submodule]
    data.submodule = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [batteryPercentage]
    data.batteryPercentage = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [chargeMode]
    data.chargeMode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [chargeStatus]
    data.chargeStatus = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [batteryVoltage]
    data.batteryVoltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [batteryCurrent]
    data.batteryCurrent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [timeRemain]
    data.timeRemain = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tempMax]
    data.tempMax = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [tempMin]
    data.tempMin = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [capacityRemain]
    data.capacityRemain = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [capacityFull]
    data.capacityFull = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [capacityDesign]
    data.capacityDesign = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [chargeCycle]
    data.chargeCycle = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [batteryCycle]
    data.batteryCycle = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [cellVoltageMax]
    data.cellVoltageMax = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cellVoltageMin]
    data.cellVoltageMin = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bmsStatus]
    data.bmsStatus = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 46;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/Battery';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e54ab8d3948bb7be2bfe95e3981bcd0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint8 submodule
    uint8 batteryPercentage
    uint8 chargeMode
    uint8 chargeStatus
    float32 batteryVoltage
    float32 batteryCurrent
    float32 timeRemain
    int8 tempMax
    int8 tempMin
    float32 capacityRemain
    float32 capacityFull
    float32 capacityDesign
    uint16 chargeCycle
    uint16 batteryCycle
    float32 cellVoltageMax
    float32 cellVoltageMin
    uint32 bmsStatus
    
    #chargeMode
    uint8 manualMode = 0
    uint8 autoMode = 1
    
    #chargeStatus
    uint8 discharge = 0
    uint8 charging = 1
    
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
    const resolved = new Battery(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.submodule !== undefined) {
      resolved.submodule = msg.submodule;
    }
    else {
      resolved.submodule = 0
    }

    if (msg.batteryPercentage !== undefined) {
      resolved.batteryPercentage = msg.batteryPercentage;
    }
    else {
      resolved.batteryPercentage = 0
    }

    if (msg.chargeMode !== undefined) {
      resolved.chargeMode = msg.chargeMode;
    }
    else {
      resolved.chargeMode = 0
    }

    if (msg.chargeStatus !== undefined) {
      resolved.chargeStatus = msg.chargeStatus;
    }
    else {
      resolved.chargeStatus = 0
    }

    if (msg.batteryVoltage !== undefined) {
      resolved.batteryVoltage = msg.batteryVoltage;
    }
    else {
      resolved.batteryVoltage = 0.0
    }

    if (msg.batteryCurrent !== undefined) {
      resolved.batteryCurrent = msg.batteryCurrent;
    }
    else {
      resolved.batteryCurrent = 0.0
    }

    if (msg.timeRemain !== undefined) {
      resolved.timeRemain = msg.timeRemain;
    }
    else {
      resolved.timeRemain = 0.0
    }

    if (msg.tempMax !== undefined) {
      resolved.tempMax = msg.tempMax;
    }
    else {
      resolved.tempMax = 0
    }

    if (msg.tempMin !== undefined) {
      resolved.tempMin = msg.tempMin;
    }
    else {
      resolved.tempMin = 0
    }

    if (msg.capacityRemain !== undefined) {
      resolved.capacityRemain = msg.capacityRemain;
    }
    else {
      resolved.capacityRemain = 0.0
    }

    if (msg.capacityFull !== undefined) {
      resolved.capacityFull = msg.capacityFull;
    }
    else {
      resolved.capacityFull = 0.0
    }

    if (msg.capacityDesign !== undefined) {
      resolved.capacityDesign = msg.capacityDesign;
    }
    else {
      resolved.capacityDesign = 0.0
    }

    if (msg.chargeCycle !== undefined) {
      resolved.chargeCycle = msg.chargeCycle;
    }
    else {
      resolved.chargeCycle = 0
    }

    if (msg.batteryCycle !== undefined) {
      resolved.batteryCycle = msg.batteryCycle;
    }
    else {
      resolved.batteryCycle = 0
    }

    if (msg.cellVoltageMax !== undefined) {
      resolved.cellVoltageMax = msg.cellVoltageMax;
    }
    else {
      resolved.cellVoltageMax = 0.0
    }

    if (msg.cellVoltageMin !== undefined) {
      resolved.cellVoltageMin = msg.cellVoltageMin;
    }
    else {
      resolved.cellVoltageMin = 0.0
    }

    if (msg.bmsStatus !== undefined) {
      resolved.bmsStatus = msg.bmsStatus;
    }
    else {
      resolved.bmsStatus = 0
    }

    return resolved;
    }
};

// Constants for message
Battery.Constants = {
  MANUALMODE: 0,
  AUTOMODE: 1,
  DISCHARGE: 0,
  CHARGING: 1,
}

module.exports = Battery;
