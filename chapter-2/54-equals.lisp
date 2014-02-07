(define (equal? current compareTo)
  (if (eq? (car current) 
		   (car compareTo))
	(if (and (null? (cdr current))
			 (null? (cdr compareTo)))
	  #t 
	  (equal? (cdr current) (cdr compareTo)))
	#f))

(equal? '(this is a list) '(this is a list))

