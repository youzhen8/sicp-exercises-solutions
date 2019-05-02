#lang racket
; sicp 1.15
(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
  (if (not (> (abs angle ) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

; a. (sine 12.15)を評価する際に、手続き p は何回適用されるか。
; (sine 12.15)
; (p (sine 4.05))
; (p (p (sine 1.35)))
; (p (p (p (sine 0.45))))
; (p (p (p (p (sine 0.15)))))
; (p (p (p (p (p (sine 0.05))))))
; (p (p (p (p (p 0.05)))))
; 5 times

; b. (sine a)が評価される際に sine 手続きによって生成される
; プロセスが使用する空間とステップ数の増加オーダーを(aの関数として)求めよ。
(ceiling (/ (log (/ 12.15 0.1)) (log 3)))
;(ceiling (/ 4.799914262780603 1.0986122886681098))