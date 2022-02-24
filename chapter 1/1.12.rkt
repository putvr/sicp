#lang racket

(require rackunit)

(define (solution y x)
  (cond ((= x y) 1)
        ((= x 1) 1)
        (else (+
               (solution (- y 1) x)
               (solution (- y 1) (- x 1))))))

(check-equal? (solution 1 1) 1)
(check-equal? (solution 2 2) 1)
(check-equal? (solution 3 2) 2)
(check-equal? (solution 4 3) 3)
(check-equal? (solution 5 2) 4)
(check-equal? (solution 5 3) 6)
