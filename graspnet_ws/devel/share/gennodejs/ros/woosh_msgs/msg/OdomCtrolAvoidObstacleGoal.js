// Auto-generated. Do not edit!

// (in-package woosh_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class OdomCtrolAvoidObstacleGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.arg = null;
      this.speed = null;
      this.arg_type = null;
      this.useMoveAvoid = null;
      this.close_obstacleDetect_percent = null;
      this.xMax = null;
      this.xMin = null;
      this.yMax = null;
      this.yMin = null;
    }
    else {
      if (initObj.hasOwnProperty('arg')) {
        this.arg = initObj.arg
      }
      else {
        this.arg = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('arg_type')) {
        this.arg_type = initObj.arg_type
      }
      else {
        this.arg_type = 0;
      }
      if (initObj.hasOwnProperty('useMoveAvoid')) {
        this.useMoveAvoid = initObj.useMoveAvoid
      }
      else {
        this.useMoveAvoid = 0;
      }
      if (initObj.hasOwnProperty('close_obstacleDetect_percent')) {
        this.close_obstacleDetect_percent = initObj.close_obstacleDetect_percent
      }
      else {
        this.close_obstacleDetect_percent = 0.0;
      }
      if (initObj.hasOwnProperty('xMax')) {
        this.xMax = initObj.xMax
      }
      else {
        this.xMax = 0.0;
      }
      if (initObj.hasOwnProperty('xMin')) {
        this.xMin = initObj.xMin
      }
      else {
        this.xMin = 0.0;
      }
      if (initObj.hasOwnProperty('yMax')) {
        this.yMax = initObj.yMax
      }
      else {
        this.yMax = 0.0;
      }
      if (initObj.hasOwnProperty('yMin')) {
        this.yMin = initObj.yMin
      }
      else {
        this.yMin = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OdomCtrolAvoidObstacleGoal
    // Serialize message field [arg]
    bufferOffset = _serializer.float32(obj.arg, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [arg_type]
    bufferOffset = _serializer.int32(obj.arg_type, buffer, bufferOffset);
    // Serialize message field [useMoveAvoid]
    bufferOffset = _serializer.int32(obj.useMoveAvoid, buffer, bufferOffset);
    // Serialize message field [close_obstacleDetect_percent]
    bufferOffset = _serializer.float32(obj.close_obstacleDetect_percent, buffer, bufferOffset);
    // Serialize message field [xMax]
    bufferOffset = _serializer.float32(obj.xMax, buffer, bufferOffset);
    // Serialize message field [xMin]
    bufferOffset = _serializer.float32(obj.xMin, buffer, bufferOffset);
    // Serialize message field [yMax]
    bufferOffset = _serializer.float32(obj.yMax, buffer, bufferOffset);
    // Serialize message field [yMin]
    bufferOffset = _serializer.float32(obj.yMin, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OdomCtrolAvoidObstacleGoal
    let len;
    let data = new OdomCtrolAvoidObstacleGoal(null);
    // Deserialize message field [arg]
    data.arg = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [arg_type]
    data.arg_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [useMoveAvoid]
    data.useMoveAvoid = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [close_obstacleDetect_percent]
    data.close_obstacleDetect_percent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [xMax]
    data.xMax = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [xMin]
    data.xMin = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yMax]
    data.yMax = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yMin]
    data.yMin = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/OdomCtrolAvoidObstacleGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e192a7094eab6262b4eb709c51e2d87b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    float32  arg                           #参数
    float32  speed                         #速度
    int32    arg_type                      #arg_type=0：arg表示距离，正值往前，负值往后; arg_type=1：arg表示原地旋转弧度; arg_type=2 : 暂停; arg_type=3：继续
    int32    useMoveAvoid                  #0:开启避障功能; 1:关闭避障功能
    float32  close_obstacleDetect_percent  #关闭避障检测时的百分比,大于0,小于等于100,默认值为100
    float32  xMax
    float32  xMin
    float32  yMax
    float32  yMin
    int32    STRAIGHT = 0
    int32    ROTATE = 1
    int32    PAUSE = 2
    int32    RESUM = 3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OdomCtrolAvoidObstacleGoal(null);
    if (msg.arg !== undefined) {
      resolved.arg = msg.arg;
    }
    else {
      resolved.arg = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.arg_type !== undefined) {
      resolved.arg_type = msg.arg_type;
    }
    else {
      resolved.arg_type = 0
    }

    if (msg.useMoveAvoid !== undefined) {
      resolved.useMoveAvoid = msg.useMoveAvoid;
    }
    else {
      resolved.useMoveAvoid = 0
    }

    if (msg.close_obstacleDetect_percent !== undefined) {
      resolved.close_obstacleDetect_percent = msg.close_obstacleDetect_percent;
    }
    else {
      resolved.close_obstacleDetect_percent = 0.0
    }

    if (msg.xMax !== undefined) {
      resolved.xMax = msg.xMax;
    }
    else {
      resolved.xMax = 0.0
    }

    if (msg.xMin !== undefined) {
      resolved.xMin = msg.xMin;
    }
    else {
      resolved.xMin = 0.0
    }

    if (msg.yMax !== undefined) {
      resolved.yMax = msg.yMax;
    }
    else {
      resolved.yMax = 0.0
    }

    if (msg.yMin !== undefined) {
      resolved.yMin = msg.yMin;
    }
    else {
      resolved.yMin = 0.0
    }

    return resolved;
    }
};

// Constants for message
OdomCtrolAvoidObstacleGoal.Constants = {
  STRAIGHT: 0,
  ROTATE: 1,
  PAUSE: 2,
  RESUM: 3,
}

module.exports = OdomCtrolAvoidObstacleGoal;
