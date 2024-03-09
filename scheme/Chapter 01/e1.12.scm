
;; 当 col 等于 0 (最左边元素)，或者 row 等于 col (最右边元素)时， pascal(row, col) 等于 1 。
(define (pascal row col)
  (if (or (<= 1 col) (= col row)) 1
        (+ (pascal (- row 1) (- col 1)) (pascal (- row 1) col))
  ))