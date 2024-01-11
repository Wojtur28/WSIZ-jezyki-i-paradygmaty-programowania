(defun silnia (n)
  (if (<= n 1)
      1
      (* n (silnia (- n 1)))))
