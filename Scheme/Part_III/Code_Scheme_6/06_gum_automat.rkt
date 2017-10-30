;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 06_gum_automat) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Anfangszustand des K-Automaten
(define state '0Rp)

; Zustandswechsel: state input -> Nächster Zustand
(define (state-change state input)
  (cond
    [(equal? state '0Rp)
     (cond
       [(equal? input 10) '10Rp]
       [else '20Rp])]
    [(equal? state '10Rp)
     (cond
       [(equal? input 10) '20Rp]
       [else '30Rp])]
    [(equal? state '20Rp)
     (cond
       [(equal? input 10) '30Rp]
       [else '20Rp])]
    ))

; Ausgabe: state input -> Ausgabe des Automaten
(define (output state input)
  (cond 
    [(equal? state '10Rp)
     (cond
       [(equal? input 10) "nichts"]
       [else "Kaugummi"])]
    [(equal? state '20Rp)
     (cond
       [(equal? input 10) "Kaugummi"]
       [else "Münzauswurf"])]
    [else "nichts"]
    ))

; Simulation des Kaugummi-Automaten mit Liste von Münzen
(define (gum-automat state list-input)
  (cond 
    [(empty? list-input) "nichts eingeworfen"]
    [(empty? (rest list-input)) 
     (output state (first list-input))]
    [else
     (gum-automat 
      (state-change state (first list-input)) (rest list-input))]))

; Demo state-change
;(state-change state 10)

; Demo output
;(output state '10Rp)

; Demos automat
;(gum-automat '0Rp (list 10 10 10))
;(gum-automat '0Rp (list 20 10))
;(gum-automat '0Rp (list))
;(gum-automat '0Rp empty)
;(gum-automat '0Rp (list 20 20))
;(gum-automat '0Rp (list 10 10))
;(gum-automat '0Rp (list 20 10 10))
