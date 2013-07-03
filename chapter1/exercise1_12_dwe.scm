(define (factorial n)
    (if (= n 1)
        1
        (* n (factorial (- n 1)))))

(define (binom n k)
    (cond ((= k 0) 1)
          ((= k 1) n)
          ((or (< n 0) (< k 0)) 0)
          (else (/ (factorial n) (* (factorial k) (factorial (- n k)))))))

(define (pascal zeile spalte)
    (cond ((= zeile 0) 1)
          ((= spalte zeile) 1) ;braucht man nicht unbedingt, geht vermutlich schneller
          (else(+ (binom (- zeile 1) (- spalte 1)) 
               (binom (- zeile 1) spalte)))))

(define (pascal2 row col)
    (cond((= col 0) 1)
        ((= col row) 1)
        (else(+ (pascal2(- row 1)(- col 1))
                (pascal2(- row 1) col) ) )))

(define (pascal3 row column)
  (cond ((or (= row column) (= 1 column)) 1)
        ((or (> column row) (< column 1)) null)
        (else (+ (pascal3 (- row 1) (- column 1)) 
                 (pascal3 (- row 1) column)))))

; faengt bei 0 an zu zaehlen
(display (pascal 4 2))
(newline)
; faengt bei 0 an zu zaehlen
(display (pascal2 4 2))
(newline)
; faengt bei 1 an zu zaehlen
(display (pascal3 5 3))
(newline)
