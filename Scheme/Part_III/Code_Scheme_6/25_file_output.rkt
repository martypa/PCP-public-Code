#lang racket

; Port öffnen, um in die Datei zu schreiben
(define out (open-output-file "output.txt"))
; Datei-Schreiben - der Parameter ist eine Liste
(define (write-file a-list)
  (cond ((null? a-list) (newline out))
        (else (begin (write (first a-list) out)
                     (write-char #\space out)
                     (write-file (rest a-list))))))

; Demo
(port? out)
(input-port? out)
(output-port? out)

(write-file '(hslu dept.I pcp))
(flush-output out)
(close-output-port out)
