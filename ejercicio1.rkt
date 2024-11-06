#lang racket
(define Max 60)
(define Min 5)
; todas las funciones que llamemos deben ir entre parentesis
(define (Cuadrado x)
  (* x x)
)

(define (suma x y)
  (+ x y)
)

(define (Menor10 x)
  (if (< x 10)
      (display "Menor que 10")
      (display "Mayor o igual que 10")
   )
)

; no te olvides hacer correr el programa :v

; para leer datos se usa "read"
(define (Ejemplo n)
  (read n)
  (display n)
)

(define (Leer)
  (begin
    (display "Introduzca un numero")
    (read)
   )
)

; sumar 3 al numero introducido por teclado
(define (Suma3 n)
  (+ n 3)
)

; construir la funcion Circunferencia cuya formula es 2*Pi*Radio, dato de entrada Radio
(define (Circunferencia r)
  (* r 2 3.14)
)