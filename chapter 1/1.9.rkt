(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b)))) 

; (+ 4 5)
; (inc (+ 3 5) 5)
; (inc (inc (+ 2 5) 5) 5)
; (inc (inc (inc (+ 1 5) 5) 5) 5)
; (inc (inc (inc (inc (+ 0 5) 5) 5) 5) 5)
; (inc (inc (inc (inc 5 5) 5) 5) 5)
; (inc (inc (inc 6 5) 5) 5)
; (inc (inc 7 5) 5)
; (inc 8 5)
; 9
; It is an iterative process.

(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

; (+ 4 5)
; (+ 3 6)
; (+ 2 7)
; (+ 1 8)
; (+ 0 9)
; 9
; It is a recursive process. 
