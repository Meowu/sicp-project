(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

; 如果无限递归，则采用的是应用序求值；如果返回 0 则是正则序求值。