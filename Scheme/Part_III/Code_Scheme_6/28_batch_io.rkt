;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 28_batch_io) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Demo Teachpack batch-io
(read-file "data.txt")
(read-lines "data.txt")
(read-words "data.txt")
(write-file "output.txt" "Hello John...\nHello World...")
