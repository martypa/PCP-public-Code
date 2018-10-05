;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 20_absolut) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Absoluter Wert

; Falsch
; (define (absolute x) (if (< x 0) (- x)))
; Korrekt
(define (absolute x) (if (< x 0) (- x) x))

; Demo
(absolute 2.56)
(absolute -2.56)