#lang racket
; Port öffnen, um  aus der Datei zu lesen
(define in (open-input-file "data.txt"))
; Datei-Lesen - der Parameter ist eine Liste
(define (read-file a-list)
  (let ((data (read in)))
    (cond ((eof-object? data) a-list)
          (else (read-file (cons data a-list))))))

; Demo
(port? in)
(input-port? in)
(read-file '())
(read-file '())
(close-input-port in)