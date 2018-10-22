;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname 08_list_definitions) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Beispiele Listendefinitionen
; eine Liste mit 0 Elementen
(define list0 empty)

; eine Liste mit 1 Element
(define list1 (cons 'a empty))

; eine Liste mit 2 Elementen
(define list2 (cons 'a (cons 'b empty)))

; Definition einer Namensliste
(define namelist (cons "Bob" (cons "Tom" (cons "John" empty))))
