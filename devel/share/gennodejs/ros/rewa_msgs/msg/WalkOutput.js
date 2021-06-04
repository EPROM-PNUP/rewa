// Auto-generated. Do not edit!

// (in-package rewa_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LegJoint = require('./LegJoint.js');

//-----------------------------------------------------------

class WalkOutput {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left = null;
      this.right = null;
    }
    else {
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = new LegJoint();
      }
      if (initObj.hasOwnProperty('right')) {
        this.right = initObj.right
      }
      else {
        this.right = new LegJoint();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WalkOutput
    // Serialize message field [left]
    bufferOffset = LegJoint.serialize(obj.left, buffer, bufferOffset);
    // Serialize message field [right]
    bufferOffset = LegJoint.serialize(obj.right, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WalkOutput
    let len;
    let data = new WalkOutput(null);
    // Deserialize message field [left]
    data.left = LegJoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [right]
    data.right = LegJoint.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 144;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rewa_msgs/WalkOutput';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9ad5775b0d561da386890fe8cd014165';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    rewa_msgs/LegJoint left
    rewa_msgs/LegJoint right
    
    ================================================================================
    MSG: rewa_msgs/LegJoint
    rewa_msgs/Euler hip
    rewa_msgs/Euler knee
    rewa_msgs/Euler ankle
    
    ================================================================================
    MSG: rewa_msgs/Euler
    float64 r
    float64 p
    float64 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WalkOutput(null);
    if (msg.left !== undefined) {
      resolved.left = LegJoint.Resolve(msg.left)
    }
    else {
      resolved.left = new LegJoint()
    }

    if (msg.right !== undefined) {
      resolved.right = LegJoint.Resolve(msg.right)
    }
    else {
      resolved.right = new LegJoint()
    }

    return resolved;
    }
};

module.exports = WalkOutput;
