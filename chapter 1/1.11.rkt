#lang racket

(require rackunit)

(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* (f (- n 2)) 2)
         (* (f (- n 3)) 3))))

(define (f-iter n)
  (define (i a b c count)
    (if (= count 0)
        a
        (i (+ a (* 2 b) (* 3 c)) a b (- count 1))))
  (if (< n 3)
      n
      (i 2 1 0 (- n 2))))


(check-equal? (f 3) 4)
(check-equal? (f 4) 11)

(check-equal? (f-iter 1) 1)
(check-equal? (f-iter 3) 4)
(check-equal? (f-iter 4) 11)
(check-equal? (f-iter 5) 25)
(check-equal? (f-iter 6) 59)
(check-equal? (f-iter 7) 142)