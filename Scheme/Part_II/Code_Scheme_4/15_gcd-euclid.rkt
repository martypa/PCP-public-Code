;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname gcd-euclid) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Der Euklidische Algorithmus, direkte Implementation
(define (gcd-euclid n m)
  (cond
    [(zero? m) n]
    [else (gcd-euclid m (remainder n m))]
))

; Demo
(gcd-euclid 101135853 450146400)
