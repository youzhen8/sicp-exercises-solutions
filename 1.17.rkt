#lang racket
; sicp 1.17
(define (multiplication a b)
  (define (even? n)
    (= ( remainder n 2) 0))
  (define (double n)
    (+ n n))
  (define (halve n)
    (/ n 2))
  (cond ((= b 0) 0)
        ((even? b) (multiplication (double a) (halve b)))
        (else (+ a (multiplication a (- b 1))))))