#lang typed/racket

(provide (all-defined-out))

(define-type [Maybe A] (U A False))

(: maybe-first : (All (A) ([Listof A] -> [Maybe A])))
(define (maybe-first ls)
  (and (not (empty? ls)) (first ls)))
