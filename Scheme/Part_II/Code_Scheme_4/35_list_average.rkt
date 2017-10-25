;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname list_average) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Berechnung des Durchschnitts aller Werte einer Liste
(define (average a-list)
  (if (empty? a-list)
      "no average"
      (/ (apply + a-list) (length a-list))))

; Beispiele für Berechnung des Durchschnitts
(define my-list (list 3 5 -6 -23 37 2))
(average my-list)
(average '())
(average (map abs my-list))
