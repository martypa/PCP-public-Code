;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 28_point2d) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Beispiel 2D Punkt
(define-struct point (x y))  ; Typ-Definition; x, y: reele Zahlen
(make-point 7 3)             ; Konstruktor-Aufruf
(define p1 (make-point 3 4)) ; Variablen-Definition

; Skalieren eines zweidimensionalen Punktes p mit Faktor scale
(define (point-scaling p scale)
   (make-point (* (point-x p) scale) 
               (* (point-y p) scale)))


;(define p (make-point "2" "3"))
;(define q (point-scaling p 2.5))

; Demo
(point? p1)
(point-x p1)
(point-y p1)
