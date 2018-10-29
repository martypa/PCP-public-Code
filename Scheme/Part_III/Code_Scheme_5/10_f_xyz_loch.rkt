;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 10_f_xyz_loch) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Scope einer Namensbindung
; Funktion f mit lokaler Funktion plus-y-sqr,
; die ihrerseit die lokaler Funktion square definiert
(define (f x y z)
  (local (
          (define (plus-y-sqr x)
            (local (
                    (define (square x) (* x x)))
              (square (+ x y)))))
    (+ (plus-y-sqr x) (plus-y-sqr z))))

; Demo
(f 2 3 4)