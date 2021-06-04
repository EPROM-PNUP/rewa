// Auto-generated. Do not edit!

// (in-package rewa_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class EulerAngle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.r = null;
      this.p = null;
      this.y = null;
    }
    else {
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('p')) {
        this.p = initObj.p
      }
      else {
        this.p = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EulerAngle
    // Serialize message field [r]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.r, buffer, bufferOffset);
    // Serialize message field [p]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.p, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EulerAngle
    let len;
    let data = new EulerAngle(null);
    // Deserialize message field [r]
    data.r = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [p]
    data.p = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rewa_msgs/EulerAngle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b12334b058a796e17415fad4ae059df8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32 r
    std_msgs/Float32 p
    std_msgs/Float32 y
    
    ================================================================================
    MSG: std_msgs/Float32
    float32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EulerAngle(null);
    if (msg.r !== undefined) {
      resolved.r = std_msgs.msg.Float32.Resolve(msg.r)
    }
    else {
      resolved.r = new std_msgs.msg.Float32()
    }

    if (msg.p !== undefined) {
      resolved.p = std_msgs.msg.Float32.Resolve(msg.p)
    }
    else {
      resolved.p = new std_msgs.msg.Float32()
    }

    if (msg.y !== undefined) {
      resolved.y = std_msgs.msg.Float32.Resolve(msg.y)
    }
    else {
      resolved.y = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = EulerAngle;
