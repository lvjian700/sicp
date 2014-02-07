(define (make-users)
  (list (list 1 'lvjian700)
		(list 2 'lv)
		(list 3 '700)))

(define (user-id u)
  (car u))

(define (select predicate seq) 
  (filter predicate seq))

(select (lambda (u)
		  (> (user-id u) 2))
		(make-users))



