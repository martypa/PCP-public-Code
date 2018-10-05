;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 06_and) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Beispiel Verknüpfung AND
(and (= 23.3 23.3) (< 5 7))

;(and true (+ 3 5))

(define x 0)
;(and (not (= x 0)) (< (/ 1 x) 1))
;(and (< (/ 1 x) 1) (not (= x 0)))