#lang racket
;Estas funciones permiten sacar la fecha (dia-mes-anio) actual
;(let ((date (seconds->date (current-seconds))))
;  (display (date-day date)))

;(date-day(seconds->date (current-seconds)))

(provide obtener-calendario)


(define (obt-dia) (date-day(seconds->date (current-seconds))))
(define (obt-mes) (date-month(seconds->date (current-seconds))))
(define (obt-anio) (date-year(seconds->date (current-seconds))))

;(obt-dia)(obt-mes)(obt-anio)

;Esta funciion permite calcular la edad actual del paciente
(define (calc-edad mesNac anioNac)
  (if(> mesNac (obt-mes))
     (- (- (obt-anio) anioNac) 1)
     (- (obt-anio) anioNac)))
 

;(calc-edad 2 2010)(calc-edad 8 2010)

;calcula la fecha segun la etapa que se presente en los parametros
(define (calc-fecha2 dia mes anio lista aumento X)
  (if(> (+ mes aumento) 12)
     (calc-calendario2 (cons dia (cons (- (+ mes aumento) 12) (cons (+ anio 1) '()))) (cons (cons dia (cons (- (+ mes aumento) 12) (cons (+ anio 1) '()))) lista) (+ X 1))
     (calc-calendario2 (cons dia (cons (+ mes aumento) (cons anio '()))) (cons (cons dia (cons (+ mes aumento) (cons anio '()))) lista) (+ X 1))))
     

(define (calc-fecha dia mes anio lista aumento X)
  (if(= aumento 42)
     (calc-fecha2 dia mes (+ anio 3) lista 6 X)
     (calc-fecha2 dia mes anio lista aumento X)))
     

;(calc-fecha 11 '(2018) '() 3)

;calcula todas las fechas una a una gracias a el metodo de recursividad y retorna la lista de listas con la fecha
(define (calc-calendario2 fecha lista X)
  (cond
    ((= X 1) (calc-fecha (car fecha) (car (cdr fecha)) (car (cdr (cdr fecha))) lista 2 X))
    ((= X 2) (calc-fecha (car fecha) (car (cdr fecha)) (car (cdr (cdr fecha))) lista 2 X))
    ((= X 3) (calc-fecha (car fecha) (car (cdr fecha)) (car (cdr (cdr fecha))) lista 2 X))
    ((= X 4) (calc-fecha (car fecha) (car (cdr fecha)) (car (cdr (cdr fecha))) lista 1 X))
    ((= X 5) (calc-fecha (car fecha) (car (cdr fecha)) (car (cdr (cdr fecha))) lista 5 X))
    ((= X 6) (calc-fecha (car fecha) (car (cdr fecha)) (car (cdr (cdr fecha))) lista 6 X))
    ((= X 7) (calc-fecha (car fecha) (car (cdr fecha)) (car (cdr (cdr fecha))) lista 42 X))
    ((= X 8) lista)
    ((= X 9) (calc-fecha (car fecha) (car (cdr fecha)) (car (cdr (cdr fecha))) lista 1 X))
    ((= X 10) (calc-fecha (car fecha) (car (cdr fecha)) (car (cdr (cdr fecha))) lista 1 X))
    ((= X 11) lista)))
    

;(calc-calendario2 '(5 10 2018) '() 1)

(define (calc-calendario mesN anioN)
  (if(> (calc-edad mesN anioN) 0.9)
     (calc-calendario2 (cons (obt-dia) (cons (obt-mes) (cons (obt-anio) '()))) (cons (cons (obt-dia) (cons (obt-mes) (cons (obt-anio) '()))) '()) 9)
     (calc-calendario2 (cons (obt-dia) (cons (obt-mes) (cons (obt-anio) '()))) (cons (cons (obt-dia) (cons (obt-mes) (cons (obt-anio) '()))) '()) 1)))
  

; (define (obtener-calendario mes anio)(reverse (calc-calendario mes anio)))
(define (obtener-calendario fecha)
 (map (lambda (x) (string-join (map ~a (reverse x)) "-"))  
  (obtener-calendario-fecha fecha)))

(define (obtener-calendario-fecha fecha)
 (reverse (calc-calendario (obtener-mes fecha) (obtener-anio fecha))))

(define (obtener-anio fecha)
 (string->number (list-ref (string-split fecha "-") 0)))
(define (obtener-mes fecha)
 (string->number (list-ref (string-split fecha "-") 1)))


;; slightly harder
; (string-join (map ~a '(2018 06 13)) "-")
; (string-join (map ~a '(2018 06 13)) "-")
; (~a  "2018" "6" "12")
; (obtener-calendario "2016-02-20")
