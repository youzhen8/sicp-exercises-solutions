#lang racket
; sicp 1.12
(define (pascal r c) 
   (if (or (= c 1) (= c r)) 
       1 
       (+ (pascal (- r 1) (- c 1)) (pascal (- r 1) c))))

(pascal 5 3)