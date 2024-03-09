;; 求幂
;; 2^4 = 2^2^2
(define (even? n)
  (= (remainder n 2) 0))

(define (square n)
  (* n n))

;; 重点是 (square b) 的状态转换
(define (fast-expt-iter a b n)
  (cond ((= n 0) a)
        ((even? n) (fast-expt-iter a (square b) (/ n 2)))
        (else (fast-expt-iter (* a b) b (- n 1)))))

(define (fast-expt b n)
  (fast-expt-iter 1 b n))