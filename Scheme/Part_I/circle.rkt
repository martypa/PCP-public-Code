;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname circle) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define PI 3.14159)

; Berechnung einer Kreisfläche
(define (area-of-disk r)
   (* PI (sqr r)))

; Berechnung der Fläche eines Rings
(define (area-of-ring outer inner)
   (- (area-of-disk outer) (area-of-disk inner)))

(area-of-ring 5 3)