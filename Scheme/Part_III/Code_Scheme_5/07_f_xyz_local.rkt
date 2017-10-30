;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname 07_f_xyz_local) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Funktion f mit den lokalen Funktionen square und plus-y-sqr
; Hilfsfunktion plus-y-sqr kann auf y zugreifen
(define (f x y z)
  (local (
    (define (square n) (* n n))
    (define (plus-y-sqr q) (square (+ q y))))
    (+ (plus-y-sqr x) (plus-y-sqr z))))

; Demo
;(square 2)