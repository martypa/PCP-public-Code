;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname triangle) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Dreieck mit Punkt A, B, C
; Eckpunkte A, B und C sind vom Typ posn
(define-struct triangle (A B C))

; konkretes Objekt von Dreieck
(define my-triangle 
  (make-triangle 
   (make-posn 60 240) 
   (make-posn 270 210) 
   (make-posn 180 60)))

; Dreieck – Seitenhalbierende für Seite A
(define (mp-a a-triangle)
  (make-posn
   (/ (+ (posn-x (triangle-B a-triangle)) (posn-x (triangle-C a-triangle))) 2)
   (/ (+ (posn-y (triangle-B a-triangle)) (posn-y (triangle-C a-triangle))) 2)
   ))

; Dreieck – Schwerpunkt der Seite A
(define (triangular-focus a-triangle)
  (make-posn
   (+ (posn-x (triangle-A a-triangle))
      (* 2 (/ (- (posn-x (mp-a a-triangle))
                 (posn-x (triangle-A a-triangle))) 3)))
   (+ (posn-y (triangle-A a-triangle))
      (* 2 (/ (- (posn-y (mp-a a-triangle))
                 (posn-y (triangle-A a-triangle))) 3)))
   ))

; Aufruf der Seitenhalbierende Funktion
(mp-a my-triangle)

; Aufruf der Schwerpunkt Funktion
(triangular-focus my-triangle)

