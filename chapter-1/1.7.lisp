; scheme
(define (sqrt-iter pre-guess guess x)
  (if (good-enough? pre-guess guess)
	guess
	(sqrt-iter guess (improve guess x)
			   x))
)

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? pre-guess guess)
  (< (/ (abs (- pre-guess guess)) guess) 
	 0.0001)
)

(define (square x) 
  (* x x))

(define (sqrt x)
  (sqrt-iter 0 1.0 x))

(sqrt 9)
(sqrt 123123123)
(sqrt 0.0000000000000000123)
