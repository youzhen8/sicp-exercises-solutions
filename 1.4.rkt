#lang racket
; sicp 1.4
( define ( a-plus-abs-b a b)
(( if (> b 0) + -) a b))
;(a-plus-abs-b 5 -5)を評価すると以下のように展開される
;((if (> -5 0) + -) 5 -5)
;(- 5 -5)
;10
