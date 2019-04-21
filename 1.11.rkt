#lang racket
; sicp 1.11
; 再帰プロセス
(define (f n) (cond ((< n 3) n)
                    (else (+ (f (- n 1))
                             (* 2 (f (- n 2)))
                             (* 3 (f (- n 3)))))))

; 反復プロセス
(define (f2 n)
  (define (iter a b c count)
    (if (= count 0)
        a
        (iter b c (+ c (* 2 b) (* 3 a)) (- count 1))))
  (iter 0 1 2 n))

