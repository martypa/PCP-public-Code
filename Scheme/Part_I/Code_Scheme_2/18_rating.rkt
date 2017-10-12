;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 18_rating) (read-case-sensitive #f) (teachpacks ()) (htdp-settings #(#f constructor repeating-decimal #f #t none #t () #f)))
(define (grade score)
  (cond
    ((not (number? score)) "Zahl eingeben!")
    ((not (integer? score)) "Ganze Zahl 0 <= x <= 15 eingeben!")
    ((<= 13 score 15) "ausgezeichnet")
    ((<= 10 score 12) "sehr gut")
    ((<= 7 score 9) "gut")
    ((<= 4 score 6) "ausreichend")
    ((<= 1 score 3) "nicht erfüllt: Nachbesserung")
    ((= 0 score) "nicht erfüllt")
    (else "Ganze Zahl 0 <= x <= 15 eingeben!")
    ))