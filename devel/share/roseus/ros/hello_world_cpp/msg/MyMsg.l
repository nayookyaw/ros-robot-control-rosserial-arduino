;; Auto-generated. Do not edit!


(when (boundp 'hello_world_cpp::MyMsg)
  (if (not (find-package "HELLO_WORLD_CPP"))
    (make-package "HELLO_WORLD_CPP"))
  (shadow 'MyMsg (find-package "HELLO_WORLD_CPP")))
(unless (find-package "HELLO_WORLD_CPP::MYMSG")
  (make-package "HELLO_WORLD_CPP::MYMSG"))

(in-package "ROS")
;;//! \htmlinclude MyMsg.msg.html


(defclass hello_world_cpp::MyMsg
  :super ros::object
  :slots (_data ))

(defmethod hello_world_cpp::MyMsg
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hello_world_cpp::MyMsg :md5sum-) "da5909fbe378aeaf85e547e830cc1bb7")
(setf (get hello_world_cpp::MyMsg :datatype-) "hello_world_cpp/MyMsg")
(setf (get hello_world_cpp::MyMsg :definition-)
      "int32 data
")



(provide :hello_world_cpp/MyMsg "da5909fbe378aeaf85e547e830cc1bb7")


