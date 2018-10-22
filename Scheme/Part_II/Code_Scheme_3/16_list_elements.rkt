;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname 16_list_elements) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Elemente in Listen

; Listen können beliebig verschachtelt sein
(cons 0 (cons (cons 1 empty) (cons 2 (cons 3 empty))))

; Listen Elemente müssen nicht vom gleichen Datentyp sein
(cons 'Tom
    (cons 3
      (cons true empty)))

