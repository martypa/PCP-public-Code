;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 13_counter) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Initialwert des counter
(define counter-value 0)
; Erhöhung des counter
(define (increment-counter)
  (set! counter-value (+ 1 counter-value)))

; Beispiel aus den Unterlagen
counter-value
(increment-counter)
counter-value
