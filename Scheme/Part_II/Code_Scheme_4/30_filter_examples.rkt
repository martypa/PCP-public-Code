;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 30_filter_examples) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Prädikate auf Listen anwenden
; Eine eigene Prädikatfunktion, die prüft, ob eine Zahl eine Quadratzahl ist
(define (squarenumber? num)
   (integer? (sqrt num)))

; Beispiel von Zahlen Listen
(define my-list (list 3 5 16 -6 4 -23 9 77 -31 2))
(define bin-list (list 1 2 4 8 16 32 64))

; filer Beispiel aus den Unterlagen
(filter squarenumber? bin-list)