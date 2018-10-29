;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname 08_f_xyz_nested) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Funktion f mit lokaler Funktion plus-y-sqr
; Funktion plus-y-sqr mit lokaler Funktion square
(define (f x y z)
  (local (
    (define (plus-y-sqr q)
      (local (
         (define (square n) (* n n)))
         (square (+ q y)))))
    (+ (plus-y-sqr x) (plus-y-sqr z))))

; Demo
(f 2 3 4)