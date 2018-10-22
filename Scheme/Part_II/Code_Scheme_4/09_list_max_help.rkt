;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname 09_list_max_help) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Akkumulative Rekursion
; Finde das Maximum in einer Liste von Zahlen
(define (list-max a-list)
  (list-max-helper (rest a-list) (first a-list)))

; Hilfsfunktion für das Finden das Maximum in einer Liste von Zahlen
(define (list-max-helper a-list max-so-far)
  (cond
    [(empty? a-list) max-so-far]
    [(> (first a-list) max-so-far)
     (list-max-helper (rest a-list) (first a-list))]
    [else
     (list-max-helper (rest a-list) max-so-far)]))

; Demo
(list-max (list 1 2 3 4))
;(list-max (list 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25))
