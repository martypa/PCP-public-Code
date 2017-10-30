;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 26_lambda_scope) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Scope eines lambda-Ausdrucks
(define x 100)
(define y 200)
((lambda (x) (+ x y)) 100)

; Umgebung und lambda-Ausdruck
; Demo muss in REPL ausgeführt werden!
;(define b (+ a 15))
;(define f (lambda (x) (+ a x)))

;(f 15)
;(define a 10)
;(f 15)
