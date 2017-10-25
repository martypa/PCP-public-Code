;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname list_definitions_predicate) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Definition einer Namensliste
(define namelist (cons "Bob" (cons "Tom" (cons "John" empty))))

; Definition einer Struktur
(define-struct emptylist ())
(define my-list (make-emptylist))

; Beispiele für Listen Prädikatfunktionen
; Ist empty eine Liste? 
(list? empty)

; Enthält empty Elemente?
(cons? empty)

; Ist namelist eine Liste?
(list? namelist)

; Enthält namelist Elemente?
(cons? namelist)
(empty? namelist)

; Ist das eine Liste?
(list? "1 2 3 4 5")

; Ist my-list eine Liste?
(list? my-list)
