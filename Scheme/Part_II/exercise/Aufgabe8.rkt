;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Aufgabe8) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Programmierübung zu Scheme 3+4, HS2018
; Vorgabe Aufgabe 8

; Sortieren durch Einfügen 
(define (sort-a-list num-list)
  (cond
    ((empty? num-list) empty)
    (else (insert (first num-list)
                  (sort-a-list (rest num-list))))
    ))

; Einfügen in sortierter Liste
(define (insert item a-list)
  (cond 
    ((empty? a-list) (list item))
    ((<= item (first a-list)) (cons item a-list))
    (else (cons (first a-list) (insert item (rest a-list))))
    ))

; Beispiellisten
(define my-list (list 3 5 14 6 4 23 6 77 31 30 2))
(define my-strings (list "ab" "a" "abc" "baa"))

; Demo Sortiern
(sort-a-list my-list)
(sort-a-list my-strings)