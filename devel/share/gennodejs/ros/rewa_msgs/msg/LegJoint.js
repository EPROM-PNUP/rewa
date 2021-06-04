// Auto-generated. Do not edit!

// (in-package rewa_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Euler = require('./Euler.js');

//-----------------------------------------------------------

class LegJoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hip = null;
      this.knee = null;
      this.ankle = null;
    }
    else {
      if (initObj.hasOwnProperty('hip')) {
        this.hip = initObj.hip
      }
      else {
        this.hip = new Euler();
      }
      if (initObj.hasOwnProperty('knee')) {
        this.knee = initObj.knee
      }
      else {
        this.knee = new Euler();
      }
      if (initObj.hasOwnProperty('ankle')) {
        this.ankle = initObj.ankle
      }
      else {
        this.ankle = new Euler();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LegJoint
    // Serialize message field [hip]
    bufferOffset = Euler.serialize(obj.hip, buffer, bufferOffset);
    // Serialize message field [knee]
    bufferOffset = Euler.serialize(obj.knee, buffer, bufferOffset);
    // Serialize message field [ankle]
    bufferOffset = Euler.serialize(obj.ankle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LegJoint
    let len;
    let data = new LegJoint(null);
    // Deserialize message field [hip]
    data.hip = Euler.deserialize(buffer, bufferOffset);
    // Deserialize message field [knee]
    data.knee = Euler.deserialize(buffer, bufferOffset);
    // Deserialize message field [ankle]
    data.ankle = Euler.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rewa_msgs/LegJoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8fda3c23f2e1e0ab3642357df5d5da86';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new LegJoint(null);
    if (msg.hip !== undefined) {
      resolved.hip = Euler.Resolve(msg.hip)
    }
    else {
      resolved.hip = new Euler()
    }

    if (msg.knee !== undefined) {
      resolved.knee = Euler.Resolve(msg.knee)
    }
    else {
      resolved.knee = new Euler()
    }

    if (msg.ankle !== undefined) {
      resolved.ankle = Euler.Resolve(msg.ankle)
    }
    else {
      resolved.ankle = new Euler()
    }

    return resolved;
    }
};

module.exports = LegJoint;
