
(define (cube x) (* x x x))

(define (p x) (- (* x 3) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
    angle
    (p (sine (/ angle 3.0)))))

(sine 12.15)
(p (sine 4.05))
(p (p (sine 1.35)))
(p (p (p (sine 0.45))))
(p (p (p (p (sine 0.15)))))
(p (p (p (p (p (sine 0.05))))))
(p (p (p (p (p 0.05)))))

;; a)在求值(sine 12.15)时，又将被使用多少次? 
;; 5 次

;; b)在求值(sine a)时，由过程 sine 所产生的计算过程使用的空间和步数(作为 a 的函数)增长的阶是什么?
;; O(log a) ，a 每增大一倍 (x3.0) ，p 就会多运行一次。