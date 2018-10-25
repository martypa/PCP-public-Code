;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Aufgabe3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Programmierübung zu Scheme 3+4, HS2018
; Vorgaben zu Aufgabe 3

; Aufgabe 3a
(define (f liste)
  (if (empty? liste)
      empty
      (if (empty? (rest liste))
          (first liste)
          (f (rest liste)))))

; Aufgabe 3b
(define (g liste)
  (cond
    ((empty? liste) empty)
    ((empty? (rest liste)) (first liste))
    (else
     (if (> (first liste) (g (rest liste)))
         (first liste)
         (g (rest liste))))))
