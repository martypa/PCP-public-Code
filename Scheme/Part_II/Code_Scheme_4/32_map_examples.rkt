;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 32_map_examples) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Prädikate auf Listen anwenden
; Eine eigene Prädikatfunktion, die prüft, ob eine Zahl eine Quadratzahl ist
(define (squarenumber? value)
  (integer? (sqrt value)))

; Beispiel von Zahlen Listen
(define my-list (list 3 5 -6 -23 37 2))
(define bin-list (list 1 2 4 8 16 32 64))

; map Beispiele aus den Unterlagen
(map sqr my-list)
(map abs my-list)
(map squarenumber? bin-list)
(map + (list 1 2 3) (list 4 5 6))
(map / (list 1 2 3) (list 4 5 6))
(map + (list 1 2 3) my-list)
