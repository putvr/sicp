#lang racket

(define (rec n)
  (if (< n 3) 
      n
      (+ (rec (- n 1))
         (rec (- n 2))
         (rec (- n 3)))))

(rec 3) ; 3
(rec 4) ; 6
(rec 5) ; 11
(rec 10) ; 230

(define (iter n)
  (define (iterate a b c count)
    (if (= count 0)
        (c)
        (iterate (+ a b c) (+ a b) c (- count 1))))
  (iterate 3 2 1 n))

(rec 3) ; 3
(rec 4) ; 6
(rec 5) ; 11
(rec 10) ; 230
