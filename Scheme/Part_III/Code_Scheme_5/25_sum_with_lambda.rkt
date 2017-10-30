;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 25_sum_with_lambda) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Funktion sum mit einer Funktion f als Parameter und next als Laufweite
(define (sum f a next b)
  (if (> a b)
      0
      (+ (f a) 
         (sum f (next a) next b))))

; Funktion zum Berechnen von Quadrat-Zahlen
(define (square x) (* x x))
; Funktion zum Berechnen von Kubik-Zahlen
(define (cube x) (* x x x))

; Demos
(sum square 1 (lambda (n) (+ n 2)) 10)
(sum cube 1 (lambda (n) (+ n 3)) 10)

; Ersetzen von square oder cube durch lambda 
