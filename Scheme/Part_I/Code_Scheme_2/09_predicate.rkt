;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname 09_predicate) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #f)))
; Prädikatfunktionen
; Definition a
(define a 12)

; Demo
(exact? a)
(exact? pi)
(inexact? pi)

; Definition x und y
(define x '(23))
(define y '(23))

; Demo
(eq? x y)
(eqv? x y)
(equal? x y)

(eq? (expt 2 100) (expt 2 100))
(eqv? (expt 2 100) (expt 2 100))