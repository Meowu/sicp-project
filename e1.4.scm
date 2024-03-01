; + - just are functions here.
; pass function as value
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))