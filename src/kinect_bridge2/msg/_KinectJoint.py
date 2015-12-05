# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kinect_bridge2/KinectJoint.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class KinectJoint(genpy.Message):
  _md5sum = "39f95ffe5b790c4fa94ce2b4bf6d9727"
  _type = "kinect_bridge2/KinectJoint"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint8 JOINT_TYPE_SPINE_BASE = 0
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

"""
  # Pseudo-constants
  JOINT_TYPE_SPINE_BASE = 0
  JOINT_TYPE_SPINE_MID = 1
  JOINT_TYPE_NECK = 2
  JOINT_TYPE_HEAD = 3
  JOINT_TYPE_SHOULDER_LEFT = 4
  JOINT_TYPE_ELBOW_LEFT = 5
  JOINT_TYPE_WRIST_LEFT = 6
  JOINT_TYPE_HAND_LEFT = 7
  JOINT_TYPE_SHOULDER_RIGHT = 8
  JOINT_TYPE_ELBOW_RIGHT = 9
  JOINT_TYPE_WRIST_RIGHT = 10
  JOINT_TYPE_HAND_RIGHT = 11
  JOINT_TYPE_HIP_LEFT = 12
  JOINT_TYPE_KNEE_LEFT = 13
  JOINT_TYPE_ANKLE_LEFT = 14
  JOINT_TYPE_FOOT_LEFT = 15
  JOINT_TYPE_HIP_RIGHT = 16
  JOINT_TYPE_KNEE_RIGHT = 17
  JOINT_TYPE_ANKLE_RIGHT = 18
  JOINT_TYPE_FOOT_RIGHT = 19
  JOINT_TYPE_SPINE_SHOULDER = 20
  JOINT_TYPE_HANDTIP_LEFT = 21
  JOINT_TYPE_THUMB_LEFT = 22
  JOINT_TYPE_HANDTIP_RIGHT = 23
  JOINT_TYPE_THUMB_RIGHT = 24
  TRACKING_STATE_NOT_TRACKED = 0
  TRACKING_STATE_INFERRED = 1
  TRACKING_STATE_TRACKED = 2

  __slots__ = ['position','orientation','joint_type','tracking_state']
  _slot_types = ['geometry_msgs/Point','geometry_msgs/Quaternion','uint8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       position,orientation,joint_type,tracking_state

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(KinectJoint, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.position is None:
        self.position = geometry_msgs.msg.Point()
      if self.orientation is None:
        self.orientation = geometry_msgs.msg.Quaternion()
      if self.joint_type is None:
        self.joint_type = 0
      if self.tracking_state is None:
        self.tracking_state = 0
    else:
      self.position = geometry_msgs.msg.Point()
      self.orientation = geometry_msgs.msg.Quaternion()
      self.joint_type = 0
      self.tracking_state = 0

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
      buff.write(_struct_7d2B.pack(_x.position.x, _x.position.y, _x.position.z, _x.orientation.x, _x.orientation.y, _x.orientation.z, _x.orientation.w, _x.joint_type, _x.tracking_state))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.position is None:
        self.position = geometry_msgs.msg.Point()
      if self.orientation is None:
        self.orientation = geometry_msgs.msg.Quaternion()
      end = 0
      _x = self
      start = end
      end += 58
      (_x.position.x, _x.position.y, _x.position.z, _x.orientation.x, _x.orientation.y, _x.orientation.z, _x.orientation.w, _x.joint_type, _x.tracking_state,) = _struct_7d2B.unpack(str[start:end])
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
      _x = self
      buff.write(_struct_7d2B.pack(_x.position.x, _x.position.y, _x.position.z, _x.orientation.x, _x.orientation.y, _x.orientation.z, _x.orientation.w, _x.joint_type, _x.tracking_state))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.position is None:
        self.position = geometry_msgs.msg.Point()
      if self.orientation is None:
        self.orientation = geometry_msgs.msg.Quaternion()
      end = 0
      _x = self
      start = end
      end += 58
      (_x.position.x, _x.position.y, _x.position.z, _x.orientation.x, _x.orientation.y, _x.orientation.z, _x.orientation.w, _x.joint_type, _x.tracking_state,) = _struct_7d2B.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_7d2B = struct.Struct("<7d2B")