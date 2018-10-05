;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Aufgabe6) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Vorgabe Aufgabe 6, Programmierübung zu Scheme 1+2
(define (toll total-weight)
  (cond
    ((not (number? total-weight)) "Eingabe muss Zahl sein!")
    ((<= total-weight 0) "Zahl muss größer 0 sein!")
    ((<= total-weight 1000) 20)
    ((<= total-weight 2000) 30)
    ((<= total-weight 5000) 50)
    ((<= total-weight 10000) 100)
    (else 250)))
