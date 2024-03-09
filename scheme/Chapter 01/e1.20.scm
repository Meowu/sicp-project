
(define (gcd a b)
  (if (= b 0) a
      (gcd b (remainder a b))))


;; 正则序
;; 18 次
(gcd 206 40)
(if (= 40 0) 206 (gcd 40 (remainder 206 40)))
(if (= (remainder 206 40) 0) 206 (gcd (remainder 206 40) (remainder (remainder 206 40))))
...


;; 应用序
;; 4 次
(gcd 206 40)
(gcd 40 (remainder 206 40))
(gcd 40 6)
(gcd 40 (remainder 40 6))
(gcd 6 4)
(gcd 6 (remainder 6 4))
(gcd 4 2)
(gcd 2 (remainder 4 2))
(gcd 2 0)
2