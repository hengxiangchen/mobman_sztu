// Auto-generated. Do not edit!

// (in-package woosh_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ExecTaskRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_exect = null;
      this.task_id = null;
      this.task_type = null;
      this.direction = null;
      this.task_type_no = null;
      this.mark_no = null;
      this.poses = null;
      this.custom = null;
    }
    else {
      if (initObj.hasOwnProperty('task_exect')) {
        this.task_exect = initObj.task_exect
      }
      else {
        this.task_exect = 0;
      }
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
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0;
      }
      if (initObj.hasOwnProperty('task_type_no')) {
        this.task_type_no = initObj.task_type_no
      }
      else {
        this.task_type_no = 0;
      }
      if (initObj.hasOwnProperty('mark_no')) {
        this.mark_no = initObj.mark_no
      }
      else {
        this.mark_no = '';
      }
      if (initObj.hasOwnProperty('poses')) {
        this.poses = initObj.poses
      }
      else {
        this.poses = [];
      }
      if (initObj.hasOwnProperty('custom')) {
        this.custom = initObj.custom
      }
      else {
        this.custom = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExecTaskRequest
    // Serialize message field [task_exect]
    bufferOffset = _serializer.uint8(obj.task_exect, buffer, bufferOffset);
    // Serialize message field [task_id]
    bufferOffset = _serializer.int64(obj.task_id, buffer, bufferOffset);
    // Serialize message field [task_type]
    bufferOffset = _serializer.uint8(obj.task_type, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.uint8(obj.direction, buffer, bufferOffset);
    // Serialize message field [task_type_no]
    bufferOffset = _serializer.uint32(obj.task_type_no, buffer, bufferOffset);
    // Serialize message field [mark_no]
    bufferOffset = _serializer.string(obj.mark_no, buffer, bufferOffset);
    // Serialize message field [poses]
    // Serialize the length for message field [poses]
    bufferOffset = _serializer.uint32(obj.poses.length, buffer, bufferOffset);
    obj.poses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.PoseStamped.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [custom]
    bufferOffset = _serializer.byte(obj.custom, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExecTaskRequest
    let len;
    let data = new ExecTaskRequest(null);
    // Deserialize message field [task_exect]
    data.task_exect = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [task_type]
    data.task_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [task_type_no]
    data.task_type_no = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [mark_no]
    data.mark_no = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [poses]
    // Deserialize array length for message field [poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.poses[i] = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [custom]
    data.custom = _deserializer.byte(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.mark_no);
    object.poses.forEach((val) => {
      length += geometry_msgs.msg.PoseStamped.getMessageSize(val);
    });
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'woosh_msgs/ExecTaskRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd13f36fcb97fa2e9e5a8a379bd4a1415';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 task_exect      #任务执行请求，1： 执行，2：暂停，3： 继续， 4：取消, 6:等待打断
    int64 task_id         #任务ID
    uint8 task_type       #任务类型, 1: 拣选 2：泊车 3： 充电  4： 搬运
    uint8 direction       #动作方向, 0： 未定义 1： 上料  2：下料, 不是上下料任务填0，可选项
    uint32 task_type_no   #类型组合,默认0，自定义，可选项
    string mark_no        #目标点（储位）编号，如果填写编号，则 任务路经项 可以不用填写，若要填写,任务路经的最后一个点，必须和此储位点一致
    geometry_msgs/PoseStamped[] poses #任务路经，如果是一个点（目标点），则表示由系统自己规划，最总到达此目标点，可选项
    byte custom           # 自定义字段，因项目而异，可选项
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ExecTaskRequest(null);
    if (msg.task_exect !== undefined) {
      resolved.task_exect = msg.task_exect;
    }
    else {
      resolved.task_exect = 0
    }

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

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0
    }

    if (msg.task_type_no !== undefined) {
      resolved.task_type_no = msg.task_type_no;
    }
    else {
      resolved.task_type_no = 0
    }

    if (msg.mark_no !== undefined) {
      resolved.mark_no = msg.mark_no;
    }
    else {
      resolved.mark_no = ''
    }

    if (msg.poses !== undefined) {
      resolved.poses = new Array(msg.poses.length);
      for (let i = 0; i < resolved.poses.length; ++i) {
        resolved.poses[i] = geometry_msgs.msg.PoseStamped.Resolve(msg.poses[i]);
      }
    }
    else {
      resolved.poses = []
    }

    if (msg.custom !== undefined) {
      resolved.custom = msg.custom;
    }
    else {
      resolved.custom = 0
    }

    return resolved;
    }
};

class ExecTaskResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.statusCode = null;
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
      if (initObj.hasOwnProperty('statusCode')) {
        this.statusCode = initObj.statusCode
      }
      else {
        this.statusCode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExecTaskResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [statusCode]
    bufferOffset = _serializer.uint64(obj.statusCode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExecTaskResponse
    let len;
    let data = new ExecTaskResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [statusCode]
    data.statusCode = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'woosh_msgs/ExecTaskResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '15c59eb4ff0555025635504dbca9a711';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success   #执行成功/失败，
    string message # informational, e.g. for error messages
    uint64 statusCode #状态码  1:未初始化，2：空闲，3：泊车中，4：任务中，5：警告，6：异常，8：充电中，9：构图中
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ExecTaskResponse(null);
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

    if (msg.statusCode !== undefined) {
      resolved.statusCode = msg.statusCode;
    }
    else {
      resolved.statusCode = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: ExecTaskRequest,
  Response: ExecTaskResponse,
  md5sum() { return '22be4bcc7dfdb3b89d96a915d92d36fc'; },
  datatype() { return 'woosh_msgs/ExecTask'; }
};
