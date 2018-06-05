#lang racket
(require racket/gui/base)

;Definimos el frame principal, inicio
(define application-frame
  (new frame%
    [label "VACUNAS - RACKET"]
    [width 400]
    [height 300]
    [alignment '(center top)]))

;Agregamos un panel al frame
(define panel1 (new vertical-panel%
                    [alignment '(center center)]
                    [parent application-frame]))

(define txtRegistroCivil (new text-field% [parent panel1](vert-margin 10)(horiz-margin 50)[min-height 10][min-width 150][label "Registro Civil"]))
(define msgRes (new message% [parent panel1][label ""][min-height 1][min-width 400]))

(define btnRegistrarMenor(new button%
                        [parent panel1]
                        [min-width 150]
                        [label "Registrar Menor"]))
(define btnConsultarCitas(new button%
                        [parent panel1]
                        [min-width 150]
                        [label "Consultar Citas"]))
(define btnCitas(new button%
                        [parent panel1]
                        [min-width 150]
                        [label "Registrar Vacuna"]))
(define btnVerReportes(new button%
                        [parent panel1]
                        [min-width 150]
                        [label "Ver Reportes"]))
  

; Mostramos el frameprincipal
(send application-frame show #t)