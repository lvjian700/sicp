(define (make-vect xcor ycor)
  (cons xcor ycor))

(define (xcor-vect v)
  (car v))
(define (ycor-vect v)
  (cdr v))

(define (sub-or-sum-vect v1 v2 term)
  (make-vect (term (xcor-vect v1)
                (xcor-vect v2))
             (term (ycor-vect v1)
                (ycor-vect v2))))

(define (add-vect v1 v2)
  (sub-or-sum-vect v1 v2 (lambda (x y) (+ x y))))

(define (sub-vect v1 v2)
  (sub-or-sum-vect v1 v2 (lambda (x y) (- x y))))

(define (scale-vect m v)
  (make-vect (* m (xcor-vect v))
             (* m (ycor-vect v))))


