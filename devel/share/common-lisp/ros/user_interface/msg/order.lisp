; Auto-generated. Do not edit!


(cl:in-package user_interface-msg)


;//! \htmlinclude order.msg.html

(cl:defclass <order> (roslisp-msg-protocol:ros-message)
  ((cup_type
    :reader cup_type
    :initarg :cup_type
    :type cl:string
    :initform "")
   (coffee_type
    :reader coffee_type
    :initarg :coffee_type
    :type cl:string
    :initform "")
   (milk_level
    :reader milk_level
    :initarg :milk_level
    :type cl:string
    :initform "")
   (sugar_level
    :reader sugar_level
    :initarg :sugar_level
    :type cl:string
    :initform "")
   (payment
    :reader payment
    :initarg :payment
    :type cl:string
    :initform ""))
)

(cl:defclass order (<order>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <order>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'order)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name user_interface-msg:<order> is deprecated: use user_interface-msg:order instead.")))

(cl:ensure-generic-function 'cup_type-val :lambda-list '(m))
(cl:defmethod cup_type-val ((m <order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader user_interface-msg:cup_type-val is deprecated.  Use user_interface-msg:cup_type instead.")
  (cup_type m))

(cl:ensure-generic-function 'coffee_type-val :lambda-list '(m))
(cl:defmethod coffee_type-val ((m <order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader user_interface-msg:coffee_type-val is deprecated.  Use user_interface-msg:coffee_type instead.")
  (coffee_type m))

(cl:ensure-generic-function 'milk_level-val :lambda-list '(m))
(cl:defmethod milk_level-val ((m <order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader user_interface-msg:milk_level-val is deprecated.  Use user_interface-msg:milk_level instead.")
  (milk_level m))

(cl:ensure-generic-function 'sugar_level-val :lambda-list '(m))
(cl:defmethod sugar_level-val ((m <order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader user_interface-msg:sugar_level-val is deprecated.  Use user_interface-msg:sugar_level instead.")
  (sugar_level m))

(cl:ensure-generic-function 'payment-val :lambda-list '(m))
(cl:defmethod payment-val ((m <order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader user_interface-msg:payment-val is deprecated.  Use user_interface-msg:payment instead.")
  (payment m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <order>) ostream)
  "Serializes a message object of type '<order>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cup_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cup_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'coffee_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'coffee_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'milk_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'milk_level))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sugar_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sugar_level))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'payment))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'payment))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <order>) istream)
  "Deserializes a message object of type '<order>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cup_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cup_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'coffee_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'coffee_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'milk_level) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'milk_level) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sugar_level) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sugar_level) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'payment) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'payment) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<order>)))
  "Returns string type for a message object of type '<order>"
  "user_interface/order")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'order)))
  "Returns string type for a message object of type 'order"
  "user_interface/order")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<order>)))
  "Returns md5sum for a message object of type '<order>"
  "19f5dcce4001610f56c1d06d25f2822a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'order)))
  "Returns md5sum for a message object of type 'order"
  "19f5dcce4001610f56c1d06d25f2822a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<order>)))
  "Returns full string definition for message of type '<order>"
  (cl:format cl:nil "string cup_type~%string coffee_type~%string milk_level~%string sugar_level~%string payment~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'order)))
  "Returns full string definition for message of type 'order"
  (cl:format cl:nil "string cup_type~%string coffee_type~%string milk_level~%string sugar_level~%string payment~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <order>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cup_type))
     4 (cl:length (cl:slot-value msg 'coffee_type))
     4 (cl:length (cl:slot-value msg 'milk_level))
     4 (cl:length (cl:slot-value msg 'sugar_level))
     4 (cl:length (cl:slot-value msg 'payment))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <order>))
  "Converts a ROS message object to a list"
  (cl:list 'order
    (cl:cons ':cup_type (cup_type msg))
    (cl:cons ':coffee_type (coffee_type msg))
    (cl:cons ':milk_level (milk_level msg))
    (cl:cons ':sugar_level (sugar_level msg))
    (cl:cons ':payment (payment msg))
))
