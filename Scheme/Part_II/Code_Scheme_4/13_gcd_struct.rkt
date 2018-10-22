;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname 13_gcd_struct) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Der Euklidische Algorithmus auf Basis struktureller Rekursion
(define (gcd-struct n m)
  (first-divisor m n (min m n)))

; liefert die erste Zahl, die g und h ganzzahlig teilt 
(define (first-divisor g h i)
  (cond
    [(= i 1) 1]
    [(and (= (remainder g i) 0)
          (= (remainder h i) 0)) i]
    [else (first-divisor g h (- i 1))]
  )
)

; Demo
(gcd-struct 6 25)
(gcd-struct 18 24)
;(gcd-struct 101135853 450146400)

; Demo mit Zeitmessung
;(time (gcd-struct 101135853 450146400))