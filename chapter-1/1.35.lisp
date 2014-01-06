(load "./1.33_fixed-point.lisp")

(fixed-point (lambda (x) 
			   (+ 1 (/ 1 x)))
			 1.0)
