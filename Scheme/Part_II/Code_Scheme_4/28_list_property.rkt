;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname list_property) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Eine Liste wird untersucht, ob deren Elemente
; einer bestimmten Eigenschaft entsprechen
(define (filter-prop has-prop a-list)
  (cond
    [(empty? a-list) empty]
    [else
     (cond
       [(has-prop (first a-list))
        (cons (first a-list)
              (filter-prop has-prop (rest a-list)))]
       [else
        (filter-prop has-prop (rest a-list))])]))

; Die Funktion prüft, ob eine Zahl eine Quadratzahl ist
; Als Resultat wird ein boolescher Wert zurückgegeben
(define (squarenum? value)
  (integer? (sqrt value)))

; Beispiel einer Zahlen Liste
(define my-list (list 3 5 16 -6 4 -23 9 77 -31 2))

; Demos
(filter-prop even? my-list)
(filter-prop odd? my-list)
(filter-prop zero? my-list)
(filter-prop positive? my-list)
(filter-prop negative? my-list)
(filter-prop integer? my-list)