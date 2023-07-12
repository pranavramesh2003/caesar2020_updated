// Auto-generated. Do not edit!

// (in-package detection.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class detection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.xmin = null;
      this.ymin = null;
      this.xmax = null;
      this.ymax = null;
      this.score = null;
      this.category = null;
    }
    else {
      if (initObj.hasOwnProperty('xmin')) {
        this.xmin = initObj.xmin
      }
      else {
        this.xmin = 0;
      }
      if (initObj.hasOwnProperty('ymin')) {
        this.ymin = initObj.ymin
      }
      else {
        this.ymin = 0;
      }
      if (initObj.hasOwnProperty('xmax')) {
        this.xmax = initObj.xmax
      }
      else {
        this.xmax = 0;
      }
      if (initObj.hasOwnProperty('ymax')) {
        this.ymax = initObj.ymax
      }
      else {
        this.ymax = 0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('category')) {
        this.category = initObj.category
      }
      else {
        this.category = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type detection
    // Serialize message field [xmin]
    bufferOffset = _serializer.uint16(obj.xmin, buffer, bufferOffset);
    // Serialize message field [ymin]
    bufferOffset = _serializer.uint16(obj.ymin, buffer, bufferOffset);
    // Serialize message field [xmax]
    bufferOffset = _serializer.uint16(obj.xmax, buffer, bufferOffset);
    // Serialize message field [ymax]
    bufferOffset = _serializer.uint16(obj.ymax, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [category]
    bufferOffset = _serializer.uint8(obj.category, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type detection
    let len;
    let data = new detection(null);
    // Deserialize message field [xmin]
    data.xmin = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ymin]
    data.ymin = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [xmax]
    data.xmax = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ymax]
    data.ymax = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [category]
    data.category = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'detection/detection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '749131da678d2cc04e6f077d4ec426e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 xmin
    uint16 ymin
    uint16 xmax
    uint16 ymax
    float32 score
    uint8 category #1:left 2:right 3:Ball
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new detection(null);
    if (msg.xmin !== undefined) {
      resolved.xmin = msg.xmin;
    }
    else {
      resolved.xmin = 0
    }

    if (msg.ymin !== undefined) {
      resolved.ymin = msg.ymin;
    }
    else {
      resolved.ymin = 0
    }

    if (msg.xmax !== undefined) {
      resolved.xmax = msg.xmax;
    }
    else {
      resolved.xmax = 0
    }

    if (msg.ymax !== undefined) {
      resolved.ymax = msg.ymax;
    }
    else {
      resolved.ymax = 0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.category !== undefined) {
      resolved.category = msg.category;
    }
    else {
      resolved.category = 0
    }

    return resolved;
    }
};

module.exports = detection;
