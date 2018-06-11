#lang racket
(require racket/gui/base)
(require "../controllers/ConsutarMenor.rkt")

(provide verReportes)
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

; (define tabla-vacunas (new list-box%
;                        (parent registro-vacunacion-frame)
;                        (label "Registro de vacunación")
;                        [choices (list)]
;                        [style (list 'extended 'column-headers 'vertical-label)]
;                        (columns (list "Etapa" "Vacunas"))))  
(define tabla-citas (new list-box%
                     (parent registro-vacunacion-frame)
                     (label "CITAS")
                     (min-width 150)
                     (min-height 270)
                     (stretchable-width #t)
                     [choices (list)]
                     [style (list 'extended 'column-headers 'vertical-label)]
                     (columns (list "fecha Vacunacion" "Fecha Real Vacunacion" "Discrepancias"))))

(define botonRegistrar (new button%
                         (parent registro-vacunacion-frame)
                         (enabled #t)
                         (label "REGISTRAR")
                         (callback (lambda (button event)
                                     (void)))))

(define botonCerrar (new button%
                         (parent registro-vacunacion-frame)
                         (enabled #t)
                         (label "CERRAR")
                         (callback (lambda (button event)
                                     (send registro-vacunacion-frame show #f)))))                                   


; (send tabla-vacunas set-string 1 "Dato 1" 1)
(define (verReportes regCivil)
  (begin
    (send tabla-citas set (listarTodasFechas regCivil) (listarTodasFechasReales regCivil) (listarTodasFechasReales regCivil))
    (send registro-vacunacion-frame show #t)
  )
)

