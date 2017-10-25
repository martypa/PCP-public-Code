;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname list_structs) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Strukturierte Listen
; Elemente einer Liste können Listen oder Strukturen sein

; Sequentielle Listen gleicher Länge
(define phone-book
   (list
      (list "Meier" 2051)
      (list "Müller" 3352)))

; Strukturen vom gleichen Typ
(define-struct person (name number))
(define another-phone-book
   (list
      (make-person "Meier" 2051)
      (make-person "Müller" 3352)))
