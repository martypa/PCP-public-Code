;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Aufgabe6_7) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Programmierübung zu Scheme 3+4, HS2018
; Vorgabe Aufgabe 6 und 7

; Extrahiere aus einer Liste alle Werte aufgrund einer Operation (rel-op)
; Resultat ist eine Liste
(define (list-filter rel-op a-list value)
  (cond 
    [(empty? a-list) empty]
    [else 
      (cond 
        [(rel-op (first a-list) value)
         (cons (first a-list) 
         (list-filter rel-op (rest a-list) value))]
        [else (list-filter rel-op (rest a-list) value)])
    ]))

; ein Listen Beispiel
(define aList (list 3 5 14 6 4 23 6 77 31 30 2))

; Eigene Prädikatfunktion(en)
