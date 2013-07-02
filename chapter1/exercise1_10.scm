;
; Ackermann-Funktion:
;
(define (A x y)
         (cond ((= y 0) 0)
               ((= x 0) (* 2 y))
               ((= y 1) 2)
               (else (A (- x 1) (A x (- y 1))))))

; (A 1 10)
; (A 0 (A 1 9))
; (* 2 (A 0 (A 1 8))
; (* 2 (A 0 (A 0 (A 1 7))))
; (* 2 (A 0 (A 0 (A 0 (A 1 6)))))
; (* 2 (A 0 (A 0 (A 0 (A 0 (A 1 5))))))
; (* 2 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 4)))))))
; (* 2 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 3))))))))
; (* 2 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 2)))))))))
; (* 2 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 1))))))))))
; (* 2 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 2))))))))
; (* 2 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 2))))))))
; (* 2 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 (* 2 2))))))))
; (* 2 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 (* 2 (* 2 2))))))))
; (* 2 (A 0 (A 0 (A 0 (A 0 (* 2 (* 2 (* 2 (* 2 2))))))))
; (* 2 (A 0 (A 0 (A 0 (* 2 (* 2 (* 2 (* 2 (* 2 2))))))))
; (* 2 (A 0 (A 0 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 2))))))))
; (* 2 (A 0 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 2))))))))
; (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 2))))))))
; (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 2))))))))
; 2^10 = 1024
;
; (A 2 4)
; (A 1 (A 2 3))
; (A 1 (A 1 (A 2 2)))
; (A 1 (A 1 (A 1 (A 2 1))))
; (A 1 (A 1 (A 1 2)))
; (A 1 (A 1 (A 0 (A 1 1))))
; (A 1 (A 1 (A 0 2)))
; (A 1 (A 1 (* 2 2)))
; (A 1 (A 1 4))
; (A 1 (A 0 (A 1 3)))
; (A 1 (A 0 (A 0 (A 1 2))))
; (A 1 (A 0 (A 0 (A 0 (A 1 1)))))
; (A 1 (A 0 (A 0 (A 0 2))))
; (A 1 (A 0 (A 0 (* 2 2))))
; (A 1 (A 0 (A 0 4)))
; (A 1 (A 0 (* 2 4)))
; (A 1 (A 0 8))
; (A 1 (* 2 8))
; (A 1 16)
; 2^16 = 65536
;
; (A 3 3)
; (A 2 (A 3 2))
; (A 2 (A 2 (A 3 1)))
; (A 2 (A 2 2))
; (A 2 (A 1 (A 2 1)))
; (A 2 (A 1 2))
; (A 2 (A 0 (A 1 1)))
; (A 2 (A 0 2))
; (A 2 (* 2 2))
; (A 2 4)
; 65536

; 2*n
(define (f n) (A 0 n))
; 2^n
(define (g n) (A 1 n))
; 2^(2^n)
(define (h n) (A 2 n))
; 5*n^2
(define (k n) (* 5 n n))