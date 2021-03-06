# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kinect_bridge2/KinectBodies.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import kinect_bridge2.msg

class KinectBodies(genpy.Message):
  _md5sum = "178a176ee37e33aa3ec8d736cc9d5801"
  _type = "kinect_bridge2/KinectBodies"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """kinect_bridge2/KinectBody[] bodies

================================================================================
MSG: kinect_bridge2/KinectBody
uint8 HAND_STATE_UNKNOWN = 0
uint8 HAND_STATE_NOT_TRACKED = 1
uint8 HAND_STATE_OPEN = 2
uint8 HAND_STATE_CLOSED = 3
uint8 HAND_STATE_LASSO = 4

kinect_bridge2/KinectJoint[] joints
uint8 is_tracked
uint8 hand_state_left
uint8 hand_state_right

kinect_bridge2/KinectBodyLean lean

================================================================================
MSG: kinect_bridge2/KinectJoint
uint8 JOINT_TYPE_SPINE_BASE = 0
uint8 JOINT_TYPE_SPINE_MID = 1
uint8 JOINT_TYPE_NECK = 2
uint8 JOINT_TYPE_HEAD = 3
uint8 JOINT_TYPE_SHOULDER_LEFT = 4
uint8 JOINT_TYPE_ELBOW_LEFT = 5
uint8 JOINT_TYPE_WRIST_LEFT = 6
uint8 JOINT_TYPE_HAND_LEFT = 7
uint8 JOINT_TYPE_SHOULDER_RIGHT = 8
uint8 JOINT_TYPE_ELBOW_RIGHT = 9
uint8 JOINT_TYPE_WRIST_RIGHT = 10
uint8 JOINT_TYPE_HAND_RIGHT = 11
uint8 JOINT_TYPE_HIP_LEFT = 12
uint8 JOINT_TYPE_KNEE_LEFT = 13
uint8 JOINT_TYPE_ANKLE_LEFT = 14
uint8 JOINT_TYPE_FOOT_LEFT = 15
uint8 JOINT_TYPE_HIP_RIGHT = 16
uint8 JOINT_TYPE_KNEE_RIGHT = 17
uint8 JOINT_TYPE_ANKLE_RIGHT = 18
uint8 JOINT_TYPE_FOOT_RIGHT = 19
uint8 JOINT_TYPE_SPINE_SHOULDER = 20
uint8 JOINT_TYPE_HANDTIP_LEFT = 21
uint8 JOINT_TYPE_THUMB_LEFT = 22
uint8 JOINT_TYPE_HANDTIP_RIGHT = 23
uint8 JOINT_TYPE_THUMB_RIGHT = 24

uint8 TRACKING_STATE_NOT_TRACKED = 0
uint8 TRACKING_STATE_INFERRED = 1
uint8 TRACKING_STATE_TRACKED = 2

geometry_msgs/Point position
geometry_msgs/Quaternion orientation
uint8 joint_type
uint8 tracking_state

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: kinect_bridge2/KinectBodyLean
float32 x
float32 y
"""
  __slots__ = ['bodies']
  _slot_types = ['kinect_bridge2/KinectBody[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       bodies

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(KinectBodies, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.bodies is None:
        self.bodies = []
    else:
      self.bodies = []

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
      length = len(self.bodies)
      buff.write(_struct_I.pack(length))
      for val1 in self.bodies:
        length = len(val1.joints)
        buff.write(_struct_I.pack(length))
        for val2 in val1.joints:
          _v1 = val2.position
          _x = _v1
          buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
          _v2 = val2.orientation
          _x = _v2
          buff.write(_struct_4d.pack(_x.x, _x.y, _x.z, _x.w))
          _x = val2
          buff.write(_struct_2B.pack(_x.joint_type, _x.tracking_state))
        _x = val1
        buff.write(_struct_3B.pack(_x.is_tracked, _x.hand_state_left, _x.hand_state_right))
        _v3 = val1.lean
        _x = _v3
        buff.write(_struct_2f.pack(_x.x, _x.y))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.bodies is None:
        self.bodies = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.bodies = []
      for i in range(0, length):
        val1 = kinect_bridge2.msg.KinectBody()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.joints = []
        for i in range(0, length):
          val2 = kinect_bridge2.msg.KinectJoint()
          _v4 = val2.position
          _x = _v4
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
          _v5 = val2.orientation
          _x = _v5
          start = end
          end += 32
          (_x.x, _x.y, _x.z, _x.w,) = _struct_4d.unpack(str[start:end])
          _x = val2
          start = end
          end += 2
          (_x.joint_type, _x.tracking_state,) = _struct_2B.unpack(str[start:end])
          val1.joints.append(val2)
        _x = val1
        start = end
        end += 3
        (_x.is_tracked, _x.hand_state_left, _x.hand_state_right,) = _struct_3B.unpack(str[start:end])
        _v6 = val1.lean
        _x = _v6
        start = end
        end += 8
        (_x.x, _x.y,) = _struct_2f.unpack(str[start:end])
        self.bodies.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.bodies)
      buff.write(_struct_I.pack(length))
      for val1 in self.bodies:
        length = len(val1.joints)
        buff.write(_struct_I.pack(length))
        for val2 in val1.joints:
          _v7 = val2.position
          _x = _v7
          buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
          _v8 = val2.orientation
          _x = _v8
          buff.write(_struct_4d.pack(_x.x, _x.y, _x.z, _x.w))
          _x = val2
          buff.write(_struct_2B.pack(_x.joint_type, _x.tracking_state))
        _x = val1
        buff.write(_struct_3B.pack(_x.is_tracked, _x.hand_state_left, _x.hand_state_right))
        _v9 = val1.lean
        _x = _v9
        buff.write(_struct_2f.pack(_x.x, _x.y))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.bodies is None:
        self.bodies = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.bodies = []
      for i in range(0, length):
        val1 = kinect_bridge2.msg.KinectBody()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.joints = []
        for i in range(0, length):
          val2 = kinect_bridge2.msg.KinectJoint()
          _v10 = val2.position
          _x = _v10
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
          _v11 = val2.orientation
          _x = _v11
          start = end
          end += 32
          (_x.x, _x.y, _x.z, _x.w,) = _struct_4d.unpack(str[start:end])
          _x = val2
          start = end
          end += 2
          (_x.joint_type, _x.tracking_state,) = _struct_2B.unpack(str[start:end])
          val1.joints.append(val2)
        _x = val1
        start = end
        end += 3
        (_x.is_tracked, _x.hand_state_left, _x.hand_state_right,) = _struct_3B.unpack(str[start:end])
        _v12 = val1.lean
        _x = _v12
        start = end
        end += 8
        (_x.x, _x.y,) = _struct_2f.unpack(str[start:end])
        self.bodies.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3B = struct.Struct("<3B")
_struct_4d = struct.Struct("<4d")
_struct_2f = struct.Struct("<2f")
_struct_2B = struct.Struct("<2B")
_struct_3d = struct.Struct("<3d")
