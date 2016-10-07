;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Kino) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Profit eines Kinos
(define (profit price)
  (-(revenue price) (cost price)))

(define (revenue price)
  (* (attendees price) price))

(define (attendees price)
  (+ 120 (* 15 (/ (- 8.00 price) 0.50))))

(define (cost price)
  (+ 250 (* 0.75 (attendees price))))
