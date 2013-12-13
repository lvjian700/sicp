;recursion
(define (factorial n)
  (if (= n 1)
	1
	(* n (factorial (- n 1)))))

(factorial 6)

; iteration like do-while/for
(define (factorial-iter n)
  (define (fact-iter product counter) 
	(if (> counter n)
	  product
	  (fact-iter (* counter product)
				 (+ counter 1))))
  (fact-iter 1 1))

(factorial-iter 6)
