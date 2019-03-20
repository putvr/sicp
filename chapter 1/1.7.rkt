#lang racket 

(define (sqrt-iter guess prev x)
    (if (good-enough? guess prev)
        guess
        (sqrt-iter (improve guess x) guess x)))

(define (improve guess x)    
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess x)
    (< (abs (/ (- guess x) x)) 0.001))

(define (sqrt x)
    (sqrt-iter 1.0 0.1 x))

(sqrt 0.0001) 
(sqrt 0.00000001) 
