#lang racket
(require racket/gui/base)

(define registro-vacunacion-frame
  (new frame%
    (label "Registro de Vacunacion - VACUNAS RACKET")
    (width 600)
    (height 400)))

(define txtFechaNaciminto (new text-field%
                             (parent registro-vacunacion-frame)
                             (vert-margin 10)
                             (horiz-margin 50)
                             (min-height 10)
                             (min-width 150)
                             (label "Fecha nacimiento")))

(define tabla-vacunas (new list-box%
                       (parent registro-vacunacion-frame)
                       (label "Registro de vacunación")
                       [choices (list)]
                       [style (list 'extended 'column-headers 'vertical-label)]
                       (columns (list "Etapa" "Vacunas"))))                             

(send tabla-vacunas append "Dato 1")

; (send tabla-vacunas set-string 1 "Dato 1" 1)

(send registro-vacunacion-frame show #t)
