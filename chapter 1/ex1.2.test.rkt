#lang racket

(require rackunit
         "ex1.2.rkt")

(check-equal? value (/ 7 180) "Checking returned value")