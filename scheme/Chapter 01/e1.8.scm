(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (cube-root-iter guess x)
  (if (good-enough? guess x)
    guess
    (cube-root-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (/ (- guess (improve guess x)) guess)) 0.001))

; iterates until guess and next guess are equal, 
; automatically produces answer to limit of system precision 
;; (define (good-enough? guess x) (= (improve guess x) guess))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 
     3))
(define (cube-root x)
  (cube-root-iter 1.0 x))

(display (cube-root 27))
(newline)
