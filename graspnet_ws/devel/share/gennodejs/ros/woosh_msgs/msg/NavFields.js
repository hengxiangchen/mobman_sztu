// Auto-generated. Do not edit!

// (in-package woosh_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Field = require('./Field.js');

//-----------------------------------------------------------

class NavFields {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fields = null;
    }
    else {
      if (initObj.hasOwnProperty('fields')) {
        this.fields = initObj.fields
      }
      else {
        this.fields = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavFields
    // Serialize message field [fields]
    // Serialize the length for message field [fields]
    bufferOffset = _serializer.uint32(obj.fields.length, buffer, bufferOffset);
    obj.fields.forEach((val) => {
      bufferOffset = Field.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavFields
    let len;
    let data = new NavFields(null);
    // Deserialize message field [fields]
    // Deserialize array length for message field [fields]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.fields = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.fields[i] = Field.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.fields.forEach((val) => {
      length += Field.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'woosh_msgs/NavFields';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '01039fb61b56e051721719ac2301c854';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Field[] fields
    
    ================================================================================
    MSG: woosh_msgs/Field
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
    const resolved = new NavFields(null);
    if (msg.fields !== undefined) {
      resolved.fields = new Array(msg.fields.length);
      for (let i = 0; i < resolved.fields.length; ++i) {
        resolved.fields[i] = Field.Resolve(msg.fields[i]);
      }
    }
    else {
      resolved.fields = []
    }

    return resolved;
    }
};

module.exports = NavFields;
