#lang racket
; sicp 1.7.2

(define ( average x y)
  (/ (+ x y) 2))

(define ( improve guess x)
  (average guess (/ x guess )))

(define (square x) (* x x))

(define (good-enough? guess oldguess)
  (< (abs (- guess oldguess))
     (* guess 0.001)))

(define (sqrt-iter guess oldguess x) ;sqrt-iter is "square root iterator" iterator:繰り返し処理の抽象化
  (if (good-enough? guess oldguess)
          guess
          (sqrt-iter ( improve guess x) guess x)))

(define (sqrt x)
  (sqrt-iter 1.0 2.0 x))

(sqrt 10000000000000)