(define (sqrt x) 
  (define (good-enough? guess) 
	(< (abs (- (cube guess) x)) 0.001))
  (define (improve guess)
	(average x guess))
  (define (sqrt-iter guess) 
	(if (good-enough? guess)
	  guess
	  (sqrt-iter (improve guess))
	  )
	)
  (sqrt-iter 1.0))

(define (average x y)
  (/ (+ (/ x (square y)) (* 2 y)) 3))

(define (square x) 
  (* x x))

(define (cube x)
  (* x x x))

(sqrt 27)

