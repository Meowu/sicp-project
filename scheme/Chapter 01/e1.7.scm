;; deduce process
(define (square x)
  (* x x))

;; 旧的策略的问题
;; 对于特别小的数，比如 0.00009 ，书本给出的 sqrt 并不能计算出正确的答案； 
;; 而对于特别大的数，因为 mit-scheme 实现的小数精度不足以表示两个大数之间的差，所以 sqrt 会陷入死循环而无法得出正确结果。
;; 监视猜测值在从一次迭代到下一次的变化情况，当改变值相对于猜测值的比率很小时就结束。

(define (good-enough? guess x)
  (< (abs (/ (- guess (improve guess x)) guess)) 0.001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))
  
(define (sqrt-iter guess x)
  (if (good-enough? guess x) 
    guess 
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;; (display (sqrt 100000000000000000000))
;; (newline)
(display (sqrt .000000000000000000000009)) ;; 3.0000111688913464e-12
(newline)
(display  (sqrt 900000000000000000000000000000000000000000000000000000000000000000000000000000000000)
) ;; 9.486982144406554e41
(newline)