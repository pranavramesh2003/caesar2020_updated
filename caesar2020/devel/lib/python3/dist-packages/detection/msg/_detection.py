# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from detection/detection.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class detection(genpy.Message):
  _md5sum = "749131da678d2cc04e6f077d4ec426e4"
  _type = "detection/detection"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint16 xmin
uint16 ymin
uint16 xmax
uint16 ymax
float32 score
uint8 category #1:left 2:right 3:Ball

"""
  __slots__ = ['xmin','ymin','xmax','ymax','score','category']
  _slot_types = ['uint16','uint16','uint16','uint16','float32','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       xmin,ymin,xmax,ymax,score,category

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(detection, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.xmin is None:
        self.xmin = 0
      if self.ymin is None:
        self.ymin = 0
      if self.xmax is None:
        self.xmax = 0
      if self.ymax is None:
        self.ymax = 0
      if self.score is None:
        self.score = 0.
      if self.category is None:
        self.category = 0
    else:
      self.xmin = 0
      self.ymin = 0
      self.xmax = 0
      self.ymax = 0
      self.score = 0.
      self.category = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_4HfB().pack(_x.xmin, _x.ymin, _x.xmax, _x.ymax, _x.score, _x.category))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 13
      (_x.xmin, _x.ymin, _x.xmax, _x.ymax, _x.score, _x.category,) = _get_struct_4HfB().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_4HfB().pack(_x.xmin, _x.ymin, _x.xmax, _x.ymax, _x.score, _x.category))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 13
      (_x.xmin, _x.ymin, _x.xmax, _x.ymax, _x.score, _x.category,) = _get_struct_4HfB().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4HfB = None
def _get_struct_4HfB():
    global _struct_4HfB
    if _struct_4HfB is None:
        _struct_4HfB = struct.Struct("<4HfB")
    return _struct_4HfB
