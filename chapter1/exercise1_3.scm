;;;; Exercise 1.3

(define (square x)
  (* x x))

(define (sum-of-squares a b)
       (+ (square a) (square b)))

(define (max-value a b)
  (if (> a b) a b))

(define (sum-of-squares-of-two-larger-numbers a b c)
  (if (> a b) (sum-of-squares a (max-value b c))
      (sum-of-squares b (max-value a c))))
  

(display (sum-of-squares-of-two-larger-numbers 1 2 3))