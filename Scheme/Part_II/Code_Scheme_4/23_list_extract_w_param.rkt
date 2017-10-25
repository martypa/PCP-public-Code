;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname list_extract_w_param) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Extrahiere aus einer Liste alle Werte die oberhalb oder unterhalb einer Grenze liegen,
; wobei oberhalb oder unterhalb eine Operation (rel-op) ist
; Resultat ist eine Liste
(define (list-filter rel-op a-list value)
  (cond 
    [(empty? a-list) empty]
    [else 
      (cond 
        [(rel-op (first a-list) value)
         (cons (first a-list) 
         (list-filter rel-op (rest a-list) value))]
        [else (list-filter rel-op (rest a-list) value)]
  )]))

; Eigene Prädikatfunktion für Vergleich von zwei Zahlen
; ist Param. value1 als Quadrat grösser als Param. value2 
(define (square>? value1 value2)
  (> (* value1 value1) value2))

; Beispiel einer Liste
(define my-list (list 3 5 14 6 4 23 6 77 31 30 2))

; Demos für den Listen Filter mit definierten Operanden
;(list-filter > my-list 14)
;(list-filter < my-list 14)
;(list-filter <= my-list 14)
;(list-filter = my-list 14)
;(list-filter eqv? my-list 14)

; Demos für den Listen Filter mit eigener Prädikatsfunktion
;(list-filter square>? my-list 30)
