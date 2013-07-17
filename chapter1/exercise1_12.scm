;
; Exercise 1.12
;

; calculates the binominal coefficient
(define (pasc row column)
  (cond ((or (= row 0) (= column 0) (= row column))  1)
        ((or (< row column) (< row 0) (< column 0)) error)
  		(else (+ (pasc (- row 1) (- column 1)) (pasc (- row 1) column)))))

(display (pasc 20 4))
