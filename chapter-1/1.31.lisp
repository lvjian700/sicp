(define (product term a next b)
  (if (> a b)
    1
    (* (term a)
       (product term (next a) next b))))

; fib
(define (fib n)
  (product (lambda (x) x)
           1
           (lambda (i) (+ i 1))
           n)
)
         
(fib 6)

(define (fun-pi n)
  (* 4.0 (exact->inexact
           (/ (product number-term 
                   1 
                   (lambda (x) (+ x 1))
                   n)
          (product denom-term 
                   1
                   (lambda (x) (+ x 1))
                   n)
          ))
     )
  )

(define (number-term i)
  (cond ((= 1 i) 2)
        ((even? i) (+ i 2))
        (else (+ i 1))))

(define (denom-term i)
  (cond ((= 1 i) 3)
        ((odd? i) (+ i 2))
        (else (+ i 1))))

(fun-pi 10000)


  
