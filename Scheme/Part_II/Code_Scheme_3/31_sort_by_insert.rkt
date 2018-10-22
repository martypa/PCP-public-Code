;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname 31_sort_by_insert) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Einfügen in sortierter Liste
(define (insert item a-list)
  (cond 
    ((empty? a-list) (list item))
    ((<= item (first a-list)) (cons item a-list))
    (else (cons (first a-list) (insert item (rest a-list))))
    ))

; Sortieren durch Einfügen 
(define (sort-by-insert num-list)
  (cond
    ((empty? num-list) empty)
    (else (insert (first num-list)
                  (sort-by-insert (rest num-list))))
    ))

; Demo
(sort-by-insert '(12 54 32 21))
;(define a-list (list 22 11 27 33 6 35 45 11 47 17 8 23))
;(sort-by-insert a-list)
