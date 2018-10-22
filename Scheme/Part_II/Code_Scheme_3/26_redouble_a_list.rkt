;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname 26_redouble_a_list) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Listen-Elemente (Zahlen) verdoppeln
(define (redouble a-list)
  (cond ((empty? a-list) empty)
        (else
         (cons (* 2 (first a-list))
               (redouble (rest a-list))))
        ))

; Demo
(redouble (list 3 2 1))