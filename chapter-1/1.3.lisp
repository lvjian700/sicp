(define (sum-max first second third) 
	 (cond ((and (< first second) (< first third)) (+ second third)) 
		   ((and (< second first) (< second third)) (+ first third))
		   ((and (< third first) (< third second)) (+ first second)))
		)

(sum-max 1 2 3)
