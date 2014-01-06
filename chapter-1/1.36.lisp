(load "./1.33_fixed-point.lisp")

(fixed-point (lambda (x)
			   (/ (log 1000) (log x)))
			 3.0)

(define (average x y)
  (/ (+ x y) 2))

(fixed-point (lambda (x)
			   (average  (/ (log 1000) (log x)) x))
			 3.0)

