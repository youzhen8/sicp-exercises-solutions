#lang racket
; sicp 1.9
(define (+ a b)
  (if (= a 0) b (inc (+ (dec a) b))))
; (+ 4 5)
; (inc (+ (dec 4) 5))
; (+ (+ (dec 4) 5) 1)
; (+ (+ (- 4 1) 5) 1)
; (+ (+ 3 5) 1)
; (+ 8 1)
; 9
; linear recursive process

(define (+ a b)
  (if (= a 0) b (+ (dec a) (inc b))))
; (+ 4 5)
; (+ (dec 4) (inc 5))
; (+ (- 4 1) (+ 5 1))
; (+ 3 6)
; 9
; linear iterative process
