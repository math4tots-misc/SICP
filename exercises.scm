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

;; sec 1.3

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

; Exercise 1.29
; integral using Simpson's rule
(define (exercise-1.29 f a b n)
  (define h (/ (- b a) n))
  (define (y k) (f (+ a (* k h))))
  (define (rec total i)
    (if (> a b)
        0
        ()))
  )

; Exercise 1.30
; Iterative version of 'sum'
(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        0
        (iter (next a)
              (+ ))))
  (iter a 0))


