#lang racket
; sicp 1.6

(define ( average x y)
(/ (+ x y) 2))

(define ( improve guess x)
(average guess (/ x guess )))

(define (square x) (* x x))

(define (good-enough? guess x)
   (< (abs (- (square guess ) x))
      0.001))

(define (new-if predicate then-clause else-clause ) ;predicate:述語, clause:句
  (cond (predicate then-clause ) ;cond:conditional
        (else else-clause )))

(define (sqrt-iter guess x) ;sqrt-iter is "square root iterator" iterator:繰り返し処理の抽象化
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter ( improve guess x) x)))

(define (sqrt x)
(sqrt-iter 1.0 x))

; (if predicate then_value else_value)
; if式はpredicateを評価してからthen_value, else_valueいずれかのtokenを評価する。(特殊形式)
; new-ifではifを用いずcondで実装したため引数をすべて評価してしまう。
; 上記手続きでは、new-ifに作用させるためにsqrt-iterが無限に呼ばれスタックを圧迫する。(stack overflow)
; DrRacket Debuggerでステップ実行するとわかりやすい。
