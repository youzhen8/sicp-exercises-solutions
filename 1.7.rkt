#lang racket
; sicp 1.7

(define ( average x y)
  (/ (+ x y) 2))

(define ( improve guess x)
  (average guess (/ x guess )))

(define (square x) (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x))
      0.001))

(define (sqrt-iter guess x) ;sqrt-iter is "square root iterator" iterator:繰り返し処理の抽象化
  (if (good-enough? guess x)
          guess
          (sqrt-iter ( improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))


;(sqrt 0.0001) 引数に対しての許容誤差0.001がとても大きいため、0.03230844833048122を返す。
;計算機はアーキテクチャごとにある一定以上の大きな数値間の小さな誤差を表すことができない。
;手元の環境では(sqrt 10000000000000)で誤差を表現できず、(improve guess x)が3162277.6601683795を返し続ける。
