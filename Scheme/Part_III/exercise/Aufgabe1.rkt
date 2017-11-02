;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Aufgabe1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Vorgabe Aufgabe 1, Programmierübung zu Scheme 5+6
; Sortieren durch Einfügen 
(define (sort-a-list op a-list)
  (cond
    ((empty? a-list) empty)
    (else (insert op (first a-list)
                  (sort-a-list op (rest a-list))))
    ))

; Einfügen in sortierter Liste
(define (insert op item a-list)
  (cond 
    ((empty? a-list) (list item))
    ((op item (first a-list)) (cons item a-list))
    (else (cons (first a-list) (insert op item (rest a-list))))
    ))

; Beispielliste
(define my-list (list 3 5 14 6 4 23 6 77 31 30 2))
(define my-strings (list "ab" "a" "abc" "baa"))

; Beispiele Sortiern
(sort-a-list > my-list)
(sort-a-list < my-list)
(sort-a-list string>? my-strings)
(sort-a-list string<? my-strings)
