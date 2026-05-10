// Auto-generated. Do not edit!

// (in-package woosh_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NavFieldPoint = require('./NavFieldPoint.js');

//-----------------------------------------------------------

class Field {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.type = null;
      this.slope_angle = null;
      this.slope_arrow = null;
      this.capacity = null;
      this.wait_time_out = null;
      this.nav_mode = null;
      this.max_speed = null;
      this.direction = null;
      this.radius = null;
      this.offset = null;
      this.vertex = null;
      this.nav_pos = null;
      this.entry = null;
      this.extrance = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('slope_angle')) {
        this.slope_angle = initObj.slope_angle
      }
      else {
        this.slope_angle = 0.0;
      }
      if (initObj.hasOwnProperty('slope_arrow')) {
        this.slope_arrow = initObj.slope_arrow
      }
      else {
        this.slope_arrow = new NavFieldPoint();
      }
      if (initObj.hasOwnProperty('capacity')) {
        this.capacity = initObj.capacity
      }
      else {
        this.capacity = 0;
      }
      if (initObj.hasOwnProperty('wait_time_out')) {
        this.wait_time_out = initObj.wait_time_out
      }
      else {
        this.wait_time_out = 0.0;
      }
      if (initObj.hasOwnProperty('nav_mode')) {
        this.nav_mode = initObj.nav_mode
      }
      else {
        this.nav_mode = 0;
      }
      if (initObj.hasOwnProperty('max_speed')) {
        this.max_speed = initObj.max_speed
      }
      else {
        this.max_speed = 0.0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0;
      }
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = 0.0;
      }
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = 0.0;
      }
      if (initObj.hasOwnProperty('vertex')) {
        this.vertex = initObj.vertex
      }
      else {
        this.vertex = [];
      }
      if (initObj.hasOwnProperty('nav_pos')) {
        this.nav_pos = initObj.nav_pos
      }
      else {
        this.nav_pos = [];
      }
      if (initObj.hasOwnProperty('entry')) {
        this.entry = initObj.entry
      }
      else {
        this.entry = new NavFieldPoint();
      }
      if (initObj.hasOwnProperty('extrance')) {
        this.extrance = initObj.extrance
      }
      else {
        this.extrance = new NavFieldPoint();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Field
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [slope_angle]
    bufferOffset = _serializer.float32(obj.slope_angle, buffer, bufferOffset);
    // Serialize message field [slope_arrow]
    bufferOffset = NavFieldPoint.serialize(obj.slope_arrow, buffer, bufferOffset);
    // Serialize message field [capacity]
    bufferOffset = _serializer.int32(obj.capacity, buffer, bufferOffset);
    // Serialize message field [wait_time_out]
    bufferOffset = _serializer.float32(obj.wait_time_out, buffer, bufferOffset);
    // Serialize message field [nav_mode]
    bufferOffset = _serializer.int32(obj.nav_mode, buffer, bufferOffset);
    // Serialize message field [max_speed]
    bufferOffset = _serializer.float32(obj.max_speed, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.int32(obj.direction, buffer, bufferOffset);
    // Serialize message field [radius]
    bufferOffset = _serializer.float32(obj.radius, buffer, bufferOffset);
    // Serialize message field [offset]
    bufferOffset = _serializer.float32(obj.offset, buffer, bufferOffset);
    // Serialize message field [vertex]
    // Serialize the length for message field [vertex]
    bufferOffset = _serializer.uint32(obj.vertex.length, buffer, bufferOffset);
    obj.vertex.forEach((val) => {
      bufferOffset = NavFieldPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [nav_pos]
    // Serialize the length for message field [nav_pos]
    bufferOffset = _serializer.uint32(obj.nav_pos.length, buffer, bufferOffset);
    obj.nav_pos.forEach((val) => {
      bufferOffset = NavFieldPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [entry]
    bufferOffset = NavFieldPoint.serialize(obj.entry, buffer, bufferOffset);
    // Serialize message field [extrance]
    bufferOffset = NavFieldPoint.serialize(obj.extrance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Field
    let len;
    let data = new Field(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [slope_angle]
    data.slope_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [slope_arrow]
    data.slope_arrow = NavFieldPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [capacity]
    data.capacity = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wait_time_out]
    data.wait_time_out = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [nav_mode]
    data.nav_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [max_speed]
    data.max_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [radius]
    data.radius = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [offset]
    data.offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vertex]
    // Deserialize array length for message field [vertex]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.vertex = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.vertex[i] = NavFieldPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [nav_pos]
    // Deserialize array length for message field [nav_pos]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.nav_pos = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.nav_pos[i] = NavFieldPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [entry]
    data.entry = NavFieldPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [extrance]
    data.extrance = NavFieldPoint.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 28 * object.vertex.length;
    length += 28 * object.nav_pos.length;
    return length + 132;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/Field';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cd1f433a6719ae3939066ca26b7c7b36';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 id		#通道id
    int32 type		#通道类型, 双行道=0,单行道=1,单向道=2,路口=3, 狭窄通道=4,定位域=5,爬坡域=6,Odom域=7
    float32 slope_angle 	#爬坡域角度
    NavFieldPoint slope_arrow   #爬坡域箭头位姿
    int32 capacity		#通道容量
    float32 wait_time_out	#停等超时模式下的超时时间
    int32 nav_mode		#导航模式,模糊避让=0,精准避让=1,停等=2,停等超时=3, 狭窄通道=10, 磁条导航=11, 二维码导航=12
    float32 max_speed		#通道最高速度,设为0,则不约束最高速度,非0则以设定的速度为机器人在该通道的最高速度
    int32 direction		#单向道的方向
    float32 radius  #半径
    float32 offset  # 偏移
    NavFieldPoint[] vertex	#域顶点
    NavFieldPoint[] nav_pos	#域中引导点数组,单向道中引导点的存储顺序决定其方向，数组里点的id有效
    NavFieldPoint entry	#单向道入口
    NavFieldPoint extrance	#单向道出口
    
    ================================================================================
    MSG: woosh_msgs/NavFieldPoint
    geometry_msgs/Point pt	#Marker position
    uint32 id 		#Marker id
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Field(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.slope_angle !== undefined) {
      resolved.slope_angle = msg.slope_angle;
    }
    else {
      resolved.slope_angle = 0.0
    }

    if (msg.slope_arrow !== undefined) {
      resolved.slope_arrow = NavFieldPoint.Resolve(msg.slope_arrow)
    }
    else {
      resolved.slope_arrow = new NavFieldPoint()
    }

    if (msg.capacity !== undefined) {
      resolved.capacity = msg.capacity;
    }
    else {
      resolved.capacity = 0
    }

    if (msg.wait_time_out !== undefined) {
      resolved.wait_time_out = msg.wait_time_out;
    }
    else {
      resolved.wait_time_out = 0.0
    }

    if (msg.nav_mode !== undefined) {
      resolved.nav_mode = msg.nav_mode;
    }
    else {
      resolved.nav_mode = 0
    }

    if (msg.max_speed !== undefined) {
      resolved.max_speed = msg.max_speed;
    }
    else {
      resolved.max_speed = 0.0
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0
    }

    if (msg.radius !== undefined) {
      resolved.radius = msg.radius;
    }
    else {
      resolved.radius = 0.0
    }

    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = 0.0
    }

    if (msg.vertex !== undefined) {
      resolved.vertex = new Array(msg.vertex.length);
      for (let i = 0; i < resolved.vertex.length; ++i) {
        resolved.vertex[i] = NavFieldPoint.Resolve(msg.vertex[i]);
      }
    }
    else {
      resolved.vertex = []
    }

    if (msg.nav_pos !== undefined) {
      resolved.nav_pos = new Array(msg.nav_pos.length);
      for (let i = 0; i < resolved.nav_pos.length; ++i) {
        resolved.nav_pos[i] = NavFieldPoint.Resolve(msg.nav_pos[i]);
      }
    }
    else {
      resolved.nav_pos = []
    }

    if (msg.entry !== undefined) {
      resolved.entry = NavFieldPoint.Resolve(msg.entry)
    }
    else {
      resolved.entry = new NavFieldPoint()
    }

    if (msg.extrance !== undefined) {
      resolved.extrance = NavFieldPoint.Resolve(msg.extrance)
    }
    else {
      resolved.extrance = new NavFieldPoint()
    }

    return resolved;
    }
};

module.exports = Field;
