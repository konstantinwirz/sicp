;;;; Exercise 1.8

(define (cube-root-iter new-guess  old-guess x)
      (if (good-enough? new-guess old-guess)
          new-guess
          (cube-root-iter (improve new-guess x) new-guess x)))

(define (improve guess x)
  (/ 
    (+ (/ x (square guess)) (* 2 guess))
     3)) 

(define (good-enough? new-guess old-guess)
  ( < (abs (- new-guess old-guess)) 0.0000001))

(define (square x)
  (* x x))

(define (cube-root x)
      (cube-root-iter 1.0 1.001 x))

(display (cube-root 0.00003))