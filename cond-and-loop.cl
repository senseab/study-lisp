#|
第一个LISP程序
|#
(write-line "Clisp Test")
(setq a (read))
(if (> a 10)
  (write-line "Bigger than 10")
(write-line "Less than 10")
)

(write-line "9x9 Table with 'dotimes'")
(dotimes (i 9)
  (dotimes (j 9)
    (format t "~d x ~d = ~d~c" (+ 1 i) (+ 1 j) (* (+ 1 i) (+ 1 j)) #\Tab)
    (if (>= j i) (return))
    )
  (write-line "")
  )

(write-line "9x9 Table with 'loop for'")
(loop for i from 1 to 9 do
      (loop for j from 1 to i do
            (format t "~d x ~d = ~d~c" i j (* i j) #\Tab)
            )
      (write-line "")
      )

(write-line "9x9 Table with 'do'")
(do ((i 1 (incf i))) ((< 9 i) nil)
  (do ((j 1 (incf j))) ((> j i) nil)
    (format t "~d x ~d = ~d~c" i j (* i j) #\Tab)
    )
  (write-line "")
  )
