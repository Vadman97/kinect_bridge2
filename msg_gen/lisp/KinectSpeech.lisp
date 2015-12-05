; Auto-generated. Do not edit!


(cl:in-package kinect_bridge2-msg)


;//! \htmlinclude KinectSpeech.msg.html

(cl:defclass <KinectSpeech> (roslisp-msg-protocol:ros-message)
  ((phrases
    :reader phrases
    :initarg :phrases
    :type (cl:vector kinect_bridge2-msg:KinectSpeechPhrase)
   :initform (cl:make-array 0 :element-type 'kinect_bridge2-msg:KinectSpeechPhrase :initial-element (cl:make-instance 'kinect_bridge2-msg:KinectSpeechPhrase))))
)

(cl:defclass KinectSpeech (<KinectSpeech>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KinectSpeech>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KinectSpeech)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinect_bridge2-msg:<KinectSpeech> is deprecated: use kinect_bridge2-msg:KinectSpeech instead.")))

(cl:ensure-generic-function 'phrases-val :lambda-list '(m))
(cl:defmethod phrases-val ((m <KinectSpeech>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinect_bridge2-msg:phrases-val is deprecated.  Use kinect_bridge2-msg:phrases instead.")
  (phrases m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KinectSpeech>) ostream)
  "Serializes a message object of type '<KinectSpeech>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'phrases))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'phrases))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KinectSpeech>) istream)
  "Deserializes a message object of type '<KinectSpeech>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'phrases) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'phrases)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'kinect_bridge2-msg:KinectSpeechPhrase))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KinectSpeech>)))
  "Returns string type for a message object of type '<KinectSpeech>"
  "kinect_bridge2/KinectSpeech")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KinectSpeech)))
  "Returns string type for a message object of type 'KinectSpeech"
  "kinect_bridge2/KinectSpeech")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KinectSpeech>)))
  "Returns md5sum for a message object of type '<KinectSpeech>"
  "bb4474b86bf47d9228f16d2febb29bc8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KinectSpeech)))
  "Returns md5sum for a message object of type 'KinectSpeech"
  "bb4474b86bf47d9228f16d2febb29bc8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KinectSpeech>)))
  "Returns full string definition for message of type '<KinectSpeech>"
  (cl:format cl:nil "kinect_bridge2/KinectSpeechPhrase[] phrases~%~%================================================================================~%MSG: kinect_bridge2/KinectSpeechPhrase~%string tag~%float32 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KinectSpeech)))
  "Returns full string definition for message of type 'KinectSpeech"
  (cl:format cl:nil "kinect_bridge2/KinectSpeechPhrase[] phrases~%~%================================================================================~%MSG: kinect_bridge2/KinectSpeechPhrase~%string tag~%float32 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KinectSpeech>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'phrases) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KinectSpeech>))
  "Converts a ROS message object to a list"
  (cl:list 'KinectSpeech
    (cl:cons ':phrases (phrases msg))
))
