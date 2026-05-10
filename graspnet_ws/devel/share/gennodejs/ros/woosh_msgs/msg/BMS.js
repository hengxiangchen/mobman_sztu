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

class BMS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.BMSStatus = null;
      this.current = null;
      this.voltageMax = null;
      this.voltageMin = null;
      this.voltageTotal = null;
      this.temperatureMax = null;
      this.temperatureMin = null;
      this.chargeCycle = null;
      this.capacityResidue = null;
      this.capacityTotal = null;
      this.switchStatus = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('BMSStatus')) {
        this.BMSStatus = initObj.BMSStatus
      }
      else {
        this.BMSStatus = 0;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0.0;
      }
      if (initObj.hasOwnProperty('voltageMax')) {
        this.voltageMax = initObj.voltageMax
      }
      else {
        this.voltageMax = 0.0;
      }
      if (initObj.hasOwnProperty('voltageMin')) {
        this.voltageMin = initObj.voltageMin
      }
      else {
        this.voltageMin = 0.0;
      }
      if (initObj.hasOwnProperty('voltageTotal')) {
        this.voltageTotal = initObj.voltageTotal
      }
      else {
        this.voltageTotal = 0.0;
      }
      if (initObj.hasOwnProperty('temperatureMax')) {
        this.temperatureMax = initObj.temperatureMax
      }
      else {
        this.temperatureMax = 0.0;
      }
      if (initObj.hasOwnProperty('temperatureMin')) {
        this.temperatureMin = initObj.temperatureMin
      }
      else {
        this.temperatureMin = 0.0;
      }
      if (initObj.hasOwnProperty('chargeCycle')) {
        this.chargeCycle = initObj.chargeCycle
      }
      else {
        this.chargeCycle = 0;
      }
      if (initObj.hasOwnProperty('capacityResidue')) {
        this.capacityResidue = initObj.capacityResidue
      }
      else {
        this.capacityResidue = 0.0;
      }
      if (initObj.hasOwnProperty('capacityTotal')) {
        this.capacityTotal = initObj.capacityTotal
      }
      else {
        this.capacityTotal = 0.0;
      }
      if (initObj.hasOwnProperty('switchStatus')) {
        this.switchStatus = initObj.switchStatus
      }
      else {
        this.switchStatus = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BMS
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [BMSStatus]
    bufferOffset = _serializer.uint32(obj.BMSStatus, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = _serializer.float32(obj.current, buffer, bufferOffset);
    // Serialize message field [voltageMax]
    bufferOffset = _serializer.float32(obj.voltageMax, buffer, bufferOffset);
    // Serialize message field [voltageMin]
    bufferOffset = _serializer.float32(obj.voltageMin, buffer, bufferOffset);
    // Serialize message field [voltageTotal]
    bufferOffset = _serializer.float32(obj.voltageTotal, buffer, bufferOffset);
    // Serialize message field [temperatureMax]
    bufferOffset = _serializer.float32(obj.temperatureMax, buffer, bufferOffset);
    // Serialize message field [temperatureMin]
    bufferOffset = _serializer.float32(obj.temperatureMin, buffer, bufferOffset);
    // Serialize message field [chargeCycle]
    bufferOffset = _serializer.uint16(obj.chargeCycle, buffer, bufferOffset);
    // Serialize message field [capacityResidue]
    bufferOffset = _serializer.float32(obj.capacityResidue, buffer, bufferOffset);
    // Serialize message field [capacityTotal]
    bufferOffset = _serializer.float32(obj.capacityTotal, buffer, bufferOffset);
    // Serialize message field [switchStatus]
    bufferOffset = _serializer.uint8(obj.switchStatus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BMS
    let len;
    let data = new BMS(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [BMSStatus]
    data.BMSStatus = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [voltageMax]
    data.voltageMax = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [voltageMin]
    data.voltageMin = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [voltageTotal]
    data.voltageTotal = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [temperatureMax]
    data.temperatureMax = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [temperatureMin]
    data.temperatureMin = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [chargeCycle]
    data.chargeCycle = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [capacityResidue]
    data.capacityResidue = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [capacityTotal]
    data.capacityTotal = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [switchStatus]
    data.switchStatus = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 39;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/BMS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '90dcbb86327a728ae02a9e6f441bea51';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint32 BMSStatus
    float32 current
    float32 voltageMax
    float32 voltageMin
    float32 voltageTotal
    float32 temperatureMax
    float32 temperatureMin
    uint16 chargeCycle
    float32 capacityResidue
    float32 capacityTotal
    uint8 switchStatus
    
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
    const resolved = new BMS(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.BMSStatus !== undefined) {
      resolved.BMSStatus = msg.BMSStatus;
    }
    else {
      resolved.BMSStatus = 0
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0.0
    }

    if (msg.voltageMax !== undefined) {
      resolved.voltageMax = msg.voltageMax;
    }
    else {
      resolved.voltageMax = 0.0
    }

    if (msg.voltageMin !== undefined) {
      resolved.voltageMin = msg.voltageMin;
    }
    else {
      resolved.voltageMin = 0.0
    }

    if (msg.voltageTotal !== undefined) {
      resolved.voltageTotal = msg.voltageTotal;
    }
    else {
      resolved.voltageTotal = 0.0
    }

    if (msg.temperatureMax !== undefined) {
      resolved.temperatureMax = msg.temperatureMax;
    }
    else {
      resolved.temperatureMax = 0.0
    }

    if (msg.temperatureMin !== undefined) {
      resolved.temperatureMin = msg.temperatureMin;
    }
    else {
      resolved.temperatureMin = 0.0
    }

    if (msg.chargeCycle !== undefined) {
      resolved.chargeCycle = msg.chargeCycle;
    }
    else {
      resolved.chargeCycle = 0
    }

    if (msg.capacityResidue !== undefined) {
      resolved.capacityResidue = msg.capacityResidue;
    }
    else {
      resolved.capacityResidue = 0.0
    }

    if (msg.capacityTotal !== undefined) {
      resolved.capacityTotal = msg.capacityTotal;
    }
    else {
      resolved.capacityTotal = 0.0
    }

    if (msg.switchStatus !== undefined) {
      resolved.switchStatus = msg.switchStatus;
    }
    else {
      resolved.switchStatus = 0
    }

    return resolved;
    }
};

module.exports = BMS;
