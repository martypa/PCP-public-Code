;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 35_list_average) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Einsatz von Funktionen höherer Ordnung
; Berechnung des Durchschnitts aller Werte einer Liste
(define (average a-list)
  (cond
    [(empty? a-list) "no average"]
    [else (/ (apply + a-list) (length a-list))]))

; Beispiele für Berechnung des Durchschnitts
(define my-list (list 3 5 -6 -23 37 2))
(average my-list)
(average '())
(average (map abs my-list))
