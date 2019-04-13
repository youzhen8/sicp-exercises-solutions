#lang racket
; sicp 1.5
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))
(test 0 (p))
; 適用順序評価(applicative-order evaluation)を使うインタプリンタでは
; (p)を展開し続けるためインタプリンタからの応答がないままとなる。
; 正規順序評価(normal-order evaluation)を使うインタプリンタでは
; 以下の順に式展開され、インタプリンタは0を応答する。
; このとき、(p)が循環してyが展開されない。
; (if (= x 0) 0 y))
; (if (= 0 0) 0 y))
; 0

;Racketでは応答が確認できないため、適用順序評価を使用されていると考えられる。
