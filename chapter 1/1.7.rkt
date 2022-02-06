#lang racket

;;; Проверка good-enough? , которую мы использовали для вычисления квадратных корней, будет довольно неэффективна для поиска квадратных корней от очень маленьких чисел. Кроме того, в настоящих компьютерах арифметические операции почти всегда вычисляются с ограниченной точностью. Поэтому наш тест оказывается неадекватным и для очень больших чисел. Альтернативный подход к реализации good-enough? состоит в том, чтобы следить, как от одной итерации к другой изменяется guess , и остановиться, когда изменение оказывается небольшой долей значения приближения. Разработайте процедуру вычисления квадратного корня square-root , которая использует такой вариант проверки на завершение. Верно ли, что на больших и маленьких числах она работает лучше?


(require rackunit)

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

(define (square-root x)
  (sqrt-iter 1.0 0.1 x))


(check-equal? (round (* 1000 (square-root 4.0))) 2000.0)
(check-equal? (round (* 1000 (square-root 100.0))) 10000.0)
(check-equal? (round (* 1000 (square-root 1000000.0))) 1000000.0)
(check-equal? (round (* 1000 (square-root 0.04))) 200.0)


