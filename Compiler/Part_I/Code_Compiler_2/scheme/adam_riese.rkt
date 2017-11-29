;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname adam_riese) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; 1. Eine Zahl ist ein arithmetischer Ausdruck.
; 2. Sind x, y arithmetische Ausdrücke, dann sind auch (x), x + y und x * y arithmetische Ausdrücke.
; 3. Arithmetische Ausdrücke sind nur solche, die aufgrund von 1. und 2. entstehen.
(define (statement expr)
  (cond
    ((number? expr) expr) ; Zahl
    (else (parse expr))   ; Ausdruck
    ))

; Arithmetischer Ausdruck untersuchen
(define (parse expr)
  (let ((operator (second expr))         ; Operator
        (arg1 (statement (first expr)))  ; linker Operand
        (arg2 (statement (third expr)))) ; rechter Operand
    (cond
      ((eqv? operator '+) (+ arg1 arg2))  ; x + y arithmetischer Ausdruck
      ((eqv? operator '*) (* arg1 arg2))  ; x * y arithmetischer Ausdruck
      (else (error "Invalid operation in expr:" expr)))
    ))

; Demo
(statement '((1 + 2) * 3))
