; Auto-generated. Do not edit!


(cl:in-package kinect_bridge2-msg)


;//! \htmlinclude KinectJoint.msg.html

(cl:defclass <KinectJoint> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (joint_type
    :reader joint_type
    :initarg :joint_type
    :type cl:fixnum
    :initform 0)
   (tracking_state
    :reader tracking_state
    :initarg :tracking_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass KinectJoint (<KinectJoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KinectJoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KinectJoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinect_bridge2-msg:<KinectJoint> is deprecated: use kinect_bridge2-msg:KinectJoint instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <KinectJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinect_bridge2-msg:position-val is deprecated.  Use kinect_bridge2-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <KinectJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinect_bridge2-msg:orientation-val is deprecated.  Use kinect_bridge2-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'joint_type-val :lambda-list '(m))
(cl:defmethod joint_type-val ((m <KinectJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinect_bridge2-msg:joint_type-val is deprecated.  Use kinect_bridge2-msg:joint_type instead.")
  (joint_type m))

(cl:ensure-generic-function 'tracking_state-val :lambda-list '(m))
(cl:defmethod tracking_state-val ((m <KinectJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinect_bridge2-msg:tracking_state-val is deprecated.  Use kinect_bridge2-msg:tracking_state instead.")
  (tracking_state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<KinectJoint>)))
    "Constants for message type '<KinectJoint>"
  '((:JOINT_TYPE_SPINE_BASE . 0)
    (:JOINT_TYPE_SPINE_MID . 1)
    (:JOINT_TYPE_NECK . 2)
    (:JOINT_TYPE_HEAD . 3)
    (:JOINT_TYPE_SHOULDER_LEFT . 4)
    (:JOINT_TYPE_ELBOW_LEFT . 5)
    (:JOINT_TYPE_WRIST_LEFT . 6)
    (:JOINT_TYPE_HAND_LEFT . 7)
    (:JOINT_TYPE_SHOULDER_RIGHT . 8)
    (:JOINT_TYPE_ELBOW_RIGHT . 9)
    (:JOINT_TYPE_WRIST_RIGHT . 10)
    (:JOINT_TYPE_HAND_RIGHT . 11)
    (:JOINT_TYPE_HIP_LEFT . 12)
    (:JOINT_TYPE_KNEE_LEFT . 13)
    (:JOINT_TYPE_ANKLE_LEFT . 14)
    (:JOINT_TYPE_FOOT_LEFT . 15)
    (:JOINT_TYPE_HIP_RIGHT . 16)
    (:JOINT_TYPE_KNEE_RIGHT . 17)
    (:JOINT_TYPE_ANKLE_RIGHT . 18)
    (:JOINT_TYPE_FOOT_RIGHT . 19)
    (:JOINT_TYPE_SPINE_SHOULDER . 20)
    (:JOINT_TYPE_HANDTIP_LEFT . 21)
    (:JOINT_TYPE_THUMB_LEFT . 22)
    (:JOINT_TYPE_HANDTIP_RIGHT . 23)
    (:JOINT_TYPE_THUMB_RIGHT . 24)
    (:TRACKING_STATE_NOT_TRACKED . 0)
    (:TRACKING_STATE_INFERRED . 1)
    (:TRACKING_STATE_TRACKED . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'KinectJoint)))
    "Constants for message type 'KinectJoint"
  '((:JOINT_TYPE_SPINE_BASE . 0)
    (:JOINT_TYPE_SPINE_MID . 1)
    (:JOINT_TYPE_NECK . 2)
    (:JOINT_TYPE_HEAD . 3)
    (:JOINT_TYPE_SHOULDER_LEFT . 4)
    (:JOINT_TYPE_ELBOW_LEFT . 5)
    (:JOINT_TYPE_WRIST_LEFT . 6)
    (:JOINT_TYPE_HAND_LEFT . 7)
    (:JOINT_TYPE_SHOULDER_RIGHT . 8)
    (:JOINT_TYPE_ELBOW_RIGHT . 9)
    (:JOINT_TYPE_WRIST_RIGHT . 10)
    (:JOINT_TYPE_HAND_RIGHT . 11)
    (:JOINT_TYPE_HIP_LEFT . 12)
    (:JOINT_TYPE_KNEE_LEFT . 13)
    (:JOINT_TYPE_ANKLE_LEFT . 14)
    (:JOINT_TYPE_FOOT_LEFT . 15)
    (:JOINT_TYPE_HIP_RIGHT . 16)
    (:JOINT_TYPE_KNEE_RIGHT . 17)
    (:JOINT_TYPE_ANKLE_RIGHT . 18)
    (:JOINT_TYPE_FOOT_RIGHT . 19)
    (:JOINT_TYPE_SPINE_SHOULDER . 20)
    (:JOINT_TYPE_HANDTIP_LEFT . 21)
    (:JOINT_TYPE_THUMB_LEFT . 22)
    (:JOINT_TYPE_HANDTIP_RIGHT . 23)
    (:JOINT_TYPE_THUMB_RIGHT . 24)
    (:TRACKING_STATE_NOT_TRACKED . 0)
    (:TRACKING_STATE_INFERRED . 1)
    (:TRACKING_STATE_TRACKED . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KinectJoint>) ostream)
  "Serializes a message object of type '<KinectJoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joint_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tracking_state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KinectJoint>) istream)
  "Deserializes a message object of type '<KinectJoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joint_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tracking_state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KinectJoint>)))
  "Returns string type for a message object of type '<KinectJoint>"
  "kinect_bridge2/KinectJoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KinectJoint)))
  "Returns string type for a message object of type 'KinectJoint"
  "kinect_bridge2/KinectJoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KinectJoint>)))
  "Returns md5sum for a message object of type '<KinectJoint>"
  "39f95ffe5b790c4fa94ce2b4bf6d9727")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KinectJoint)))
  "Returns md5sum for a message object of type 'KinectJoint"
  "39f95ffe5b790c4fa94ce2b4bf6d9727")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KinectJoint>)))
  "Returns full string definition for message of type '<KinectJoint>"
  (cl:format cl:nil "uint8 JOINT_TYPE_SPINE_BASE = 0~%uint8 JOINT_TYPE_SPINE_MID = 1~%uint8 JOINT_TYPE_NECK = 2~%uint8 JOINT_TYPE_HEAD = 3~%uint8 JOINT_TYPE_SHOULDER_LEFT = 4~%uint8 JOINT_TYPE_ELBOW_LEFT = 5~%uint8 JOINT_TYPE_WRIST_LEFT = 6~%uint8 JOINT_TYPE_HAND_LEFT = 7~%uint8 JOINT_TYPE_SHOULDER_RIGHT = 8~%uint8 JOINT_TYPE_ELBOW_RIGHT = 9~%uint8 JOINT_TYPE_WRIST_RIGHT = 10~%uint8 JOINT_TYPE_HAND_RIGHT = 11~%uint8 JOINT_TYPE_HIP_LEFT = 12~%uint8 JOINT_TYPE_KNEE_LEFT = 13~%uint8 JOINT_TYPE_ANKLE_LEFT = 14~%uint8 JOINT_TYPE_FOOT_LEFT = 15~%uint8 JOINT_TYPE_HIP_RIGHT = 16~%uint8 JOINT_TYPE_KNEE_RIGHT = 17~%uint8 JOINT_TYPE_ANKLE_RIGHT = 18~%uint8 JOINT_TYPE_FOOT_RIGHT = 19~%uint8 JOINT_TYPE_SPINE_SHOULDER = 20~%uint8 JOINT_TYPE_HANDTIP_LEFT = 21~%uint8 JOINT_TYPE_THUMB_LEFT = 22~%uint8 JOINT_TYPE_HANDTIP_RIGHT = 23~%uint8 JOINT_TYPE_THUMB_RIGHT = 24~%~%uint8 TRACKING_STATE_NOT_TRACKED = 0~%uint8 TRACKING_STATE_INFERRED = 1~%uint8 TRACKING_STATE_TRACKED = 2~%~%geometry_msgs/Point position~%geometry_msgs/Quaternion orientation~%uint8 joint_type~%uint8 tracking_state~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KinectJoint)))
  "Returns full string definition for message of type 'KinectJoint"
  (cl:format cl:nil "uint8 JOINT_TYPE_SPINE_BASE = 0~%uint8 JOINT_TYPE_SPINE_MID = 1~%uint8 JOINT_TYPE_NECK = 2~%uint8 JOINT_TYPE_HEAD = 3~%uint8 JOINT_TYPE_SHOULDER_LEFT = 4~%uint8 JOINT_TYPE_ELBOW_LEFT = 5~%uint8 JOINT_TYPE_WRIST_LEFT = 6~%uint8 JOINT_TYPE_HAND_LEFT = 7~%uint8 JOINT_TYPE_SHOULDER_RIGHT = 8~%uint8 JOINT_TYPE_ELBOW_RIGHT = 9~%uint8 JOINT_TYPE_WRIST_RIGHT = 10~%uint8 JOINT_TYPE_HAND_RIGHT = 11~%uint8 JOINT_TYPE_HIP_LEFT = 12~%uint8 JOINT_TYPE_KNEE_LEFT = 13~%uint8 JOINT_TYPE_ANKLE_LEFT = 14~%uint8 JOINT_TYPE_FOOT_LEFT = 15~%uint8 JOINT_TYPE_HIP_RIGHT = 16~%uint8 JOINT_TYPE_KNEE_RIGHT = 17~%uint8 JOINT_TYPE_ANKLE_RIGHT = 18~%uint8 JOINT_TYPE_FOOT_RIGHT = 19~%uint8 JOINT_TYPE_SPINE_SHOULDER = 20~%uint8 JOINT_TYPE_HANDTIP_LEFT = 21~%uint8 JOINT_TYPE_THUMB_LEFT = 22~%uint8 JOINT_TYPE_HANDTIP_RIGHT = 23~%uint8 JOINT_TYPE_THUMB_RIGHT = 24~%~%uint8 TRACKING_STATE_NOT_TRACKED = 0~%uint8 TRACKING_STATE_INFERRED = 1~%uint8 TRACKING_STATE_TRACKED = 2~%~%geometry_msgs/Point position~%geometry_msgs/Quaternion orientation~%uint8 joint_type~%uint8 tracking_state~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KinectJoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KinectJoint>))
  "Converts a ROS message object to a list"
  (cl:list 'KinectJoint
    (cl:cons ':position (position msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':joint_type (joint_type msg))
    (cl:cons ':tracking_state (tracking_state msg))
))
