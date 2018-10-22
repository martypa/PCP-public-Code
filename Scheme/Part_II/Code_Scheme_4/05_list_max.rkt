;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname 05_list_max) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Grenzen der strukturellen Rekursion
; Finde das Maximum in einer Liste von Zahlen
(define (list-max a-list)
  (cond
    [(empty? (rest a-list)) (first a-list)]
    [else (cond
      [(> (first a-list) (list-max (rest a-list)))  
          (first a-list)]
      [else (list-max (rest a-list))])]
))

; Demo
(list-max (list 42))
(list-max (list 2 3 6 5 9 1))
;(list-max (list 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25))
