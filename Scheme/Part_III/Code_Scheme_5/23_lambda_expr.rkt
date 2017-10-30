;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 23_lambda_expr) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Auswertung eines lambda-Ausdrucks
(lambda (x) (* x x))            ; Quadratfunktion
(lambda (x y) (if (< x y) y x)) ; Maximum	
(lambda (n) (+ n 1))            ; Inkrementierung um 1
(lambda (n) (+ n 2))            ; Inkrementierung um 2
