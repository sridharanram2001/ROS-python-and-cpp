; Auto-generated. Do not edit!


(cl:in-package My_programs_package-srv)


;//! \htmlinclude addTwoInt-request.msg.html

(cl:defclass <addTwoInt-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass addTwoInt-request (<addTwoInt-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <addTwoInt-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'addTwoInt-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name My_programs_package-srv:<addTwoInt-request> is deprecated: use My_programs_package-srv:addTwoInt-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <addTwoInt-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader My_programs_package-srv:a-val is deprecated.  Use My_programs_package-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <addTwoInt-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader My_programs_package-srv:b-val is deprecated.  Use My_programs_package-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <addTwoInt-request>) ostream)
  "Serializes a message object of type '<addTwoInt-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <addTwoInt-request>) istream)
  "Deserializes a message object of type '<addTwoInt-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<addTwoInt-request>)))
  "Returns string type for a service object of type '<addTwoInt-request>"
  "My_programs_package/addTwoIntRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'addTwoInt-request)))
  "Returns string type for a service object of type 'addTwoInt-request"
  "My_programs_package/addTwoIntRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<addTwoInt-request>)))
  "Returns md5sum for a message object of type '<addTwoInt-request>"
  "6a2e34150c00229791cc89ff309fff21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'addTwoInt-request)))
  "Returns md5sum for a message object of type 'addTwoInt-request"
  "6a2e34150c00229791cc89ff309fff21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<addTwoInt-request>)))
  "Returns full string definition for message of type '<addTwoInt-request>"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'addTwoInt-request)))
  "Returns full string definition for message of type 'addTwoInt-request"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <addTwoInt-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <addTwoInt-request>))
  "Converts a ROS message object to a list"
  (cl:list 'addTwoInt-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude addTwoInt-response.msg.html

(cl:defclass <addTwoInt-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass addTwoInt-response (<addTwoInt-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <addTwoInt-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'addTwoInt-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name My_programs_package-srv:<addTwoInt-response> is deprecated: use My_programs_package-srv:addTwoInt-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <addTwoInt-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader My_programs_package-srv:sum-val is deprecated.  Use My_programs_package-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <addTwoInt-response>) ostream)
  "Serializes a message object of type '<addTwoInt-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <addTwoInt-response>) istream)
  "Deserializes a message object of type '<addTwoInt-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<addTwoInt-response>)))
  "Returns string type for a service object of type '<addTwoInt-response>"
  "My_programs_package/addTwoIntResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'addTwoInt-response)))
  "Returns string type for a service object of type 'addTwoInt-response"
  "My_programs_package/addTwoIntResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<addTwoInt-response>)))
  "Returns md5sum for a message object of type '<addTwoInt-response>"
  "6a2e34150c00229791cc89ff309fff21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'addTwoInt-response)))
  "Returns md5sum for a message object of type 'addTwoInt-response"
  "6a2e34150c00229791cc89ff309fff21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<addTwoInt-response>)))
  "Returns full string definition for message of type '<addTwoInt-response>"
  (cl:format cl:nil "int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'addTwoInt-response)))
  "Returns full string definition for message of type 'addTwoInt-response"
  (cl:format cl:nil "int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <addTwoInt-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <addTwoInt-response>))
  "Converts a ROS message object to a list"
  (cl:list 'addTwoInt-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'addTwoInt)))
  'addTwoInt-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'addTwoInt)))
  'addTwoInt-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'addTwoInt)))
  "Returns string type for a service object of type '<addTwoInt>"
  "My_programs_package/addTwoInt")