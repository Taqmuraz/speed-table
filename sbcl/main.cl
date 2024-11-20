(time
  (let ((sum 0))
    (loop for i from 1 to 1000000000 do (setf sum (+ sum i)))
  )
)
