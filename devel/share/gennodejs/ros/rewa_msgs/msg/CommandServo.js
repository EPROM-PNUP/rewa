// Auto-generated. Do not edit!

// (in-package rewa_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ControlCommandAX12A = require('./ControlCommandAX12A.js');
let ControlCommandMX28 = require('./ControlCommandMX28.js');

//-----------------------------------------------------------

class CommandServo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ID2 = null;
      this.ID3 = null;
      this.ID4 = null;
      this.ID5 = null;
      this.ID6 = null;
      this.ID7 = null;
      this.ID8 = null;
      this.ID9 = null;
      this.ID10 = null;
      this.ID11 = null;
      this.ID12 = null;
      this.ID13 = null;
    }
    else {
      if (initObj.hasOwnProperty('ID2')) {
        this.ID2 = initObj.ID2
      }
      else {
        this.ID2 = new ControlCommandAX12A();
      }
      if (initObj.hasOwnProperty('ID3')) {
        this.ID3 = initObj.ID3
      }
      else {
        this.ID3 = new ControlCommandMX28();
      }
      if (initObj.hasOwnProperty('ID4')) {
        this.ID4 = initObj.ID4
      }
      else {
        this.ID4 = new ControlCommandMX28();
      }
      if (initObj.hasOwnProperty('ID5')) {
        this.ID5 = initObj.ID5
      }
      else {
        this.ID5 = new ControlCommandMX28();
      }
      if (initObj.hasOwnProperty('ID6')) {
        this.ID6 = initObj.ID6
      }
      else {
        this.ID6 = new ControlCommandMX28();
      }
      if (initObj.hasOwnProperty('ID7')) {
        this.ID7 = initObj.ID7
      }
      else {
        this.ID7 = new ControlCommandMX28();
      }
      if (initObj.hasOwnProperty('ID8')) {
        this.ID8 = initObj.ID8
      }
      else {
        this.ID8 = new ControlCommandAX12A();
      }
      if (initObj.hasOwnProperty('ID9')) {
        this.ID9 = initObj.ID9
      }
      else {
        this.ID9 = new ControlCommandMX28();
      }
      if (initObj.hasOwnProperty('ID10')) {
        this.ID10 = initObj.ID10
      }
      else {
        this.ID10 = new ControlCommandMX28();
      }
      if (initObj.hasOwnProperty('ID11')) {
        this.ID11 = initObj.ID11
      }
      else {
        this.ID11 = new ControlCommandMX28();
      }
      if (initObj.hasOwnProperty('ID12')) {
        this.ID12 = initObj.ID12
      }
      else {
        this.ID12 = new ControlCommandMX28();
      }
      if (initObj.hasOwnProperty('ID13')) {
        this.ID13 = initObj.ID13
      }
      else {
        this.ID13 = new ControlCommandMX28();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommandServo
    // Serialize message field [ID2]
    bufferOffset = ControlCommandAX12A.serialize(obj.ID2, buffer, bufferOffset);
    // Serialize message field [ID3]
    bufferOffset = ControlCommandMX28.serialize(obj.ID3, buffer, bufferOffset);
    // Serialize message field [ID4]
    bufferOffset = ControlCommandMX28.serialize(obj.ID4, buffer, bufferOffset);
    // Serialize message field [ID5]
    bufferOffset = ControlCommandMX28.serialize(obj.ID5, buffer, bufferOffset);
    // Serialize message field [ID6]
    bufferOffset = ControlCommandMX28.serialize(obj.ID6, buffer, bufferOffset);
    // Serialize message field [ID7]
    bufferOffset = ControlCommandMX28.serialize(obj.ID7, buffer, bufferOffset);
    // Serialize message field [ID8]
    bufferOffset = ControlCommandAX12A.serialize(obj.ID8, buffer, bufferOffset);
    // Serialize message field [ID9]
    bufferOffset = ControlCommandMX28.serialize(obj.ID9, buffer, bufferOffset);
    // Serialize message field [ID10]
    bufferOffset = ControlCommandMX28.serialize(obj.ID10, buffer, bufferOffset);
    // Serialize message field [ID11]
    bufferOffset = ControlCommandMX28.serialize(obj.ID11, buffer, bufferOffset);
    // Serialize message field [ID12]
    bufferOffset = ControlCommandMX28.serialize(obj.ID12, buffer, bufferOffset);
    // Serialize message field [ID13]
    bufferOffset = ControlCommandMX28.serialize(obj.ID13, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommandServo
    let len;
    let data = new CommandServo(null);
    // Deserialize message field [ID2]
    data.ID2 = ControlCommandAX12A.deserialize(buffer, bufferOffset);
    // Deserialize message field [ID3]
    data.ID3 = ControlCommandMX28.deserialize(buffer, bufferOffset);
    // Deserialize message field [ID4]
    data.ID4 = ControlCommandMX28.deserialize(buffer, bufferOffset);
    // Deserialize message field [ID5]
    data.ID5 = ControlCommandMX28.deserialize(buffer, bufferOffset);
    // Deserialize message field [ID6]
    data.ID6 = ControlCommandMX28.deserialize(buffer, bufferOffset);
    // Deserialize message field [ID7]
    data.ID7 = ControlCommandMX28.deserialize(buffer, bufferOffset);
    // Deserialize message field [ID8]
    data.ID8 = ControlCommandAX12A.deserialize(buffer, bufferOffset);
    // Deserialize message field [ID9]
    data.ID9 = ControlCommandMX28.deserialize(buffer, bufferOffset);
    // Deserialize message field [ID10]
    data.ID10 = ControlCommandMX28.deserialize(buffer, bufferOffset);
    // Deserialize message field [ID11]
    data.ID11 = ControlCommandMX28.deserialize(buffer, bufferOffset);
    // Deserialize message field [ID12]
    data.ID12 = ControlCommandMX28.deserialize(buffer, bufferOffset);
    // Deserialize message field [ID13]
    data.ID13 = ControlCommandMX28.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 84;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rewa_msgs/CommandServo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f958a627952b4e4e7996dc10180b3884';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ControlCommandAX12A ID2
    ControlCommandMX28 ID3
    ControlCommandMX28 ID4
    ControlCommandMX28 ID5
    ControlCommandMX28 ID6
    ControlCommandMX28 ID7
    
    ControlCommandAX12A ID8
    ControlCommandMX28 ID9
    ControlCommandMX28 ID10
    ControlCommandMX28 ID11
    ControlCommandMX28 ID12
    ControlCommandMX28 ID13
    
    ================================================================================
    MSG: rewa_msgs/ControlCommandAX12A
    uint8 ID
    
    uint16 goalpos
    uint16 speed
    
    bool torque
    bool moving
    
    ================================================================================
    MSG: rewa_msgs/ControlCommandMX28
    uint8 ID
    
    uint16 goalpos
    uint16 speed
    
    bool torque
    bool moving
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CommandServo(null);
    if (msg.ID2 !== undefined) {
      resolved.ID2 = ControlCommandAX12A.Resolve(msg.ID2)
    }
    else {
      resolved.ID2 = new ControlCommandAX12A()
    }

    if (msg.ID3 !== undefined) {
      resolved.ID3 = ControlCommandMX28.Resolve(msg.ID3)
    }
    else {
      resolved.ID3 = new ControlCommandMX28()
    }

    if (msg.ID4 !== undefined) {
      resolved.ID4 = ControlCommandMX28.Resolve(msg.ID4)
    }
    else {
      resolved.ID4 = new ControlCommandMX28()
    }

    if (msg.ID5 !== undefined) {
      resolved.ID5 = ControlCommandMX28.Resolve(msg.ID5)
    }
    else {
      resolved.ID5 = new ControlCommandMX28()
    }

    if (msg.ID6 !== undefined) {
      resolved.ID6 = ControlCommandMX28.Resolve(msg.ID6)
    }
    else {
      resolved.ID6 = new ControlCommandMX28()
    }

    if (msg.ID7 !== undefined) {
      resolved.ID7 = ControlCommandMX28.Resolve(msg.ID7)
    }
    else {
      resolved.ID7 = new ControlCommandMX28()
    }

    if (msg.ID8 !== undefined) {
      resolved.ID8 = ControlCommandAX12A.Resolve(msg.ID8)
    }
    else {
      resolved.ID8 = new ControlCommandAX12A()
    }

    if (msg.ID9 !== undefined) {
      resolved.ID9 = ControlCommandMX28.Resolve(msg.ID9)
    }
    else {
      resolved.ID9 = new ControlCommandMX28()
    }

    if (msg.ID10 !== undefined) {
      resolved.ID10 = ControlCommandMX28.Resolve(msg.ID10)
    }
    else {
      resolved.ID10 = new ControlCommandMX28()
    }

    if (msg.ID11 !== undefined) {
      resolved.ID11 = ControlCommandMX28.Resolve(msg.ID11)
    }
    else {
      resolved.ID11 = new ControlCommandMX28()
    }

    if (msg.ID12 !== undefined) {
      resolved.ID12 = ControlCommandMX28.Resolve(msg.ID12)
    }
    else {
      resolved.ID12 = new ControlCommandMX28()
    }

    if (msg.ID13 !== undefined) {
      resolved.ID13 = ControlCommandMX28.Resolve(msg.ID13)
    }
    else {
      resolved.ID13 = new ControlCommandMX28()
    }

    return resolved;
    }
};

module.exports = CommandServo;
