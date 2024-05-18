
#lang racket

(provide (all-defined-out)) ;; so we can put tests in a second file

;; put your code below

(define x 3)
(define y ( + x 2))

(define cube1
  (lambda (x)
    (* x (* x x)))) ; x * x * x
(define cube2
  (lambda (x)
    (* x x x))) ; x * x * x
(define (cube3 x)
    (* x x x))

; Functions really do take n arguments, its not syntactic sugar like ML.;

; Write a function sequence that takes 3 arguments low, high, and stride, all assumed to be numbers.
; Further assume stride is positive. sequence produces a list of numbers from low to high (including
; low and possibly high) separated by stride and in sorted order.

(define (sequence low high stride)
  (if (< (- high low) 0)
  null
  (cons low (sequence (+ low stride) high stride))))

(define (string-append-map xs suffix)
  (map (lambda (x) (string-append x suffix)) xs))

; list-nth-mod that takes a list xs and a number n. If the number is negative,
; terminate the computation with (error "list-nth-mod: negative number"). Else if the list is
; empty, terminate the computation with (error "list-nth-mod: empty list").
; Else return the ith element of the list where we count from zero and i is the remainder produced when dividing n by the
; list’s length. Library functions length, remainder, car, and list-tail are all useful

; How variables are looked up in environments is a fundamental feature of a programming language.
; let ([b1 e1] [b2 e1] ...)

(define (list-nth-mod xs n)
  (cond [(< n 0)  (error "list-nth-mod: negative number")]
        [(null? xs) (error "list-nth-mod: empty list")]
        [#t (letrec ([i (remainder n (length xs))]
                  [return_index (lambda (xss ii) (cond [(= i ii) (car xss)]
                                               [#t (return_index (cdr xss) (+ ii 1))]))])
              (return_index xs 0))]))

; A stream returns a pair of the first value on the stack of values the second function in the pair generates.

; . Write a stream funny-number-stream that is like the stream of natural numbers (i.e., 1, 2, 3, ...)
; except numbers divisble by 5 are negated (i.e., 1, 2, 3, 4, -5, 6, 7, 8, 9, -10, 11, ...). Remember a stream
; is a thunk that when called produces a pair. Here the car of the pair will be a number and the cdr will
; be another stream

(define nats
(letrec ([f (lambda (x) (cons x (lambda () (f (+ x 1)))))])
(lambda () (f 1))))

(define funny-number-stream
  (letrec ([divisible-by-5 (lambda (x)
                             (if (= (remainder x 5) 0)
                                 (cons (* x -1) (lambda () (divisible-by-5 (+ x 1))))
                                 (cons x (lambda () (divisible-by-5 (+ x 1))))))])
    (lambda () (divisible-by-5 1))))


(define ones (lambda () (cons 1 ones)))
; Write a function stream-for-n-steps that takes a stream s and a number n. It returns a list holding
; the first n values produced by s in order. Assume n is non-negative. Sample solution: 5 lines.

(define (stream-for-n-steps s n)
  (letrec ([f
         (lambda (ss acc)
           (if (<= acc 0)
           null
           (cons (car (ss)) (f (cdr (ss)) (- acc 1)))))])
    (f s n)))

(define dan-then-dog (letrec ([f (lambda (x) (if (= (modulo x 2) 0)
                                                 (cons "dan.jpg" (lambda () (f (+ x 1))))
                                                 (cons "dog.jpg" (lambda () (f (+ x 1))))))]) (lambda () (f 0))))

(define (stream-add-zero s)
  (letrec ([f (lambda (x) (lambda () (cons (cons 0 (car (x))) (cdr (x)))))]) (f s)))

(define (cycle-lists xs ys)
  (letrec ([f
            (lambda (n)
              (cons (cons (list-nth-mod xs n) (list-nth-mod ys n)) (lambda () (f (+ n 1)))))])
   (lambda () (f 0)))
)

(define (vector-assoc v vec)
  (letrec ([check-vec-v
            (lambda (pos)
              (cond [(equal? (car (vector-ref vec pos)) v) (vector-ref vec pos)]
                    [#t (iterate-v (+ 1 pos))]))
            ] [iterate-v
               (lambda (acc) (if (= (vector-length vec) acc)
                                 #f
                                 (check-vec-v acc)))]) (iterate-v 0)))

(define (cached-assoc xs n) (letrec ([memo (make-vector n #f)]
                                     [modified-assoc (lambda
                                                         ())]) (lambda (v) (assoc v xs))))
