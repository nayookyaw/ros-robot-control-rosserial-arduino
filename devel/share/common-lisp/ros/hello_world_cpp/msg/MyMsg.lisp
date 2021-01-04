; Auto-generated. Do not edit!


(cl:in-package hello_world_cpp-msg)


;//! \htmlinclude MyMsg.msg.html

(cl:defclass <MyMsg> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass MyMsg (<MyMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MyMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MyMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello_world_cpp-msg:<MyMsg> is deprecated: use hello_world_cpp-msg:MyMsg instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <MyMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_world_cpp-msg:data-val is deprecated.  Use hello_world_cpp-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MyMsg>) ostream)
  "Serializes a message object of type '<MyMsg>"
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MyMsg>) istream)
  "Deserializes a message object of type '<MyMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MyMsg>)))
  "Returns string type for a message object of type '<MyMsg>"
  "hello_world_cpp/MyMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MyMsg)))
  "Returns string type for a message object of type 'MyMsg"
  "hello_world_cpp/MyMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MyMsg>)))
  "Returns md5sum for a message object of type '<MyMsg>"
  "da5909fbe378aeaf85e547e830cc1bb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MyMsg)))
  "Returns md5sum for a message object of type 'MyMsg"
  "da5909fbe378aeaf85e547e830cc1bb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MyMsg>)))
  "Returns full string definition for message of type '<MyMsg>"
  (cl:format cl:nil "int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MyMsg)))
  "Returns full string definition for message of type 'MyMsg"
  (cl:format cl:nil "int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MyMsg>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MyMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'MyMsg
    (cl:cons ':data (data msg))
))
