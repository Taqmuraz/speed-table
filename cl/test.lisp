(defun test ()
  (let ((s 0))
    (declare (type fixnum s))
    (loop for i of-type fixnum from 0 to 1000000000 do
      (setf s (+ s i))
    )
  )
)
