;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 30_polynom) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Die Funktion konstruiert aus den Koeffizienten a0, a1 und a2 
; die zugehörige Polynomfunktion a0 + a1*x + a2*x^2
(define (polynom a0 a1 a2)
  (lambda (x) (+ a0 (* a1 x) (* a2 (sqr x)))
    ))

; Funktion p123 = 1 + 2*x + 3*x2
(define p123 (polynom 1 2 3))

; Beispiel mit x = 2
(p123 2)

; Beispiel mit x = 2 ohne p123
((polynom 1 2 3) 2)
