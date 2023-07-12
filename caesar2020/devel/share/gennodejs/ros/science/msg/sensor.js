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

class sensor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tsl_full = null;
      this.lps_temp = null;
      this.lps_pressure = null;
      this.sht_humidity = null;
      this.sht_temp = null;
    }
    else {
      if (initObj.hasOwnProperty('tsl_full')) {
        this.tsl_full = initObj.tsl_full
      }
      else {
        this.tsl_full = 0.0;
      }
      if (initObj.hasOwnProperty('lps_temp')) {
        this.lps_temp = initObj.lps_temp
      }
      else {
        this.lps_temp = 0.0;
      }
      if (initObj.hasOwnProperty('lps_pressure')) {
        this.lps_pressure = initObj.lps_pressure
      }
      else {
        this.lps_pressure = 0.0;
      }
      if (initObj.hasOwnProperty('sht_humidity')) {
        this.sht_humidity = initObj.sht_humidity
      }
      else {
        this.sht_humidity = 0.0;
      }
      if (initObj.hasOwnProperty('sht_temp')) {
        this.sht_temp = initObj.sht_temp
      }
      else {
        this.sht_temp = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sensor
    // Serialize message field [tsl_full]
    bufferOffset = _serializer.float32(obj.tsl_full, buffer, bufferOffset);
    // Serialize message field [lps_temp]
    bufferOffset = _serializer.float32(obj.lps_temp, buffer, bufferOffset);
    // Serialize message field [lps_pressure]
    bufferOffset = _serializer.float32(obj.lps_pressure, buffer, bufferOffset);
    // Serialize message field [sht_humidity]
    bufferOffset = _serializer.float32(obj.sht_humidity, buffer, bufferOffset);
    // Serialize message field [sht_temp]
    bufferOffset = _serializer.float32(obj.sht_temp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sensor
    let len;
    let data = new sensor(null);
    // Deserialize message field [tsl_full]
    data.tsl_full = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lps_temp]
    data.lps_temp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lps_pressure]
    data.lps_pressure = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sht_humidity]
    data.sht_humidity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sht_temp]
    data.sht_temp = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'science/sensor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f03c616c12fbcd715e685d60bb04a3dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 tsl_full
    float32 lps_temp
    float32 lps_pressure
    float32 sht_humidity
    float32 sht_temp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new sensor(null);
    if (msg.tsl_full !== undefined) {
      resolved.tsl_full = msg.tsl_full;
    }
    else {
      resolved.tsl_full = 0.0
    }

    if (msg.lps_temp !== undefined) {
      resolved.lps_temp = msg.lps_temp;
    }
    else {
      resolved.lps_temp = 0.0
    }

    if (msg.lps_pressure !== undefined) {
      resolved.lps_pressure = msg.lps_pressure;
    }
    else {
      resolved.lps_pressure = 0.0
    }

    if (msg.sht_humidity !== undefined) {
      resolved.sht_humidity = msg.sht_humidity;
    }
    else {
      resolved.sht_humidity = 0.0
    }

    if (msg.sht_temp !== undefined) {
      resolved.sht_temp = msg.sht_temp;
    }
    else {
      resolved.sht_temp = 0.0
    }

    return resolved;
    }
};

module.exports = sensor;
