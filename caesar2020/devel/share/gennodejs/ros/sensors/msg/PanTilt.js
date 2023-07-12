// Auto-generated. Do not edit!

// (in-package sensors.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PanTilt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pan = null;
      this.tilt = null;
      this.rel = null;
    }
    else {
      if (initObj.hasOwnProperty('pan')) {
        this.pan = initObj.pan
      }
      else {
        this.pan = 0.0;
      }
      if (initObj.hasOwnProperty('tilt')) {
        this.tilt = initObj.tilt
      }
      else {
        this.tilt = 0.0;
      }
      if (initObj.hasOwnProperty('rel')) {
        this.rel = initObj.rel
      }
      else {
        this.rel = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PanTilt
    // Serialize message field [pan]
    bufferOffset = _serializer.float32(obj.pan, buffer, bufferOffset);
    // Serialize message field [tilt]
    bufferOffset = _serializer.float32(obj.tilt, buffer, bufferOffset);
    // Serialize message field [rel]
    bufferOffset = _serializer.bool(obj.rel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PanTilt
    let len;
    let data = new PanTilt(null);
    // Deserialize message field [pan]
    data.pan = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tilt]
    data.tilt = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rel]
    data.rel = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensors/PanTilt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c8ce171acfa745a5b6ceb9bc3cf0e1d0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 pan
    float32 tilt
    bool rel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PanTilt(null);
    if (msg.pan !== undefined) {
      resolved.pan = msg.pan;
    }
    else {
      resolved.pan = 0.0
    }

    if (msg.tilt !== undefined) {
      resolved.tilt = msg.tilt;
    }
    else {
      resolved.tilt = 0.0
    }

    if (msg.rel !== undefined) {
      resolved.rel = msg.rel;
    }
    else {
      resolved.rel = false
    }

    return resolved;
    }
};

module.exports = PanTilt;
