(define (cons3 x y z)
  (define (dispatch m)
	(cond ((= m 0) x)
		  ((= m 1) y)
		  ((= m 2) z)
		  (else 
			(error "123 --CONS" m))))
  dispatch)

(define (car1 z) (z 0))
(define (car2 z) (z 1))
(define (car3 z) (z 2))


(define xyz (cons3 1 2 3))
(xyz 2)
