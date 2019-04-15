#lang racket
; sicp 1.8

(define (square x) (* x x))

(define ( improve guess x)
  (/ (+ (/ x (* guess guess))
        (* 2 guess))
     3))

(define (good-enough? guess oldguess)
  (< (abs (- guess oldguess))
     (abs (* guess 0.001))))

(define (cube-root-iter guess oldguess x) ;sqrt-iter is "square root iterator" iterator:繰り返し処理の抽象化
  (if (good-enough? guess oldguess)
      guess
      (cube-root-iter ( improve guess x) guess x)))

(define (cube-root x)
  (cube-root-iter 1.0 0.0 x))

(cube-root 10000000000000)
