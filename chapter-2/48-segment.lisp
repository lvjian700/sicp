(define (make-segment x y)
  (list x y))

(define (start-segment segment)
  (car segment))
(define (end-segment segment)
  (cadr segment))

