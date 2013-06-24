;;;; Exercise 1.7

(define (sqrt-iter new-guess  old-guess x)
      (if (good-enough? new-guess old-guess)
          new-guess
          (sqrt-iter (improve new-guess x) new-guess x)))

(define (improve guess x)
      (average guess (/ x guess)))

(define (average x y)
      (/ (+ x y) 2))

(define (good-enough? new-guess old-guess)
  ( < (abs (- new-guess old-guess)) 0.00001))

(define (square x)
  (* x x))

(define (sqrt x)
      (sqrt-iter 1.0 1.1 x))

(display (sqrt 9000000000000000))