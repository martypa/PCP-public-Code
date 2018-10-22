;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname 24_sum_a_list) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Summieren von Zahlen einer Liste
(define (sum a-list)
  (cond ((empty? a-list) 0)
        (else
         (+ (first a-list) (sum (rest a-list))))))

; Demo
(sum (list 3 2 1))