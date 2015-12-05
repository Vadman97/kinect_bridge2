; Auto-generated. Do not edit!


(cl:in-package kinect_bridge2-msg)


;//! \htmlinclude KinectBodies.msg.html

(cl:defclass <KinectBodies> (roslisp-msg-protocol:ros-message)
  ((bodies
    :reader bodies
    :initarg :bodies
    :type (cl:vector kinect_bridge2-msg:KinectBody)
   :initform (cl:make-array 0 :element-type 'kinect_bridge2-msg:KinectBody :initial-element (cl:make-instance 'kinect_bridge2-msg:KinectBody))))
)

(cl:defclass KinectBodies (<KinectBodies>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KinectBodies>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KinectBodies)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinect_bridge2-msg:<KinectBodies> is deprecated: use kinect_bridge2-msg:KinectBodies instead.")))

(cl:ensure-generic-function 'bodies-val :lambda-list '(m))
(cl:defmethod bodies-val ((m <KinectBodies>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinect_bridge2-msg:bodies-val is deprecated.  Use kinect_bridge2-msg:bodies instead.")
  (bodies m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KinectBodies>) ostream)
  "Serializes a message object of type '<KinectBodies>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bodies))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bodies))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KinectBodies>) istream)
  "Deserializes a message object of type '<KinectBodies>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bodies) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bodies)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'kinect_bridge2-msg:KinectBody))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KinectBodies>)))
  "Returns string type for a message object of type '<KinectBodies>"
  "kinect_bridge2/KinectBodies")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KinectBodies)))
  "Returns string type for a message object of type 'KinectBodies"
  "kinect_bridge2/KinectBodies")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KinectBodies>)))
  "Returns md5sum for a message object of type '<KinectBodies>"
  "178a176ee37e33aa3ec8d736cc9d5801")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KinectBodies)))
  "Returns md5sum for a message object of type 'KinectBodies"
  "178a176ee37e33aa3ec8d736cc9d5801")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KinectBodies>)))
  "Returns full string definition for message of type '<KinectBodies>"
  (cl:format cl:nil "kinect_bridge2/KinectBody[] bodies~%~%================================================================================~%MSG: kinect_bridge2/KinectBody~%uint8 HAND_STATE_UNKNOWN = 0~%uint8 HAND_STATE_NOT_TRACKED = 1~%uint8 HAND_STATE_OPEN = 2~%uint8 HAND_STATE_CLOSED = 3~%uint8 HAND_STATE_LASSO = 4~%~%kinect_bridge2/KinectJoint[] joints~%uint8 is_tracked~%uint8 hand_state_left~%uint8 hand_state_right~%~%kinect_bridge2/KinectBodyLean lean~%~%================================================================================~%MSG: kinect_bridge2/KinectJoint~%uint8 JOINT_TYPE_SPINE_BASE = 0~%uint8 JOINT_TYPE_SPINE_MID = 1~%uint8 JOINT_TYPE_NECK = 2~%uint8 JOINT_TYPE_HEAD = 3~%uint8 JOINT_TYPE_SHOULDER_LEFT = 4~%uint8 JOINT_TYPE_ELBOW_LEFT = 5~%uint8 JOINT_TYPE_WRIST_LEFT = 6~%uint8 JOINT_TYPE_HAND_LEFT = 7~%uint8 JOINT_TYPE_SHOULDER_RIGHT = 8~%uint8 JOINT_TYPE_ELBOW_RIGHT = 9~%uint8 JOINT_TYPE_WRIST_RIGHT = 10~%uint8 JOINT_TYPE_HAND_RIGHT = 11~%uint8 JOINT_TYPE_HIP_LEFT = 12~%uint8 JOINT_TYPE_KNEE_LEFT = 13~%uint8 JOINT_TYPE_ANKLE_LEFT = 14~%uint8 JOINT_TYPE_FOOT_LEFT = 15~%uint8 JOINT_TYPE_HIP_RIGHT = 16~%uint8 JOINT_TYPE_KNEE_RIGHT = 17~%uint8 JOINT_TYPE_ANKLE_RIGHT = 18~%uint8 JOINT_TYPE_FOOT_RIGHT = 19~%uint8 JOINT_TYPE_SPINE_SHOULDER = 20~%uint8 JOINT_TYPE_HANDTIP_LEFT = 21~%uint8 JOINT_TYPE_THUMB_LEFT = 22~%uint8 JOINT_TYPE_HANDTIP_RIGHT = 23~%uint8 JOINT_TYPE_THUMB_RIGHT = 24~%~%uint8 TRACKING_STATE_NOT_TRACKED = 0~%uint8 TRACKING_STATE_INFERRED = 1~%uint8 TRACKING_STATE_TRACKED = 2~%~%geometry_msgs/Point position~%geometry_msgs/Quaternion orientation~%uint8 joint_type~%uint8 tracking_state~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: kinect_bridge2/KinectBodyLean~%float32 x~%float32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KinectBodies)))
  "Returns full string definition for message of type 'KinectBodies"
  (cl:format cl:nil "kinect_bridge2/KinectBody[] bodies~%~%================================================================================~%MSG: kinect_bridge2/KinectBody~%uint8 HAND_STATE_UNKNOWN = 0~%uint8 HAND_STATE_NOT_TRACKED = 1~%uint8 HAND_STATE_OPEN = 2~%uint8 HAND_STATE_CLOSED = 3~%uint8 HAND_STATE_LASSO = 4~%~%kinect_bridge2/KinectJoint[] joints~%uint8 is_tracked~%uint8 hand_state_left~%uint8 hand_state_right~%~%kinect_bridge2/KinectBodyLean lean~%~%================================================================================~%MSG: kinect_bridge2/KinectJoint~%uint8 JOINT_TYPE_SPINE_BASE = 0~%uint8 JOINT_TYPE_SPINE_MID = 1~%uint8 JOINT_TYPE_NECK = 2~%uint8 JOINT_TYPE_HEAD = 3~%uint8 JOINT_TYPE_SHOULDER_LEFT = 4~%uint8 JOINT_TYPE_ELBOW_LEFT = 5~%uint8 JOINT_TYPE_WRIST_LEFT = 6~%uint8 JOINT_TYPE_HAND_LEFT = 7~%uint8 JOINT_TYPE_SHOULDER_RIGHT = 8~%uint8 JOINT_TYPE_ELBOW_RIGHT = 9~%uint8 JOINT_TYPE_WRIST_RIGHT = 10~%uint8 JOINT_TYPE_HAND_RIGHT = 11~%uint8 JOINT_TYPE_HIP_LEFT = 12~%uint8 JOINT_TYPE_KNEE_LEFT = 13~%uint8 JOINT_TYPE_ANKLE_LEFT = 14~%uint8 JOINT_TYPE_FOOT_LEFT = 15~%uint8 JOINT_TYPE_HIP_RIGHT = 16~%uint8 JOINT_TYPE_KNEE_RIGHT = 17~%uint8 JOINT_TYPE_ANKLE_RIGHT = 18~%uint8 JOINT_TYPE_FOOT_RIGHT = 19~%uint8 JOINT_TYPE_SPINE_SHOULDER = 20~%uint8 JOINT_TYPE_HANDTIP_LEFT = 21~%uint8 JOINT_TYPE_THUMB_LEFT = 22~%uint8 JOINT_TYPE_HANDTIP_RIGHT = 23~%uint8 JOINT_TYPE_THUMB_RIGHT = 24~%~%uint8 TRACKING_STATE_NOT_TRACKED = 0~%uint8 TRACKING_STATE_INFERRED = 1~%uint8 TRACKING_STATE_TRACKED = 2~%~%geometry_msgs/Point position~%geometry_msgs/Quaternion orientation~%uint8 joint_type~%uint8 tracking_state~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: kinect_bridge2/KinectBodyLean~%float32 x~%float32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KinectBodies>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bodies) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KinectBodies>))
  "Converts a ROS message object to a list"
  (cl:list 'KinectBodies
    (cl:cons ':bodies (bodies msg))
))
