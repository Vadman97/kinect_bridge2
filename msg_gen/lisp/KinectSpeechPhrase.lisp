; Auto-generated. Do not edit!


(cl:in-package kinect_bridge2-msg)


;//! \htmlinclude KinectSpeechPhrase.msg.html

(cl:defclass <KinectSpeechPhrase> (roslisp-msg-protocol:ros-message)
  ((tag
    :reader tag
    :initarg :tag
    :type cl:string
    :initform "")
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass KinectSpeechPhrase (<KinectSpeechPhrase>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KinectSpeechPhrase>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KinectSpeechPhrase)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinect_bridge2-msg:<KinectSpeechPhrase> is deprecated: use kinect_bridge2-msg:KinectSpeechPhrase instead.")))

(cl:ensure-generic-function 'tag-val :lambda-list '(m))
(cl:defmethod tag-val ((m <KinectSpeechPhrase>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinect_bridge2-msg:tag-val is deprecated.  Use kinect_bridge2-msg:tag instead.")
  (tag m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <KinectSpeechPhrase>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinect_bridge2-msg:confidence-val is deprecated.  Use kinect_bridge2-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KinectSpeechPhrase>) ostream)
  "Serializes a message object of type '<KinectSpeechPhrase>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tag))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KinectSpeechPhrase>) istream)
  "Deserializes a message object of type '<KinectSpeechPhrase>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tag) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tag) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KinectSpeechPhrase>)))
  "Returns string type for a message object of type '<KinectSpeechPhrase>"
  "kinect_bridge2/KinectSpeechPhrase")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KinectSpeechPhrase)))
  "Returns string type for a message object of type 'KinectSpeechPhrase"
  "kinect_bridge2/KinectSpeechPhrase")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KinectSpeechPhrase>)))
  "Returns md5sum for a message object of type '<KinectSpeechPhrase>"
  "5d43fa116b23bb95f464029ea5c22924")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KinectSpeechPhrase)))
  "Returns md5sum for a message object of type 'KinectSpeechPhrase"
  "5d43fa116b23bb95f464029ea5c22924")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KinectSpeechPhrase>)))
  "Returns full string definition for message of type '<KinectSpeechPhrase>"
  (cl:format cl:nil "string tag~%float32 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KinectSpeechPhrase)))
  "Returns full string definition for message of type 'KinectSpeechPhrase"
  (cl:format cl:nil "string tag~%float32 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KinectSpeechPhrase>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'tag))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KinectSpeechPhrase>))
  "Converts a ROS message object to a list"
  (cl:list 'KinectSpeechPhrase
    (cl:cons ':tag (tag msg))
    (cl:cons ':confidence (confidence msg))
))
