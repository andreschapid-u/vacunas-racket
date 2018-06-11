#lang racket ;Carlos Chapid - Edinson Hidalgo - Rene Jalvin
(require racket/gui/base)

(provide mostrarRegistrarMenor)
(require "../controllers/GestionMenor.rtk")
(require "../utilidades/CalcularCalendarioDeCitas.rkt")
;(require "GestionarGalerias.rkt")
;(require "Recomendaciones.rkt")

(define registro-menor-frame
  (new frame%
    (label "Registro menor - VACUNAS RACKET")
    (width 600)
    (height 400)))

;Definicion de grupos
(define grupoMenor(new group-box-panel%   
                   (label "Datos del menor")
                   (vert-margin 5)
                   (horiz-margin 50)
                   (parent registro-menor-frame)))
                
(define grupoContacto(new group-box-panel%   
                      (label "Datos del contacto")
                      (vert-margin 5)
                      (horiz-margin 50)
                      (parent registro-menor-frame)))
                
;Campos del menor
(define txtRegistroCivil2 (new text-field%
                              (parent grupoMenor)
                              (horiz-margin 50)
                              (min-height 10)
                              (min-width 150)
                              (label "Registro Civil\t\t\t")))
                              
(define txtNombresApellidos (new text-field%
                              (parent grupoMenor)
                              (horiz-margin 50)
                              (min-height 10)
                              (min-width 150)
                              (label "Nombres y Apellidos\t")))
                              
(define txtFechaNacimiento (new text-field%
                              (parent grupoMenor)
                              (horiz-margin 50)
                              (min-height 10)
                              (min-width 150)
                              (label "Fecha Nacimiento\t")))

(define radioGenero (new radio-box%
                      (parent grupoMenor)
                      (horiz-margin 50)
                      (min-height 10)
                      (min-width 150)
                      (label "Género\t\t\t\t\t\t\t\t\t")
                      (choices '("Masculino" "Femenino"))
                      (style '(horizontal))))                             
                              
; (define comboGenero (new combo-field%
;                          (choices '("M" "F"))
;                          (label "Género")
;                          (init-value "")   
;                          (horiz-margin 50)
;                          (min-height 10)(min-width 150)
;                          (parent grupoMenor)))
                         

;Campos del Contato
(define txtNombreContacto (new text-field%
                               (parent grupoContacto)
                               (horiz-margin 50)
                               (min-height 10)
                               (min-width 150)
                               (label "Nombre (Padre/Madre)")))
(define txtTelefonoContacto (new text-field%
                               (parent grupoContacto)
                               (horiz-margin 50)
                               (min-height 10)
                               (min-width 150)
                               (label "Telefono Contacto\t")))
(define txtDireccionContacto (new text-field%
                               (parent grupoContacto)
                               (horiz-margin 50)
                               (min-height 10)
                               (min-width 150)
                               (label "Dirección Contacto\t")))
;Mensaje
(define msgRes (new message% (parent registro-menor-frame)(label "")(min-height 1)(min-width 400)))

(define panelBotones (new horizontal-panel%
                      (alignment '(center top))
                      (parent registro-menor-frame)))

;TODO 1: AGREGAR MENSAJES DE GUARDADO

(define btnGuardar (new button%
                        (parent panelBotones)
                        (enabled #t)
                        (label "REGISTRAR")
                        (callback (lambda (button event)
                                    (begin 
                                      (send msgRes set-label (
                                                            obtieneDatosMenor 
                                                            (send txtRegistroCivil2 get-value)
                                                            (send txtNombresApellidos get-value)
                                                            (send txtFechaNacimiento get-value)
                                                            (send radioGenero get-item-label (send radioGenero get-selection))
                                                            (send txtNombreContacto get-value)
                                                            (send txtTelefonoContacto get-value)
                                                            (send txtDireccionContacto get-value)))
                                      (limpiarCampos)
                                                            )))))
                        

; (define btnLimpiarCampos(new button%
;                          (parent panelBotones)
;                          (enabled #t)
;                          (label "LIMPIAR CAMPOS")
;                          (callback (lambda (button event)
;                                      (limpiarCampos txtRegistroCivil2
;                                       txtNombresApellidos
;                                       txtFechaNacimiento
;                                       txtNombreContacto
;                                       txtTelefonoContacto
;                                       txtDireccionContacto)))))
(define btnLimpiarCampos(new button%
                         (parent panelBotones)
                         (enabled #t)
                         (label "LIMPIAR CAMPOS")
                         (callback (lambda (button event)
                                     (limpiarCampos )))))
                        

(define (limpiarCampos)
        (begin
           (if (not (eqv? txtRegistroCivil2 "")) (send txtRegistroCivil2 set-value "") (void))
           (if (not (eqv? txtNombresApellidos "")) (send txtNombresApellidos set-value "") #f)
           (if (not (eqv? txtFechaNacimiento "")) (send txtFechaNacimiento set-value "") #f)
           (if (not (eqv? txtNombreContacto "")) (send txtNombreContacto set-value "") #f)
           (if (not (eqv? txtTelefonoContacto "")) (send txtTelefonoContacto set-value "") #f)
           (if (not (eqv? txtDireccionContacto "")) (send txtDireccionContacto set-value "") #f)))
            
(define (mostrarRegistrarMenor regCivil)
 ( if (send txtRegistroCivil2 set-value regCivil) (send registro-menor-frame show #t) #f))
  
; (mostrarRegistrarMenor "123")
; (obtener-calendario "2018-06-20")
