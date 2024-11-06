#lang racket
; Ejercicio 1: Dado un numero natural entre 1 -7, imprimir los números de la semana según el
; numero: 1=Lunes,.. . . . ., 7=Domingo.
(define (leer)
  (begin
    (display "Ingrese un numero")
    (read)
   )
)

(define (dia n)
  (cond
    [(= n 1)(display "Lunes")]
    [(= n 2)(display "Martes")]
    [(= n 3)(display "Miercoles")]
    [(= n 4)(display "Jueves")]
    [(= n 5)(display "Viernes")]
    [(= n 6)(display "Sabado")]
    [(= n 7)(display "Domingo")]
    (else (display "Numero no valido"))
   ) ; fin cond
)

; Ejercicio 2: Realizar un programa recursivo para dividir dos números, con restas sucesivas
(define (dividir a b)
  (cond
    [(< a b) 0]
    (else (+ 1 (dividir (- a b) b)))
  )
)

; Ejercicio 3: Generar los números los números naturales hasta n.
(define (naturales n)
  (if (= n 0)
      (display "")  ; No mostrar nada si n es 0
      (begin
        (display n)  ; Mostrar el número actual
        (display " ") ; Agregar un espacio para mejor visualización
        (naturales (- n 1))))) ; Llamada recursiva para n-1

; Generar la sumatoria: E(^n)(_i=a)i (Sumatoria de 'i' desde 'a' hasta 'n')
(define (sumatoria a n)
  (cond
    [(> a n) 0]
    (else (+ a (sumatoria (+ a 1) n)))
  )
)

; generar la sumatoria de 1/(i^2+1) desde a hasta n
(define (sumatoria2 a n)
  (cond
    [(> a n) 0]
    (else (+ (/ 1 (+ (* a a) 1))(sumatoria2 (+ a 1) n)))
   )
)