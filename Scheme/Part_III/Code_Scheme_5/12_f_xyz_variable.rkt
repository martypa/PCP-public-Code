;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname 12_f_xyz_variable) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Funktion f mit «Hilfsvariablen» im Rumpf der Funktions-Definition 
(define (f x y z)
  (local 
    ([define p (+ x y)]
     [define q (+ z y)])
    (+ (sqr p) (sqr q))
  ))

; Demo
(f 2 3 4)