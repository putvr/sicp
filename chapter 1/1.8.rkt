#lang racket

(require rackunit)

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x) x)))

(define (improve y x)
  (/ (+ (/ x (* y y)) (* 2 y)) 3))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.0001))

(define (cube x) (* x x x))

(define (cube-root x)
  (cbrt-iter 1.0 x))


(check-equal? (round (* 1000 (cube-root 8.0))) 2000.0)
(check-equal? (round (* 1000 (cube-root 1000.0))) 10000.0)
(check-equal? (round (* 1000 (cube-root 1000000000.0))) 1000000.0)
(check-equal? (round (* 1000 (cube-root 0.008))) 200.0)