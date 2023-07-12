// Auto-generated. Do not edit!

// (in-package navigation.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class plan_stateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pause = null;
      this.contin = null;
      this.rst = null;
    }
    else {
      if (initObj.hasOwnProperty('pause')) {
        this.pause = initObj.pause
      }
      else {
        this.pause = 0;
      }
      if (initObj.hasOwnProperty('contin')) {
        this.contin = initObj.contin
      }
      else {
        this.contin = 0;
      }
      if (initObj.hasOwnProperty('rst')) {
        this.rst = initObj.rst
      }
      else {
        this.rst = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type plan_stateRequest
    // Serialize message field [pause]
    bufferOffset = _serializer.int8(obj.pause, buffer, bufferOffset);
    // Serialize message field [contin]
    bufferOffset = _serializer.int8(obj.contin, buffer, bufferOffset);
    // Serialize message field [rst]
    bufferOffset = _serializer.int8(obj.rst, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type plan_stateRequest
    let len;
    let data = new plan_stateRequest(null);
    // Deserialize message field [pause]
    data.pause = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [contin]
    data.contin = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [rst]
    data.rst = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'navigation/plan_stateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3784a326caf7609ed9090b60e51420a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 pause
    int8 contin
    int8 rst
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new plan_stateRequest(null);
    if (msg.pause !== undefined) {
      resolved.pause = msg.pause;
    }
    else {
      resolved.pause = 0
    }

    if (msg.contin !== undefined) {
      resolved.contin = msg.contin;
    }
    else {
      resolved.contin = 0
    }

    if (msg.rst !== undefined) {
      resolved.rst = msg.rst;
    }
    else {
      resolved.rst = 0
    }

    return resolved;
    }
};

class plan_stateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type plan_stateResponse
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type plan_stateResponse
    let len;
    let data = new plan_stateResponse(null);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.state);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'navigation/plan_stateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'af6d3a99f0fbeb66d3248fa4b3e675fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string state
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new plan_stateResponse(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: plan_stateRequest,
  Response: plan_stateResponse,
  md5sum() { return 'b77f4b0588be197cccf2ef4c09a3fa03'; },
  datatype() { return 'navigation/plan_state'; }
};
