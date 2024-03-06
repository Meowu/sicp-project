;; 树形递归练习

(define (f n) 
  (if (< n 3) n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3)))
      )))

;; 3, 3, 3, 4, 11, 25, 59

;; f(5) = f(4) + 2f(3) + 3f(2)
;;      = f(3) + 2f(2) + f(1) + 2f(3) + 3f(2)
;; a <- (a + 2b + 3c)
;; b <- a
;; c <- b
(define (f-iter a b c count)
  (if (<= count 0)
    a
    (f-iter (+ a (* b 2) (* c 3)) a b (- count 1))))

(define (ff n)
  (if (< n 3) n
    (f-iter 2 1 0 (- n 2))))