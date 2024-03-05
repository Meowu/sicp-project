;; deduce process
(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

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

;; exercise
;; 根据应用序的定义，传入 new-if 的两个条件参数都会被先求值
;; 如果我们用它去重写 sqrt-iter 的话，会无限递归调用 `sqrt-ter` 导致栈溢出。
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))