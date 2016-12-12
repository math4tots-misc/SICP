; utils
(define (print x)
  (display x)
  (newline))

(define (square x) (* x x))

(define (assert x)
  (if (not x)
      (begin
        (error "Assertion failed" x)))
      #t)

; Exercise 1.3

(define (exercise-1.3 a b c)
  (+ (square (max a b)) (square (max (min a b) c))))

(assert (eq? (exercise-1.3 1 2 3)
             (+ (square 2) (square 3))))

; Exercise 1.5

; Applicative-order -> infinite loop
; Normal-order -> return zero
