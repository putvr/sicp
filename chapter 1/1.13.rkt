#lang racket

(require rackunit)

(define (fi)
  (/ (+ 1 (sqrt 5))
     2))

(define (f)
  (/ (- 1 (sqrt 5))
     2))

(define (fib n)
  (round
   (/
    (- (expt (fi) n) (expt (f) n))
    (sqrt 5))))


(check-equal? (fib 1) 1.0)
(check-equal? (fib 2) 1.0)
(check-equal? (fib 5) 5.0)
(check-equal? (fib 10) 55.0)
(check-equal? (fib 20) 6765.0)