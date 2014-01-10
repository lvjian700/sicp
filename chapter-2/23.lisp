(define (for-each proc items)
  (define (next) 
	(proc (car items))
	(for-each proc (cdr items))
  )

  (if (null? items)
	nil
	(next)
  )
)


(for-each (lambda (x) (newline) (display x))
			(list 1 2 3 4 5))
