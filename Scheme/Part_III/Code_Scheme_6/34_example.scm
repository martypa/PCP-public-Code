; Im GIMP und im Menu registrieren
(script-fu-register 
  "script-fu-example"	; Funktionsname
  "Meldung ausgeben"	; Menu Punkt
  "Illustriert den Aufbau eines GIMP-Skripts"	; Beschreibung
  "Roger Diehl"		; Autor
  "2017, HSLU - T&A"	; Copyright Notiz
  "Oktober 2017"	; Erstellungsdatum
  ""			; Bild Typ des Skript
  SF-STRING "Eingabe" "Hallo!") ; String Variable im Skript

(script-fu-menu-register "script-fu-example"
  "<Image>/File/Create/Message")

; Message Box anzeigen
(define (script-fu-example parameter)
  (gimp-message parameter)
)
