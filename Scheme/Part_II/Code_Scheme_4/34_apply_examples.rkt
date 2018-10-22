;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 34_apply_examples) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Elemente der Liste als Operanden für die Funktion
; Beispiel von Zahlen Listen
(define my-list (list 1 -2 22 4 -5 1 76))

; apply Beispiele aus den Unterlagen
(apply + my-list)
(apply * my-list)
(apply / 256 (list 2 4 8))
(apply max my-list)
(apply min 5 1 3 '(6 8 3 2 5))
(apply append '(1 2 3) '((a b) (c d e) (f)))
(apply + (map sqr (list 1 -2 22 4 -5 1 76)))
