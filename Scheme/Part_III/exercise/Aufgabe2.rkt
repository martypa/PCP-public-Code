;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Aufgabe2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Vorgabe Aufgabe 2, Programmierübung zu Scheme 5+6
(define (fib n)
  (cond 
    ((or (= n 0) (= n 1)) n)
    (else (+ (fib (- n 1))
             (fib (- n 2)))))
  )
