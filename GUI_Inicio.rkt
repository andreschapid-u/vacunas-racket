#lang racket
(require racket/gui/base)
(require "./views/GUI_RegistroMenor.rkt")
;Definimos el frame principal, inicio
(define application-frame
  (new frame%
    (label "VACUNAS - RACKET")
    (width 400)
    (height 300)
    (min-width 400)
    (min-height 300)
    (stretchable-width #f)
    (stretchable-height #f)
    (x 200)
    (y 200)
    (alignment (list 'left 'center))))

;Agregamos un panel al frame
(define panel-principal (new vertical-panel%
                    (alignment '(center center))
                    (parent application-frame)))
                

(define txtRegistroCivil (new text-field% 
                          (parent panel-principal)
                          (vert-margin 10)
                          (horiz-margin 50)
                          (min-height 10)
                          (min-width 150)
                          (label "Registro Civil")))
                          
(define msgRes (new message% [parent panel-principal][label ""][min-height 1][min-width 400]))

(define btnRegistrarMenor(new button%
                          (parent panel-principal)
                          (min-width 150)
                          (label "Registrar Menor")
                          (callback (lambda (button event)
                                    (lanzar-registo (send txtRegistroCivil get-value))))))
(define btnConsultarCitas(new button%
                          (parent panel-principal)
                          (min-width 150)
                          (label "Consultar Citas")))
(define btnCitas(new button%
                        (parent panel-principal)
                        (min-width 150)
                        (label "Registrar Vacuna")))
(define btnVerReportes(new button%
                        (parent panel-principal)
                        (min-width 150)
                        (label "Ver Reportes")))
  

(define (lanzar-registo regCivil)
 (mostrarRegistrarMenor regCivil))
 
; Mostramos el frameprincipal
(send application-frame show #t)