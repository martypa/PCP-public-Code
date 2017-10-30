;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 32_hyper) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Gruppe verwandter Funktionen
; Jede Funktion baut auf der vorhergehenden auf
(define (plus x y)
  (if (= y 0) x (+ 1 (plus x (- y 1)))))
(define (times x y)
  (if (= y 0) 0 (plus x (times x (- y 1)))))
(define (power x y)
  (if (= y 0) 1 (times x (power x (- y 1)))))
(define (super x y)
  (if (= y 0) 1 (power x (super x (- y 1)))))
(define (SUPER x y)
  (if (= y 0) 1 (super x (SUPER x (- y 1)))))

; Verallgemeinerung des Musters der obigen Funktionen
(define (hyper n)
  (cond 
    [(= n 1) plus]
    [(= n 2) times]
    [else (lambda (x y) 
            (if (= y 0) 
                1 
                ((hyper (- n 1)) x ((hyper n) x (- y 1)))))]
    ))

; Demo Hyper Funktion
((hyper 4) 2 3)

; Ackermann Funktion (PRG1-ALG3)
(define (ackermann n) ((hyper n) n n))

; Demo Ackermann Funktion
(ackermann 1)
(ackermann 2)
(ackermann 3)
;(ackermann 4)
