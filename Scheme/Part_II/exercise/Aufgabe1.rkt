;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Aufgabe1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Vorgabe Aufgabe 1, Programmierübung zu Scheme 3+4
(define couple (list (cons "Adam" (cons "Eva" empty)) 
                    (cons "Paul" (cons "Paula" empty))))
(define spec-list (list 1 (list 2 3 (list 5 7) 9)))
