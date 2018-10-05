;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 11_squarenumber) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Eigene Prädikatfunktion
(define (squarenumber? num)
   (integer? (sqrt num)))

; Demo
(squarenumber? 9)
(squarenumber? 12)
(squarenumber? 16)