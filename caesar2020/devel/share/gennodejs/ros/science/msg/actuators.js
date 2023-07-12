// Auto-generated. Do not edit!

// (in-package science.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class actuators {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stepper = null;
      this.linac = null;
      this.micro = null;
      this.rhino = null;
      this.lid = null;
      this.sht = null;
    }
    else {
      if (initObj.hasOwnProperty('stepper')) {
        this.stepper = initObj.stepper
      }
      else {
        this.stepper = 0;
      }
      if (initObj.hasOwnProperty('linac')) {
        this.linac = initObj.linac
      }
      else {
        this.linac = 0;
      }
      if (initObj.hasOwnProperty('micro')) {
        this.micro = initObj.micro
      }
      else {
        this.micro = 0;
      }
      if (initObj.hasOwnProperty('rhino')) {
        this.rhino = initObj.rhino
      }
      else {
        this.rhino = 0;
      }
      if (initObj.hasOwnProperty('lid')) {
        this.lid = initObj.lid
      }
      else {
        this.lid = 0;
      }
      if (initObj.hasOwnProperty('sht')) {
        this.sht = initObj.sht
      }
      else {
        this.sht = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type actuators
    // Serialize message field [stepper]
    bufferOffset = _serializer.int16(obj.stepper, buffer, bufferOffset);
    // Serialize message field [linac]
    bufferOffset = _serializer.int16(obj.linac, buffer, bufferOffset);
    // Serialize message field [micro]
    bufferOffset = _serializer.int16(obj.micro, buffer, bufferOffset);
    // Serialize message field [rhino]
    bufferOffset = _serializer.int16(obj.rhino, buffer, bufferOffset);
    // Serialize message field [lid]
    bufferOffset = _serializer.int16(obj.lid, buffer, bufferOffset);
    // Serialize message field [sht]
    bufferOffset = _serializer.int16(obj.sht, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type actuators
    let len;
    let data = new actuators(null);
    // Deserialize message field [stepper]
    data.stepper = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [linac]
    data.linac = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [micro]
    data.micro = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [rhino]
    data.rhino = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [lid]
    data.lid = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [sht]
    data.sht = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'science/actuators';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25eb6d63d183ea00408e6fe0331e103a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 stepper
    int16 linac
    int16 micro
    int16 rhino
    int16 lid
    int16 sht
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new actuators(null);
    if (msg.stepper !== undefined) {
      resolved.stepper = msg.stepper;
    }
    else {
      resolved.stepper = 0
    }

    if (msg.linac !== undefined) {
      resolved.linac = msg.linac;
    }
    else {
      resolved.linac = 0
    }

    if (msg.micro !== undefined) {
      resolved.micro = msg.micro;
    }
    else {
      resolved.micro = 0
    }

    if (msg.rhino !== undefined) {
      resolved.rhino = msg.rhino;
    }
    else {
      resolved.rhino = 0
    }

    if (msg.lid !== undefined) {
      resolved.lid = msg.lid;
    }
    else {
      resolved.lid = 0
    }

    if (msg.sht !== undefined) {
      resolved.sht = msg.sht;
    }
    else {
      resolved.sht = 0
    }

    return resolved;
    }
};

module.exports = actuators;
