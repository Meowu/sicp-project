
;; O(n)
(define (* a b)
  (if (= b 0) a
      (+ a (* a (- b 1)))))


(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))

(define (even? n)
  (= (remainder n 2) 0))

(define (fast-mul a b)
  (cond ((= b 0) 0)
      ((even? b) (double (fast-mul a (halve b))))
      (else (+ a (fast-mul a (- b 1))))
      ))