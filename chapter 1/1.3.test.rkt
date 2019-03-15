#lang racket

(require rackunit
         "1.3.rkt")

(check-equal? (ans 1 2 3) (+ (* 2 2)(* 3 3)) "2 and 3 gt 1")
(check-equal? (ans 3 2 1) (+ (* 2 2)(* 3 3)) "2 and 3 gt 1")
(check-equal? (ans 2 3 1) (+ (* 2 2)(* 3 3)) "2 and 3 gt 1")

(check-equal? (ans 3 3 3) (+ (* 3 3)(* 3 3)))

(check-equal? (ans 1 3 3) (+ (* 3 3)(* 3 3)))
(check-equal? (ans 3 1 3) (+ (* 3 3)(* 3 3)))
(check-equal? (ans 3 3 1) (+ (* 3 3)(* 3 3)))
