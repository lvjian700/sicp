(define (plist x . y)
	(if (null? y)
	  nil
	  (cons x y))) 

