#lang sicp

(#%require rackunit)

(define (solution a b c)
  (define (square x) (* x x))
  (define (sum-of-squares x y) (+ (square x) (square y)))
  (cond ((and (> a c) (> b c)) (sum-of-squares a b))
        ((and (> b a) (> c a)) (sum-of-squares b c))
        (else (sum-of-squares a c))))

(check-equal? (solution 2 3 4) 25)
(check-equal? (solution 2 2 1) 8)
(check-equal? (solution 3 1 3) 18)