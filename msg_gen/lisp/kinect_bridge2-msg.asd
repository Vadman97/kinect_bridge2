
(cl:in-package :asdf)

(defsystem "kinect_bridge2-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "KinectSpeechPhrase" :depends-on ("_package_KinectSpeechPhrase"))
    (:file "_package_KinectSpeechPhrase" :depends-on ("_package"))
    (:file "KinectJoint" :depends-on ("_package_KinectJoint"))
    (:file "_package_KinectJoint" :depends-on ("_package"))
    (:file "KinectBodies" :depends-on ("_package_KinectBodies"))
    (:file "_package_KinectBodies" :depends-on ("_package"))
    (:file "KinectSpeech" :depends-on ("_package_KinectSpeech"))
    (:file "_package_KinectSpeech" :depends-on ("_package"))
    (:file "KinectBody" :depends-on ("_package_KinectBody"))
    (:file "_package_KinectBody" :depends-on ("_package"))
    (:file "KinectBodyLean" :depends-on ("_package_KinectBodyLean"))
    (:file "_package_KinectBodyLean" :depends-on ("_package"))
  ))