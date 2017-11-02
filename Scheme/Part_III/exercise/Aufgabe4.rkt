;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Aufgabe4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Vorgabe Aufgabe 4, Programmierübung zu Scheme 5+6
(define x 1)
(define y 5)

((lambda (x y)
   (+ (* 2 x) y))
 y x)

((lambda (a b)
   (+ (* 2 x) y))
 y x)