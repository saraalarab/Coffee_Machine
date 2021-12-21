;; Auto-generated. Do not edit!


(when (boundp 'coffeemachine::Check_Qtty)
  (if (not (find-package "COFFEEMACHINE"))
    (make-package "COFFEEMACHINE"))
  (shadow 'Check_Qtty (find-package "COFFEEMACHINE")))
(unless (find-package "COFFEEMACHINE::CHECK_QTTY")
  (make-package "COFFEEMACHINE::CHECK_QTTY"))
(unless (find-package "COFFEEMACHINE::CHECK_QTTYREQUEST")
  (make-package "COFFEEMACHINE::CHECK_QTTYREQUEST"))
(unless (find-package "COFFEEMACHINE::CHECK_QTTYRESPONSE")
  (make-package "COFFEEMACHINE::CHECK_QTTYRESPONSE"))

(in-package "ROS")





(defclass coffeemachine::Check_QttyRequest
  :super ros::object
  :slots (_check_type _coffee_type ))

(defmethod coffeemachine::Check_QttyRequest
  (:init
   (&key
    ((:check_type __check_type) 0)
    ((:coffee_type __coffee_type) "")
    )
   (send-super :init)
   (setq _check_type (round __check_type))
   (setq _coffee_type (string __coffee_type))
   self)
  (:check_type
   (&optional __check_type)
   (if __check_type (setq _check_type __check_type)) _check_type)
  (:coffee_type
   (&optional __coffee_type)
   (if __coffee_type (setq _coffee_type __coffee_type)) _coffee_type)
  (:serialization-length
   ()
   (+
    ;; int32 _check_type
    4
    ;; string _coffee_type
    4 (length _coffee_type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _check_type
       (write-long _check_type s)
     ;; string _coffee_type
       (write-long (length _coffee_type) s) (princ _coffee_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _check_type
     (setq _check_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _coffee_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _coffee_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass coffeemachine::Check_QttyResponse
  :super ros::object
  :slots (_quantity ))

(defmethod coffeemachine::Check_QttyResponse
  (:init
   (&key
    ((:quantity __quantity) "")
    )
   (send-super :init)
   (setq _quantity (string __quantity))
   self)
  (:quantity
   (&optional __quantity)
   (if __quantity (setq _quantity __quantity)) _quantity)
  (:serialization-length
   ()
   (+
    ;; string _quantity
    4 (length _quantity)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _quantity
       (write-long (length _quantity) s) (princ _quantity s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _quantity
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _quantity (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass coffeemachine::Check_Qtty
  :super ros::object
  :slots ())

(setf (get coffeemachine::Check_Qtty :md5sum-) "c0572ee26a5f83fa67fcff4e56c1ca00")
(setf (get coffeemachine::Check_Qtty :datatype-) "coffeemachine/Check_Qtty")
(setf (get coffeemachine::Check_Qtty :request) coffeemachine::Check_QttyRequest)
(setf (get coffeemachine::Check_Qtty :response) coffeemachine::Check_QttyResponse)

(defmethod coffeemachine::Check_QttyRequest
  (:response () (instance coffeemachine::Check_QttyResponse :init)))

(setf (get coffeemachine::Check_QttyRequest :md5sum-) "c0572ee26a5f83fa67fcff4e56c1ca00")
(setf (get coffeemachine::Check_QttyRequest :datatype-) "coffeemachine/Check_QttyRequest")
(setf (get coffeemachine::Check_QttyRequest :definition-)
      "int32 check_type
string coffee_type
---
string quantity


")

(setf (get coffeemachine::Check_QttyResponse :md5sum-) "c0572ee26a5f83fa67fcff4e56c1ca00")
(setf (get coffeemachine::Check_QttyResponse :datatype-) "coffeemachine/Check_QttyResponse")
(setf (get coffeemachine::Check_QttyResponse :definition-)
      "int32 check_type
string coffee_type
---
string quantity


")



(provide :coffeemachine/Check_Qtty "c0572ee26a5f83fa67fcff4e56c1ca00")


