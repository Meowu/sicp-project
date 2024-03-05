; method 1
(define (sum-bigger a b c) 
  (cond ((and (> (+ a b) (+ a c) ) (> (+ a b) (+ b c))) (+ a b))
        ((and (> (+ a c) (+ a b) ) (> (+ a c) (+ b c))) (+ a c))
        (else (+ b c))
  ))

; method 2
(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (bigger x y) (if (> x y) x y))
(define (smaller x y) (if (< x y) x y ))

(define (sum-of-squares-of-bigger-two x y z)
  (sum-of-squares (bigger x y) (bigger (smaller x y) z)))
