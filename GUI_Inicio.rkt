#lang racket ;Carlos Chapid - Edinson Hidalgo - Rene Jalvin
(require racket/gui/base)
(require "./views/GUI_RegistroMenor.rkt")
(require "./views/GUI_ConsultaMenor.rtk")
(require "./views/GUI_VerReportes.rkt")

(require "./controllers/GestionMenor.rtk")
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
                          (label "Consultar Citas")
                          (callback (lambda (button event)
                                    (lanzar-consulta-menor (send txtRegistroCivil get-value))))))

(define btnVerReportes(new button%
                        (parent panel-principal)
                        (min-width 150)
                        (label "Ver Reportes")
                        (callback (lambda (button event)
                                    (lanzar-Reportes(send txtRegistroCivil get-value))))))
(define btnCerrar(new button%
                        (parent panel-principal)
                        (vert-margin 20)
                        (min-width 150)
                        (label "CERRAR")
                        (callback (lambda (button event)
                                    (send application-frame show #f)) )))
  

(define (lanzar-registo regCivil)
  (if (existe-registro regCivil)
    (send msgRes set-label "Ya existe el regristro civil ingresado")
    (mostrarRegistrarMenor regCivil)
    )
 )

(define (lanzar-consulta-menor regCivil)
 (if (existe-registro regCivil)
    (mostrarConsultarMenor regCivil)
    (send msgRes set-label "No existe el regristro civil ingresado")
    )
 )

(define (lanzar-Reportes regCivil)
 (if (existe-registro regCivil)
    (verReportes regCivil)
    (send msgRes set-label "No existe el regristro civil ingresado")
    )
 )
 
  
  
 
; Mostramos el frameprincipal
(send application-frame show #t)