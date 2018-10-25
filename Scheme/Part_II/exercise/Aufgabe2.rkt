;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Aufgabe2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Programmierübung zu Scheme 3+4, HS2018
; Vorgabe Aufgabe 2

; Listen-Elemente (Zahlen) verdoppeln
(define (redouble a-list)
  (cond ((empty? a-list) empty)
        (else
         (cons (* 2 (first a-list))
               (redouble (rest a-list))))
        ))

; Demo
(redouble (list 3 2 1))