;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 21_if) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Was wäre, wenn if eine normale Funktion wäre?
; test steht für if
(define (test a b)
   (if (= a 0) 1 b))

; Wäre if eine normale Funktion, gälte strikte Auswertung
;(test 0 (/ 1 0))

; Bei if gilt die Bedarfsauswertung (Lazy Evaluation)
;(if (= 0 0) 1 (/ 1 0))
