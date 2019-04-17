#lang racket

; linear recursive process
(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))
(factorial 6)


; linear iterative process
(define ( factorial-2 n)
(fact-iter 1 1 n))

(define ( fact-iter product counter max-count )
  (if (> counter max-count )
      product
      (fact-iter (* counter product )
                 (+ counter 1)
                 max-count )))
(factorial-2 6)
