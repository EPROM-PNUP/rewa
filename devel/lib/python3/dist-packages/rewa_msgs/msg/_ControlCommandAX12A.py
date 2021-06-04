# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rewa_msgs/ControlCommandAX12A.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ControlCommandAX12A(genpy.Message):
  _md5sum = "d2ae415b4864b1ee94a8e10b78d938e0"
  _type = "rewa_msgs/ControlCommandAX12A"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8 ID

uint16 goalpos
uint16 speed

bool torque
bool moving
"""
  __slots__ = ['ID','goalpos','speed','torque','moving']
  _slot_types = ['uint8','uint16','uint16','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       ID,goalpos,speed,torque,moving

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ControlCommandAX12A, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.ID is None:
        self.ID = 0
      if self.goalpos is None:
        self.goalpos = 0
      if self.speed is None:
        self.speed = 0
      if self.torque is None:
        self.torque = False
      if self.moving is None:
        self.moving = False
    else:
      self.ID = 0
      self.goalpos = 0
      self.speed = 0
      self.torque = False
      self.moving = False

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
      buff.write(_get_struct_B2H2B().pack(_x.ID, _x.goalpos, _x.speed, _x.torque, _x.moving))
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
      end += 7
      (_x.ID, _x.goalpos, _x.speed, _x.torque, _x.moving,) = _get_struct_B2H2B().unpack(str[start:end])
      self.torque = bool(self.torque)
      self.moving = bool(self.moving)
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
      buff.write(_get_struct_B2H2B().pack(_x.ID, _x.goalpos, _x.speed, _x.torque, _x.moving))
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
      end += 7
      (_x.ID, _x.goalpos, _x.speed, _x.torque, _x.moving,) = _get_struct_B2H2B().unpack(str[start:end])
      self.torque = bool(self.torque)
      self.moving = bool(self.moving)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B2H2B = None
def _get_struct_B2H2B():
    global _struct_B2H2B
    if _struct_B2H2B is None:
        _struct_B2H2B = struct.Struct("<B2H2B")
    return _struct_B2H2B
