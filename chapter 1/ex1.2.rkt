#lang racket

(define value (/ (+ 5 4 (- 2 (+ 6 (/ 4 5)))) 
    (* 3 (- 6 2)(+ 2 7))))

(provide value)
