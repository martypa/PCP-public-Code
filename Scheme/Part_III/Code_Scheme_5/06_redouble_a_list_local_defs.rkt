;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname 06_redouble_a_list_local_defs) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Listen-Elemente (Zahlen) verdoppeln mit lokal definierten Funktionen
(define (redouble a-list)
  (local (
          (define (f x) (* x 2))
          (define (g a-numlist)
            (cond
              [(empty? a-numlist) empty]
              [else
               (cons
                (f (first a-numlist))
                (g (rest a-numlist)))])))
    (g a-list)))

; Demo
(redouble (list 3 2 1))