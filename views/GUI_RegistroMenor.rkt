#lang racket
(require racket/gui/base)

(provide registro-menor-frame)
(require "../controllers/GestionMenor.rtk")
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
(define txtRegistroCivil (new text-field%
                              (parent grupoMenor)
                              (horiz-margin 50)
                              (min-height 10)
                              (min-width 150)
                              (label "Registro Civil")))
                              
(define txtNombresApellidos (new text-field%
                              (parent grupoMenor)
                              (horiz-margin 50)
                              (min-height 10)
                              (min-width 150)
                              (label "Nombres y Apellidos")))
                              
(define txtFechaNacimiento (new text-field%
                              (parent grupoMenor)
                              (horiz-margin 50)
                              (min-height 10)
                              (min-width 150)
                              (label "Fecha Nacimiento")))
                              
(define comboGenero (new combo-field%
                         (choices '("M" "F"))
                         (label "Género")
                         (init-value "")   
                         (horiz-margin 50)
                         (min-height 10)(min-width 150)
                         (parent grupoMenor)))
                         

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
                               (label "Telefono Contacto")))
(define txtDireccionContacto (new text-field%
                               (parent grupoContacto)
                               (horiz-margin 50)
                               (min-height 10)
                               (min-width 150)
                               (label "Dirección Contacto")))
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
                                    (send msgRes set-label (
                                                            obtieneDatosMenor 
                                                            (send txtRegistroCivil get-value)
                                                            (send txtNombresApellidos get-value)
                                                            (send txtFechaNacimiento get-value)
                                                            (send comboGenero get-value)
                                                            (send txtNombreContacto get-value)
                                                            (send txtTelefonoContacto get-value)
                                                            (send txtDireccionContacto get-value)))))))
                        

(define btnLimpiarCampos(new button%
                         (parent panelBotones)
                         (enabled #t)
                         (label "LIMPIAR CAMPOS")
                         (callback (lambda (button event)
                                     (limpiarCampos txtRegistroCivil
                                      txtNombresApellidos
                                      txtFechaNacimiento
                                      comboGenero
                                      txtNombreContacto
                                      txtTelefonoContacto
                                      txtDireccionContacto)))))
                        

(define (limpiarCampos
         txtRegistroCivil
         txtNombresApellidos
         txtFechaNacimiento
         comboGenero
         txtNombreContacto
         txtTelefonoContacto
         txtDireccionContacto)
        (cond
           ((not (eqv? txtRegistroCivil "")) (send txtRegistroCivil set-value ""))
           ((not (eqv? txtNombresApellidos "")) (send txtNombresApellidos set-value ""))
           ((not (eqv? txtFechaNacimiento "")) (send txtFechaNacimiento set-value ""))
           ((not (eqv? txtNombreContacto "")) (send txtNombreContacto set-value ""))
           ((not (eqv? txtTelefonoContacto "")) (send txtTelefonoContacto set-value ""))
           ((not (eqv? txtDireccionContacto "")) (send txtDireccionContacto set-value ""))
           ((not (eqv? comboGenero "")) (send comboGenero set-value ""))))
            

(send registro-menor-frame show #t)