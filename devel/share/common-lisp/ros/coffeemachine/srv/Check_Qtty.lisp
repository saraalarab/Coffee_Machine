; Auto-generated. Do not edit!


(cl:in-package coffeemachine-srv)


;//! \htmlinclude Check_Qtty-request.msg.html

(cl:defclass <Check_Qtty-request> (roslisp-msg-protocol:ros-message)
  ((check_type
    :reader check_type
    :initarg :check_type
    :type cl:integer
    :initform 0)
   (coffee_type
    :reader coffee_type
    :initarg :coffee_type
    :type cl:string
    :initform ""))
)

(cl:defclass Check_Qtty-request (<Check_Qtty-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Check_Qtty-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Check_Qtty-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name coffeemachine-srv:<Check_Qtty-request> is deprecated: use coffeemachine-srv:Check_Qtty-request instead.")))

(cl:ensure-generic-function 'check_type-val :lambda-list '(m))
(cl:defmethod check_type-val ((m <Check_Qtty-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader coffeemachine-srv:check_type-val is deprecated.  Use coffeemachine-srv:check_type instead.")
  (check_type m))

(cl:ensure-generic-function 'coffee_type-val :lambda-list '(m))
(cl:defmethod coffee_type-val ((m <Check_Qtty-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader coffeemachine-srv:coffee_type-val is deprecated.  Use coffeemachine-srv:coffee_type instead.")
  (coffee_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Check_Qtty-request>) ostream)
  "Serializes a message object of type '<Check_Qtty-request>"
  (cl:let* ((signed (cl:slot-value msg 'check_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'coffee_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'coffee_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Check_Qtty-request>) istream)
  "Deserializes a message object of type '<Check_Qtty-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'check_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'coffee_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'coffee_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Check_Qtty-request>)))
  "Returns string type for a service object of type '<Check_Qtty-request>"
  "coffeemachine/Check_QttyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Check_Qtty-request)))
  "Returns string type for a service object of type 'Check_Qtty-request"
  "coffeemachine/Check_QttyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Check_Qtty-request>)))
  "Returns md5sum for a message object of type '<Check_Qtty-request>"
  "c0572ee26a5f83fa67fcff4e56c1ca00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Check_Qtty-request)))
  "Returns md5sum for a message object of type 'Check_Qtty-request"
  "c0572ee26a5f83fa67fcff4e56c1ca00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Check_Qtty-request>)))
  "Returns full string definition for message of type '<Check_Qtty-request>"
  (cl:format cl:nil "int32 check_type~%string coffee_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Check_Qtty-request)))
  "Returns full string definition for message of type 'Check_Qtty-request"
  (cl:format cl:nil "int32 check_type~%string coffee_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Check_Qtty-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'coffee_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Check_Qtty-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Check_Qtty-request
    (cl:cons ':check_type (check_type msg))
    (cl:cons ':coffee_type (coffee_type msg))
))
;//! \htmlinclude Check_Qtty-response.msg.html

(cl:defclass <Check_Qtty-response> (roslisp-msg-protocol:ros-message)
  ((quantity
    :reader quantity
    :initarg :quantity
    :type cl:string
    :initform ""))
)

(cl:defclass Check_Qtty-response (<Check_Qtty-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Check_Qtty-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Check_Qtty-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name coffeemachine-srv:<Check_Qtty-response> is deprecated: use coffeemachine-srv:Check_Qtty-response instead.")))

(cl:ensure-generic-function 'quantity-val :lambda-list '(m))
(cl:defmethod quantity-val ((m <Check_Qtty-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader coffeemachine-srv:quantity-val is deprecated.  Use coffeemachine-srv:quantity instead.")
  (quantity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Check_Qtty-response>) ostream)
  "Serializes a message object of type '<Check_Qtty-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'quantity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'quantity))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Check_Qtty-response>) istream)
  "Deserializes a message object of type '<Check_Qtty-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'quantity) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'quantity) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Check_Qtty-response>)))
  "Returns string type for a service object of type '<Check_Qtty-response>"
  "coffeemachine/Check_QttyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Check_Qtty-response)))
  "Returns string type for a service object of type 'Check_Qtty-response"
  "coffeemachine/Check_QttyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Check_Qtty-response>)))
  "Returns md5sum for a message object of type '<Check_Qtty-response>"
  "c0572ee26a5f83fa67fcff4e56c1ca00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Check_Qtty-response)))
  "Returns md5sum for a message object of type 'Check_Qtty-response"
  "c0572ee26a5f83fa67fcff4e56c1ca00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Check_Qtty-response>)))
  "Returns full string definition for message of type '<Check_Qtty-response>"
  (cl:format cl:nil "string quantity~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Check_Qtty-response)))
  "Returns full string definition for message of type 'Check_Qtty-response"
  (cl:format cl:nil "string quantity~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Check_Qtty-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'quantity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Check_Qtty-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Check_Qtty-response
    (cl:cons ':quantity (quantity msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Check_Qtty)))
  'Check_Qtty-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Check_Qtty)))
  'Check_Qtty-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Check_Qtty)))
  "Returns string type for a service object of type '<Check_Qtty>"
  "coffeemachine/Check_Qtty")