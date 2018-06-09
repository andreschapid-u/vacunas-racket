#lang racket
(require racket/gui/base)
(require "../Conexion.rtk")
(require db)
(require racket/date)

(provide listarTodasFechas)
(provide listarTodasEtapas)
; (provide listarMenor)


(define (listarTodasFechas regCivil) (query-list conn listarTodasFechasQuery regCivil))
(define (listarTodasEtapas regCivil)(query-list conn listarTodasEtapasQuery regCivil))
; (define getComunasSQL (query-list conn "SELECT com_nombre FROM COMUNAS"))
; (define getFrutasSQL (query-list conn "SELECT fru_nombre FROM FRUTAS"))
; (define getNutrientesSQL (query-list conn "SELECT nut_nombre FROM NUTRIENTES"))

(define listarTodasFechasQuery (prepare conn "SELECT DATE_FORMAT(pacienteetapa.FECHA, '%Y-%m-%d') from pacienteetapa inner join etapa ON pacienteetapa.IDETAPA = etapa.IDETAPA WHERE pacienteetapa.IDREGISTROCIVIL = ? ORDER BY etapa.IDETAPA"))

; FORMAT(VALUE,'yyyy-MM-dd')

(define listarTodasEtapasQuery (prepare conn "SELECT etapa.NOMBRE from pacienteetapa inner join etapa ON pacienteetapa.IDETAPA = etapa.IDETAPA WHERE pacienteetapa.IDREGISTROCIVIL = ?  ORDER BY etapa.IDETAPA"))

; (listarTodasEtapas 123)
(listarTodasFechas 123)

; (filter-map (lambda (x)  (date->string x) (listarTodasFechas 123)))

; MOSTRAR LAS FECHAS DE PACIENTEETAPA ORDENADA POR ID_ETAPA
; SELECT pacienteetapa.FECHA from pacienteetapa inner join etapa ON pacienteetapa.IDETAPA = etapa.IDETAPA WHERE pacienteetapa.IDREGISTROCIVIL = 123 ORDER BY etapa.IDETAPA

; MOSTRAR LOS NOMBRES DE LA ETAPA ORDENADO POR ID_ETAPA
; SELECT etapa.NOMBRE from pacienteetapa inner join etapa ON pacienteetapa.IDETAPA = etapa.IDETAPA WHERE pacienteetapa.IDREGISTROCIVIL = 123 ORDER BY etapa.IDETAPA

; Muestra l
; SELECT pacienteetapa.FECHA from pacienteetapa inner join etapa ON pacienteetapa.IDETAPA = etapa.IDETAPA WHERE pacienteetapa.IDREGISTROCIVIL = 123 AND pacienteetapa.ESTADO != 'no aplicada' ORDER BY etapa.IDETAPA
