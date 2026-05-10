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

class RobotStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_id = null;
      this.task_type = null;
      this.task_state = null;
      this.action_type = null;
      this.action_state = null;
      this.robot_state = null;
      this.robot_mode = null;
      this.work_mode = null;
      this.wait_id = null;
      this.dest = null;
      this.msg = null;
      this.time = null;
    }
    else {
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = 0;
      }
      if (initObj.hasOwnProperty('task_type')) {
        this.task_type = initObj.task_type
      }
      else {
        this.task_type = 0;
      }
      if (initObj.hasOwnProperty('task_state')) {
        this.task_state = initObj.task_state
      }
      else {
        this.task_state = 0;
      }
      if (initObj.hasOwnProperty('action_type')) {
        this.action_type = initObj.action_type
      }
      else {
        this.action_type = 0;
      }
      if (initObj.hasOwnProperty('action_state')) {
        this.action_state = initObj.action_state
      }
      else {
        this.action_state = 0;
      }
      if (initObj.hasOwnProperty('robot_state')) {
        this.robot_state = initObj.robot_state
      }
      else {
        this.robot_state = 0;
      }
      if (initObj.hasOwnProperty('robot_mode')) {
        this.robot_mode = initObj.robot_mode
      }
      else {
        this.robot_mode = 0;
      }
      if (initObj.hasOwnProperty('work_mode')) {
        this.work_mode = initObj.work_mode
      }
      else {
        this.work_mode = 0;
      }
      if (initObj.hasOwnProperty('wait_id')) {
        this.wait_id = initObj.wait_id
      }
      else {
        this.wait_id = 0;
      }
      if (initObj.hasOwnProperty('dest')) {
        this.dest = initObj.dest
      }
      else {
        this.dest = '';
      }
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = '';
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotStatus
    // Serialize message field [task_id]
    bufferOffset = _serializer.uint64(obj.task_id, buffer, bufferOffset);
    // Serialize message field [task_type]
    bufferOffset = _serializer.int32(obj.task_type, buffer, bufferOffset);
    // Serialize message field [task_state]
    bufferOffset = _serializer.int8(obj.task_state, buffer, bufferOffset);
    // Serialize message field [action_type]
    bufferOffset = _serializer.int8(obj.action_type, buffer, bufferOffset);
    // Serialize message field [action_state]
    bufferOffset = _serializer.int8(obj.action_state, buffer, bufferOffset);
    // Serialize message field [robot_state]
    bufferOffset = _serializer.int8(obj.robot_state, buffer, bufferOffset);
    // Serialize message field [robot_mode]
    bufferOffset = _serializer.int8(obj.robot_mode, buffer, bufferOffset);
    // Serialize message field [work_mode]
    bufferOffset = _serializer.int8(obj.work_mode, buffer, bufferOffset);
    // Serialize message field [wait_id]
    bufferOffset = _serializer.int32(obj.wait_id, buffer, bufferOffset);
    // Serialize message field [dest]
    bufferOffset = _serializer.string(obj.dest, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.int32(obj.time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotStatus
    let len;
    let data = new RobotStatus(null);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [task_type]
    data.task_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [task_state]
    data.task_state = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [action_type]
    data.action_type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [action_state]
    data.action_state = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [robot_state]
    data.robot_state = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [robot_mode]
    data.robot_mode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [work_mode]
    data.work_mode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [wait_id]
    data.wait_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dest]
    data.dest = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.dest);
    length += _getByteLength(object.msg);
    return length + 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/RobotStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f5b2fa7b958d521c2034a877d5d6e07';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 task_id           #任务id
    int32 task_type          #任务类型, 0：未定义，1: 拣选， 2：泊车， 3： 充电，4： 搬运
    int8 task_state         #任务状态，0: 未定义，3： 执行中，4： 暂停中，5： 动作等待， 7： 完成的，8：取消的， 9： 失败的
    int8 action_type        #动作类型  0: 未定义，1：导航，2：单步控制，3：二次定位进入，4：二次定位退出，5：搬运动作，6：等待，7：充电
    int8 action_state       #动作状态  0： 未定义，1： 执行中，2：警告，3：取消，4：完成，5：失败，10：暂停，11：管制
    int8 robot_state        #机器人状态 0： 未定义，1：未初始化，2： 空闲，3：泊车中，4：任务中，5：警告，6：异常，8：充电中，9：构图中
    int8 robot_mode         #机器人的模式 0：未定义，1：自动，2：手动，3：维护
    int8 work_mode          #机器人工作模式 0: 未定义，1：部署模式，2：任务模式，3：调度模式
    int32 wait_id           #动作等待ID
    string dest             #目标点
    string msg              #消息
    int32 time              #最后更新时间(s)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotStatus(null);
    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = 0
    }

    if (msg.task_type !== undefined) {
      resolved.task_type = msg.task_type;
    }
    else {
      resolved.task_type = 0
    }

    if (msg.task_state !== undefined) {
      resolved.task_state = msg.task_state;
    }
    else {
      resolved.task_state = 0
    }

    if (msg.action_type !== undefined) {
      resolved.action_type = msg.action_type;
    }
    else {
      resolved.action_type = 0
    }

    if (msg.action_state !== undefined) {
      resolved.action_state = msg.action_state;
    }
    else {
      resolved.action_state = 0
    }

    if (msg.robot_state !== undefined) {
      resolved.robot_state = msg.robot_state;
    }
    else {
      resolved.robot_state = 0
    }

    if (msg.robot_mode !== undefined) {
      resolved.robot_mode = msg.robot_mode;
    }
    else {
      resolved.robot_mode = 0
    }

    if (msg.work_mode !== undefined) {
      resolved.work_mode = msg.work_mode;
    }
    else {
      resolved.work_mode = 0
    }

    if (msg.wait_id !== undefined) {
      resolved.wait_id = msg.wait_id;
    }
    else {
      resolved.wait_id = 0
    }

    if (msg.dest !== undefined) {
      resolved.dest = msg.dest;
    }
    else {
      resolved.dest = ''
    }

    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = ''
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0
    }

    return resolved;
    }
};

module.exports = RobotStatus;
