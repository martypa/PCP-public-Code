;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 14_gum_automat_set) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Anfangszustand des K-Automaten
(define state '0Rp)

; Zustandswechsel: state input -> Nächster Zustand
(define (state-change input)
  (cond
    [(equal? state '0Rp)
     (cond
       [(equal? input 10) (set! state '10Rp)]
       [else (set! state '20Rp)])]
    [(equal? state '10Rp)
     (cond
       [(equal? input 10) (set! state '20Rp)]
       [else (set! state '30Rp)])]
    [(equal? state '20Rp)
     (cond
       [(equal? input 10) (set! state '30Rp)]
       [else (set! state '20Rp)])]
    [else
     (begin
       (set! state '0Rp)
       (state-change input))]
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

; Simulation des Kaugummi-Automaten mit einem Endlos-Programm
(define (gum-automat)
  (begin
    (local ((define s (read)))
      (begin
        (display (output state s))
        (state-change s)
        (newline)))
    (gum-automat)
    ))

; Demo
(gum-automat)
