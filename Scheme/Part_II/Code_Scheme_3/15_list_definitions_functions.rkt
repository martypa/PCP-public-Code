;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname list_definitions_functions) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Definition einer Namensliste
(define namelist (cons "Bob" (cons "Tom" (cons "John" empty))))


; Beispiele vordefinierter Funktionen für Listen
; Gegeben die Liste namelist
namelist

; Umkehrung einer Liste
(reverse namelist)

; Länge einer Liste
(length namelist)

; Eine Liste aus mehreren Listen aneinanderhängen
(define new-namelist (cons "Jack" (cons "Joe" empty)))
(append namelist new-namelist)

; Umkehrung dieser Liste
(reverse (append namelist new-namelist))
