;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname list_extract) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Extrahiere aus einer Liste (a-list) alle Werte unterhalb einer Grenze (value) liegen
; Resultat ist eine Liste
(define (below a-list value)
  (cond [(empty? a-list) empty]
        [else 
          (cond [(< (first a-list) value)
                    (cons (first a-list) 
                    (below (rest a-list) value))]
                [else (below (rest a-list) value)]
        )]))
; Extrahiere aus einer Liste (a-list) alle Werte oberhalb einer Grenze (value) liegen
; Resultat ist eine Liste
(define (above a-list value)
  (cond [(empty? a-list) empty]
        [else 
          (cond [(> (first a-list) value)
                    (cons (first a-list) 
                    (above (rest a-list) value))]
                [else (above (rest a-list) value)]
          )]))

; Beispiel einer Liste
(define my-list (list 3 5 14 6 4 23 6 77 31 30 2))

; Demos für den Listen Filter
;(below my-list 22)
;(above my-list 22)
