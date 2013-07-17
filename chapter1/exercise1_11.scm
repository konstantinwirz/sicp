;
; Exercise 1.11
;

; rekursiver Prozess
(define (f-rec n)
  (if (< n 3) n
  	(+ (f-rec (- n 1)) (* 2 (f-rec (- n 2))) (* 3 (f-rec (- n 3))))))

; iterativer Prozess
(define (f-iter n)
	(define (f-iter-impl a b c count)
   		(if (< count 3) a
      	(f-iter-impl (+ a (* 2 b) (* 3 c)) a b (- count 1))))
 	(if (< n 3) n
      (f-iter-impl 2 1 0 n)))

(display (f-rec 27))
(display "\n")
(display (f-iter 27))
