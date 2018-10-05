;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname 33_datafun) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #f)))
; Funktionen/Operationen als Parameter
(define (do-it fkt arg)
  (fkt arg))

; Funktionsdefinition von ++ und --
(define (inc x)
  (+ x 1))

(define (dec x)
  (- x 1))

; Funktionen/Operationen als Funktionswerte
; was ist mit x zu tun, wenn x kleiner als y ist?
(define (what-to-do x y) 
  (if (< x y)
    inc
    dec))

; Demo Seite 33
(do-it sin (/ pi 2))
(do-it symbol? 'abc)
(do-it inc 5)
(do-it dec 5)

; Demo Seite 34
(what-to-do 2 3)
(what-to-do 3 2)
(do-it (what-to-do 2 3) 2)
