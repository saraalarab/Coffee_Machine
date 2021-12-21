;; Auto-generated. Do not edit!


(when (boundp 'user_interface::order)
  (if (not (find-package "USER_INTERFACE"))
    (make-package "USER_INTERFACE"))
  (shadow 'order (find-package "USER_INTERFACE")))
(unless (find-package "USER_INTERFACE::ORDER")
  (make-package "USER_INTERFACE::ORDER"))

(in-package "ROS")
;;//! \htmlinclude order.msg.html


(defclass user_interface::order
  :super ros::object
  :slots (_cup_type _coffee_type _milk_level _sugar_level _payment ))

(defmethod user_interface::order
  (:init
   (&key
    ((:cup_type __cup_type) "")
    ((:coffee_type __coffee_type) "")
    ((:milk_level __milk_level) "")
    ((:sugar_level __sugar_level) "")
    ((:payment __payment) "")
    )
   (send-super :init)
   (setq _cup_type (string __cup_type))
   (setq _coffee_type (string __coffee_type))
   (setq _milk_level (string __milk_level))
   (setq _sugar_level (string __sugar_level))
   (setq _payment (string __payment))
   self)
  (:cup_type
   (&optional __cup_type)
   (if __cup_type (setq _cup_type __cup_type)) _cup_type)
  (:coffee_type
   (&optional __coffee_type)
   (if __coffee_type (setq _coffee_type __coffee_type)) _coffee_type)
  (:milk_level
   (&optional __milk_level)
   (if __milk_level (setq _milk_level __milk_level)) _milk_level)
  (:sugar_level
   (&optional __sugar_level)
   (if __sugar_level (setq _sugar_level __sugar_level)) _sugar_level)
  (:payment
   (&optional __payment)
   (if __payment (setq _payment __payment)) _payment)
  (:serialization-length
   ()
   (+
    ;; string _cup_type
    4 (length _cup_type)
    ;; string _coffee_type
    4 (length _coffee_type)
    ;; string _milk_level
    4 (length _milk_level)
    ;; string _sugar_level
    4 (length _sugar_level)
    ;; string _payment
    4 (length _payment)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _cup_type
       (write-long (length _cup_type) s) (princ _cup_type s)
     ;; string _coffee_type
       (write-long (length _coffee_type) s) (princ _coffee_type s)
     ;; string _milk_level
       (write-long (length _milk_level) s) (princ _milk_level s)
     ;; string _sugar_level
       (write-long (length _sugar_level) s) (princ _sugar_level s)
     ;; string _payment
       (write-long (length _payment) s) (princ _payment s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _cup_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cup_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _coffee_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _coffee_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _milk_level
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _milk_level (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _sugar_level
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sugar_level (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _payment
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _payment (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get user_interface::order :md5sum-) "19f5dcce4001610f56c1d06d25f2822a")
(setf (get user_interface::order :datatype-) "user_interface/order")
(setf (get user_interface::order :definition-)
      "string cup_type
string coffee_type
string milk_level
string sugar_level
string payment
")



(provide :user_interface/order "19f5dcce4001610f56c1d06d25f2822a")


