; Auto-generated. Do not edit!


(cl:in-package kinect_bridge2-msg)


;//! \htmlinclude KinectBody.msg.html

(cl:defclass <KinectBody> (roslisp-msg-protocol:ros-message)
  ((joints
    :reader joints
    :initarg :joints
    :type (cl:vector kinect_bridge2-msg:KinectJoint)
   :initform (cl:make-array 0 :element-type 'kinect_bridge2-msg:KinectJoint :initial-element (cl:make-instance 'kinect_bridge2-msg:KinectJoint)))
   (is_tracked
    :reader is_tracked
    :initarg :is_tracked
    :type cl:fixnum
    :initform 0)
   (hand_state_left
    :reader hand_state_left
    :initarg :hand_state_left
    :type cl:fixnum
    :initform 0)
   (hand_state_right
    :reader hand_state_right
    :initarg :hand_state_right
    :type cl:fixnum
    :initform 0)
   (lean
    :reader lean
    :initarg :lean
    :type kinect_bridge2-msg:KinectBodyLean
    :initform (cl:make-instance 'kinect_bridge2-msg:KinectBodyLean)))
)

(cl:defclass KinectBody (<KinectBody>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KinectBody>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KinectBody)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinect_bridge2-msg:<KinectBody> is deprecated: use kinect_bridge2-msg:KinectBody instead.")))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <KinectBody>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinect_bridge2-msg:joints-val is deprecated.  Use kinect_bridge2-msg:joints instead.")
  (joints m))

(cl:ensure-generic-function 'is_tracked-val :lambda-list '(m))
(cl:defmethod is_tracked-val ((m <KinectBody>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinect_bridge2-msg:is_tracked-val is deprecated.  Use kinect_bridge2-msg:is_tracked instead.")
  (is_tracked m))

(cl:ensure-generic-function 'hand_state_left-val :lambda-list '(m))
(cl:defmethod hand_state_left-val ((m <KinectBody>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinect_bridge2-msg:hand_state_left-val is deprecated.  Use kinect_bridge2-msg:hand_state_left instead.")
  (hand_state_left m))

(cl:ensure-generic-function 'hand_state_right-val :lambda-list '(m))
(cl:defmethod hand_state_right-val ((m <KinectBody>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinect_bridge2-msg:hand_state_right-val is deprecated.  Use kinect_bridge2-msg:hand_state_right instead.")
  (hand_state_right m))

(cl:ensure-generic-function 'lean-val :lambda-list '(m))
(cl:defmethod lean-val ((m <KinectBody>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinect_bridge2-msg:lean-val is deprecated.  Use kinect_bridge2-msg:lean instead.")
  (lean m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<KinectBody>)))
    "Constants for message type '<KinectBody>"
  '((:HAND_STATE_UNKNOWN . 0)
    (:HAND_STATE_NOT_TRACKED . 1)
    (:HAND_STATE_OPEN . 2)
    (:HAND_STATE_CLOSED . 3)
    (:HAND_STATE_LASSO . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'KinectBody)))
    "Constants for message type 'KinectBody"
  '((:HAND_STATE_UNKNOWN . 0)
    (:HAND_STATE_NOT_TRACKED . 1)
    (:HAND_STATE_OPEN . 2)
    (:HAND_STATE_CLOSED . 3)
    (:HAND_STATE_LASSO . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KinectBody>) ostream)
  "Serializes a message object of type '<KinectBody>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joints))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_tracked)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hand_state_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hand_state_right)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lean) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KinectBody>) istream)
  "Deserializes a message object of type '<KinectBody>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'kinect_bridge2-msg:KinectJoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_tracked)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hand_state_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hand_state_right)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lean) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KinectBody>)))
  "Returns string type for a message object of type '<KinectBody>"
  "kinect_bridge2/KinectBody")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KinectBody)))
  "Returns string type for a message object of type 'KinectBody"
  "kinect_bridge2/KinectBody")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KinectBody>)))
  "Returns md5sum for a message object of type '<KinectBody>"
  "2119b58982f073d8af39235644f3ad4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KinectBody)))
  "Returns md5sum for a message object of type 'KinectBody"
  "2119b58982f073d8af39235644f3ad4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KinectBody>)))
  "Returns full string definition for message of type '<KinectBody>"
  (cl:format cl:nil "uint8 HAND_STATE_UNKNOWN = 0~%uint8 HAND_STATE_NOT_TRACKED = 1~%uint8 HAND_STATE_OPEN = 2~%uint8 HAND_STATE_CLOSED = 3~%uint8 HAND_STATE_LASSO = 4~%~%kinect_bridge2/KinectJoint[] joints~%uint8 is_tracked~%uint8 hand_state_left~%uint8 hand_state_right~%~%kinect_bridge2/KinectBodyLean lean~%~%================================================================================~%MSG: kinect_bridge2/KinectJoint~%uint8 JOINT_TYPE_SPINE_BASE = 0~%uint8 JOINT_TYPE_SPINE_MID = 1~%uint8 JOINT_TYPE_NECK = 2~%uint8 JOINT_TYPE_HEAD = 3~%uint8 JOINT_TYPE_SHOULDER_LEFT = 4~%uint8 JOINT_TYPE_ELBOW_LEFT = 5~%uint8 JOINT_TYPE_WRIST_LEFT = 6~%uint8 JOINT_TYPE_HAND_LEFT = 7~%uint8 JOINT_TYPE_SHOULDER_RIGHT = 8~%uint8 JOINT_TYPE_ELBOW_RIGHT = 9~%uint8 JOINT_TYPE_WRIST_RIGHT = 10~%uint8 JOINT_TYPE_HAND_RIGHT = 11~%uint8 JOINT_TYPE_HIP_LEFT = 12~%uint8 JOINT_TYPE_KNEE_LEFT = 13~%uint8 JOINT_TYPE_ANKLE_LEFT = 14~%uint8 JOINT_TYPE_FOOT_LEFT = 15~%uint8 JOINT_TYPE_HIP_RIGHT = 16~%uint8 JOINT_TYPE_KNEE_RIGHT = 17~%uint8 JOINT_TYPE_ANKLE_RIGHT = 18~%uint8 JOINT_TYPE_FOOT_RIGHT = 19~%uint8 JOINT_TYPE_SPINE_SHOULDER = 20~%uint8 JOINT_TYPE_HANDTIP_LEFT = 21~%uint8 JOINT_TYPE_THUMB_LEFT = 22~%uint8 JOINT_TYPE_HANDTIP_RIGHT = 23~%uint8 JOINT_TYPE_THUMB_RIGHT = 24~%~%uint8 TRACKING_STATE_NOT_TRACKED = 0~%uint8 TRACKING_STATE_INFERRED = 1~%uint8 TRACKING_STATE_TRACKED = 2~%~%geometry_msgs/Point position~%geometry_msgs/Quaternion orientation~%uint8 joint_type~%uint8 tracking_state~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: kinect_bridge2/KinectBodyLean~%float32 x~%float32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KinectBody)))
  "Returns full string definition for message of type 'KinectBody"
  (cl:format cl:nil "uint8 HAND_STATE_UNKNOWN = 0~%uint8 HAND_STATE_NOT_TRACKED = 1~%uint8 HAND_STATE_OPEN = 2~%uint8 HAND_STATE_CLOSED = 3~%uint8 HAND_STATE_LASSO = 4~%~%kinect_bridge2/KinectJoint[] joints~%uint8 is_tracked~%uint8 hand_state_left~%uint8 hand_state_right~%~%kinect_bridge2/KinectBodyLean lean~%~%================================================================================~%MSG: kinect_bridge2/KinectJoint~%uint8 JOINT_TYPE_SPINE_BASE = 0~%uint8 JOINT_TYPE_SPINE_MID = 1~%uint8 JOINT_TYPE_NECK = 2~%uint8 JOINT_TYPE_HEAD = 3~%uint8 JOINT_TYPE_SHOULDER_LEFT = 4~%uint8 JOINT_TYPE_ELBOW_LEFT = 5~%uint8 JOINT_TYPE_WRIST_LEFT = 6~%uint8 JOINT_TYPE_HAND_LEFT = 7~%uint8 JOINT_TYPE_SHOULDER_RIGHT = 8~%uint8 JOINT_TYPE_ELBOW_RIGHT = 9~%uint8 JOINT_TYPE_WRIST_RIGHT = 10~%uint8 JOINT_TYPE_HAND_RIGHT = 11~%uint8 JOINT_TYPE_HIP_LEFT = 12~%uint8 JOINT_TYPE_KNEE_LEFT = 13~%uint8 JOINT_TYPE_ANKLE_LEFT = 14~%uint8 JOINT_TYPE_FOOT_LEFT = 15~%uint8 JOINT_TYPE_HIP_RIGHT = 16~%uint8 JOINT_TYPE_KNEE_RIGHT = 17~%uint8 JOINT_TYPE_ANKLE_RIGHT = 18~%uint8 JOINT_TYPE_FOOT_RIGHT = 19~%uint8 JOINT_TYPE_SPINE_SHOULDER = 20~%uint8 JOINT_TYPE_HANDTIP_LEFT = 21~%uint8 JOINT_TYPE_THUMB_LEFT = 22~%uint8 JOINT_TYPE_HANDTIP_RIGHT = 23~%uint8 JOINT_TYPE_THUMB_RIGHT = 24~%~%uint8 TRACKING_STATE_NOT_TRACKED = 0~%uint8 TRACKING_STATE_INFERRED = 1~%uint8 TRACKING_STATE_TRACKED = 2~%~%geometry_msgs/Point position~%geometry_msgs/Quaternion orientation~%uint8 joint_type~%uint8 tracking_state~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: kinect_bridge2/KinectBodyLean~%float32 x~%float32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KinectBody>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lean))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KinectBody>))
  "Converts a ROS message object to a list"
  (cl:list 'KinectBody
    (cl:cons ':joints (joints msg))
    (cl:cons ':is_tracked (is_tracked msg))
    (cl:cons ':hand_state_left (hand_state_left msg))
    (cl:cons ':hand_state_right (hand_state_right msg))
    (cl:cons ':lean (lean msg))
))
