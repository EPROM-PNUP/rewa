# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rewa_msgs/CommandServo.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import rewa_msgs.msg

class CommandServo(genpy.Message):
  _md5sum = "f958a627952b4e4e7996dc10180b3884"
  _type = "rewa_msgs/CommandServo"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """ControlCommandAX12A ID2
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
"""
  __slots__ = ['ID2','ID3','ID4','ID5','ID6','ID7','ID8','ID9','ID10','ID11','ID12','ID13']
  _slot_types = ['rewa_msgs/ControlCommandAX12A','rewa_msgs/ControlCommandMX28','rewa_msgs/ControlCommandMX28','rewa_msgs/ControlCommandMX28','rewa_msgs/ControlCommandMX28','rewa_msgs/ControlCommandMX28','rewa_msgs/ControlCommandAX12A','rewa_msgs/ControlCommandMX28','rewa_msgs/ControlCommandMX28','rewa_msgs/ControlCommandMX28','rewa_msgs/ControlCommandMX28','rewa_msgs/ControlCommandMX28']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       ID2,ID3,ID4,ID5,ID6,ID7,ID8,ID9,ID10,ID11,ID12,ID13

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CommandServo, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.ID2 is None:
        self.ID2 = rewa_msgs.msg.ControlCommandAX12A()
      if self.ID3 is None:
        self.ID3 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID4 is None:
        self.ID4 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID5 is None:
        self.ID5 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID6 is None:
        self.ID6 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID7 is None:
        self.ID7 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID8 is None:
        self.ID8 = rewa_msgs.msg.ControlCommandAX12A()
      if self.ID9 is None:
        self.ID9 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID10 is None:
        self.ID10 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID11 is None:
        self.ID11 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID12 is None:
        self.ID12 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID13 is None:
        self.ID13 = rewa_msgs.msg.ControlCommandMX28()
    else:
      self.ID2 = rewa_msgs.msg.ControlCommandAX12A()
      self.ID3 = rewa_msgs.msg.ControlCommandMX28()
      self.ID4 = rewa_msgs.msg.ControlCommandMX28()
      self.ID5 = rewa_msgs.msg.ControlCommandMX28()
      self.ID6 = rewa_msgs.msg.ControlCommandMX28()
      self.ID7 = rewa_msgs.msg.ControlCommandMX28()
      self.ID8 = rewa_msgs.msg.ControlCommandAX12A()
      self.ID9 = rewa_msgs.msg.ControlCommandMX28()
      self.ID10 = rewa_msgs.msg.ControlCommandMX28()
      self.ID11 = rewa_msgs.msg.ControlCommandMX28()
      self.ID12 = rewa_msgs.msg.ControlCommandMX28()
      self.ID13 = rewa_msgs.msg.ControlCommandMX28()

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
      buff.write(_get_struct_B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H2B().pack(_x.ID2.ID, _x.ID2.goalpos, _x.ID2.speed, _x.ID2.torque, _x.ID2.moving, _x.ID3.ID, _x.ID3.goalpos, _x.ID3.speed, _x.ID3.torque, _x.ID3.moving, _x.ID4.ID, _x.ID4.goalpos, _x.ID4.speed, _x.ID4.torque, _x.ID4.moving, _x.ID5.ID, _x.ID5.goalpos, _x.ID5.speed, _x.ID5.torque, _x.ID5.moving, _x.ID6.ID, _x.ID6.goalpos, _x.ID6.speed, _x.ID6.torque, _x.ID6.moving, _x.ID7.ID, _x.ID7.goalpos, _x.ID7.speed, _x.ID7.torque, _x.ID7.moving, _x.ID8.ID, _x.ID8.goalpos, _x.ID8.speed, _x.ID8.torque, _x.ID8.moving, _x.ID9.ID, _x.ID9.goalpos, _x.ID9.speed, _x.ID9.torque, _x.ID9.moving, _x.ID10.ID, _x.ID10.goalpos, _x.ID10.speed, _x.ID10.torque, _x.ID10.moving, _x.ID11.ID, _x.ID11.goalpos, _x.ID11.speed, _x.ID11.torque, _x.ID11.moving, _x.ID12.ID, _x.ID12.goalpos, _x.ID12.speed, _x.ID12.torque, _x.ID12.moving, _x.ID13.ID, _x.ID13.goalpos, _x.ID13.speed, _x.ID13.torque, _x.ID13.moving))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.ID2 is None:
        self.ID2 = rewa_msgs.msg.ControlCommandAX12A()
      if self.ID3 is None:
        self.ID3 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID4 is None:
        self.ID4 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID5 is None:
        self.ID5 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID6 is None:
        self.ID6 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID7 is None:
        self.ID7 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID8 is None:
        self.ID8 = rewa_msgs.msg.ControlCommandAX12A()
      if self.ID9 is None:
        self.ID9 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID10 is None:
        self.ID10 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID11 is None:
        self.ID11 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID12 is None:
        self.ID12 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID13 is None:
        self.ID13 = rewa_msgs.msg.ControlCommandMX28()
      end = 0
      _x = self
      start = end
      end += 84
      (_x.ID2.ID, _x.ID2.goalpos, _x.ID2.speed, _x.ID2.torque, _x.ID2.moving, _x.ID3.ID, _x.ID3.goalpos, _x.ID3.speed, _x.ID3.torque, _x.ID3.moving, _x.ID4.ID, _x.ID4.goalpos, _x.ID4.speed, _x.ID4.torque, _x.ID4.moving, _x.ID5.ID, _x.ID5.goalpos, _x.ID5.speed, _x.ID5.torque, _x.ID5.moving, _x.ID6.ID, _x.ID6.goalpos, _x.ID6.speed, _x.ID6.torque, _x.ID6.moving, _x.ID7.ID, _x.ID7.goalpos, _x.ID7.speed, _x.ID7.torque, _x.ID7.moving, _x.ID8.ID, _x.ID8.goalpos, _x.ID8.speed, _x.ID8.torque, _x.ID8.moving, _x.ID9.ID, _x.ID9.goalpos, _x.ID9.speed, _x.ID9.torque, _x.ID9.moving, _x.ID10.ID, _x.ID10.goalpos, _x.ID10.speed, _x.ID10.torque, _x.ID10.moving, _x.ID11.ID, _x.ID11.goalpos, _x.ID11.speed, _x.ID11.torque, _x.ID11.moving, _x.ID12.ID, _x.ID12.goalpos, _x.ID12.speed, _x.ID12.torque, _x.ID12.moving, _x.ID13.ID, _x.ID13.goalpos, _x.ID13.speed, _x.ID13.torque, _x.ID13.moving,) = _get_struct_B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H2B().unpack(str[start:end])
      self.ID2.torque = bool(self.ID2.torque)
      self.ID2.moving = bool(self.ID2.moving)
      self.ID3.torque = bool(self.ID3.torque)
      self.ID3.moving = bool(self.ID3.moving)
      self.ID4.torque = bool(self.ID4.torque)
      self.ID4.moving = bool(self.ID4.moving)
      self.ID5.torque = bool(self.ID5.torque)
      self.ID5.moving = bool(self.ID5.moving)
      self.ID6.torque = bool(self.ID6.torque)
      self.ID6.moving = bool(self.ID6.moving)
      self.ID7.torque = bool(self.ID7.torque)
      self.ID7.moving = bool(self.ID7.moving)
      self.ID8.torque = bool(self.ID8.torque)
      self.ID8.moving = bool(self.ID8.moving)
      self.ID9.torque = bool(self.ID9.torque)
      self.ID9.moving = bool(self.ID9.moving)
      self.ID10.torque = bool(self.ID10.torque)
      self.ID10.moving = bool(self.ID10.moving)
      self.ID11.torque = bool(self.ID11.torque)
      self.ID11.moving = bool(self.ID11.moving)
      self.ID12.torque = bool(self.ID12.torque)
      self.ID12.moving = bool(self.ID12.moving)
      self.ID13.torque = bool(self.ID13.torque)
      self.ID13.moving = bool(self.ID13.moving)
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
      buff.write(_get_struct_B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H2B().pack(_x.ID2.ID, _x.ID2.goalpos, _x.ID2.speed, _x.ID2.torque, _x.ID2.moving, _x.ID3.ID, _x.ID3.goalpos, _x.ID3.speed, _x.ID3.torque, _x.ID3.moving, _x.ID4.ID, _x.ID4.goalpos, _x.ID4.speed, _x.ID4.torque, _x.ID4.moving, _x.ID5.ID, _x.ID5.goalpos, _x.ID5.speed, _x.ID5.torque, _x.ID5.moving, _x.ID6.ID, _x.ID6.goalpos, _x.ID6.speed, _x.ID6.torque, _x.ID6.moving, _x.ID7.ID, _x.ID7.goalpos, _x.ID7.speed, _x.ID7.torque, _x.ID7.moving, _x.ID8.ID, _x.ID8.goalpos, _x.ID8.speed, _x.ID8.torque, _x.ID8.moving, _x.ID9.ID, _x.ID9.goalpos, _x.ID9.speed, _x.ID9.torque, _x.ID9.moving, _x.ID10.ID, _x.ID10.goalpos, _x.ID10.speed, _x.ID10.torque, _x.ID10.moving, _x.ID11.ID, _x.ID11.goalpos, _x.ID11.speed, _x.ID11.torque, _x.ID11.moving, _x.ID12.ID, _x.ID12.goalpos, _x.ID12.speed, _x.ID12.torque, _x.ID12.moving, _x.ID13.ID, _x.ID13.goalpos, _x.ID13.speed, _x.ID13.torque, _x.ID13.moving))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.ID2 is None:
        self.ID2 = rewa_msgs.msg.ControlCommandAX12A()
      if self.ID3 is None:
        self.ID3 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID4 is None:
        self.ID4 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID5 is None:
        self.ID5 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID6 is None:
        self.ID6 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID7 is None:
        self.ID7 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID8 is None:
        self.ID8 = rewa_msgs.msg.ControlCommandAX12A()
      if self.ID9 is None:
        self.ID9 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID10 is None:
        self.ID10 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID11 is None:
        self.ID11 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID12 is None:
        self.ID12 = rewa_msgs.msg.ControlCommandMX28()
      if self.ID13 is None:
        self.ID13 = rewa_msgs.msg.ControlCommandMX28()
      end = 0
      _x = self
      start = end
      end += 84
      (_x.ID2.ID, _x.ID2.goalpos, _x.ID2.speed, _x.ID2.torque, _x.ID2.moving, _x.ID3.ID, _x.ID3.goalpos, _x.ID3.speed, _x.ID3.torque, _x.ID3.moving, _x.ID4.ID, _x.ID4.goalpos, _x.ID4.speed, _x.ID4.torque, _x.ID4.moving, _x.ID5.ID, _x.ID5.goalpos, _x.ID5.speed, _x.ID5.torque, _x.ID5.moving, _x.ID6.ID, _x.ID6.goalpos, _x.ID6.speed, _x.ID6.torque, _x.ID6.moving, _x.ID7.ID, _x.ID7.goalpos, _x.ID7.speed, _x.ID7.torque, _x.ID7.moving, _x.ID8.ID, _x.ID8.goalpos, _x.ID8.speed, _x.ID8.torque, _x.ID8.moving, _x.ID9.ID, _x.ID9.goalpos, _x.ID9.speed, _x.ID9.torque, _x.ID9.moving, _x.ID10.ID, _x.ID10.goalpos, _x.ID10.speed, _x.ID10.torque, _x.ID10.moving, _x.ID11.ID, _x.ID11.goalpos, _x.ID11.speed, _x.ID11.torque, _x.ID11.moving, _x.ID12.ID, _x.ID12.goalpos, _x.ID12.speed, _x.ID12.torque, _x.ID12.moving, _x.ID13.ID, _x.ID13.goalpos, _x.ID13.speed, _x.ID13.torque, _x.ID13.moving,) = _get_struct_B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H2B().unpack(str[start:end])
      self.ID2.torque = bool(self.ID2.torque)
      self.ID2.moving = bool(self.ID2.moving)
      self.ID3.torque = bool(self.ID3.torque)
      self.ID3.moving = bool(self.ID3.moving)
      self.ID4.torque = bool(self.ID4.torque)
      self.ID4.moving = bool(self.ID4.moving)
      self.ID5.torque = bool(self.ID5.torque)
      self.ID5.moving = bool(self.ID5.moving)
      self.ID6.torque = bool(self.ID6.torque)
      self.ID6.moving = bool(self.ID6.moving)
      self.ID7.torque = bool(self.ID7.torque)
      self.ID7.moving = bool(self.ID7.moving)
      self.ID8.torque = bool(self.ID8.torque)
      self.ID8.moving = bool(self.ID8.moving)
      self.ID9.torque = bool(self.ID9.torque)
      self.ID9.moving = bool(self.ID9.moving)
      self.ID10.torque = bool(self.ID10.torque)
      self.ID10.moving = bool(self.ID10.moving)
      self.ID11.torque = bool(self.ID11.torque)
      self.ID11.moving = bool(self.ID11.moving)
      self.ID12.torque = bool(self.ID12.torque)
      self.ID12.moving = bool(self.ID12.moving)
      self.ID13.torque = bool(self.ID13.torque)
      self.ID13.moving = bool(self.ID13.moving)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H2B = None
def _get_struct_B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H2B():
    global _struct_B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H2B
    if _struct_B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H2B is None:
        _struct_B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H2B = struct.Struct("<B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H2B")
    return _struct_B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H3B2H2B
