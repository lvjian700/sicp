(define (fn-recursion n)
  (cond ((< n 3) n)
		(else (+ (* 1 (fn-recursion (- n 1)))
				 (* 2 (fn-recursion (- n 2)))
				 (* 3 (fn-recursion (- n 3))))
			  )))

(fn-recursion 2)
(fn-recursion 20)

(define (fn n)
  (iter 2 1 0 0 n))

(define (iter a b c i n) 
  (if (= i n)
	c
	(iter ((+ a (* 2 b) (* 3 c))
		   a
		   b
		   (+ i 1)
		   n))
	)
)


(fn 2)
(fn 20)
