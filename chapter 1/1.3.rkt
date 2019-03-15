#lang racket
;
; Определите процедуру, которая принимает в качестве аргументов три числа и возвращает сумму квадратов двух больших из них. 
;

(define (sum-of-quad x y) (+ (* x x)(* y y)))

(define (ans a b c) 
    (if (< c (min a b))
        (sum-of-quad a b)
        (sum-of-quad c (max a b))))
        
(provide ans)

