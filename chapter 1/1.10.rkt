#lang racket 

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(A 1 10)  ; 1024
(A 2 4)   ; 65536
(A 3 3)   ; 65536

(define (f n) (A 0 n)) ; 2n
(f 1) ; 2
(f 2) ; 4
(f 3) ; 6 
(f 4) ; 8 
(f 5) ; 10 

(define (g n) (A 1 n)) ; 2^n
(g 1) ; 2^1 = 2
(g 2) ; 2^2 = 4
(g 3) ; 2^3 = 8
(g 4) ; 2^4 = 16 
(g 5) ; 2^5 = 32

(define (h n) (A 2 n)) ; 2^2^2^... (n-1 times)
(h 1) ; 2 = 2
(h 2) ; 2^2 = 4
(h 3) ; 2^(2^2) = 16
(h 4) ; 2^(2^(2^2)) = 65536
(h 5) ; 2^(2^(2^(2^2))) = ....
