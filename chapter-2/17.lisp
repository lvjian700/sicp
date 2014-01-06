(define last-pair (items)
  (if (null? items)
	(car items)
	(last-pair (cdr items))))

(last-pair (list 23 72 149 34))
