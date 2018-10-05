;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 37_cinema) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Profit eines Kinos
; Hauptfunktion: Profit berechnen
(define (profit price)
  (-(revenue price) (cost price)))

; Hilfsfunktion: Erlös mit festgelegtem Preis
(define (revenue price)
  (* (attendees price) price))

; Hilfsfunktion: Anzahl Besucher bei festgelegtem Preis
(define (attendees price)
  (+ 120 (* 15 (/ (- 8.00 price) 0.50))))

; Hilfsfunktion: fixe und variable Kosten bei festgelegtem Preis
(define (cost price)
  (+ 250 (* 0.75 (attendees price))))