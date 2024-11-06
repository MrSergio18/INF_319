#lang racket
; Dado un vector con diferentes valores imprimir dichos valores leyéndalos uno por uno de manera
; recursiva
; Análisis:
; Debemos definir un vector en una función y llenar éste con determinado número de datos. Luego.
; usando otra función debemos leer la primera posición del vector (el número que indique esta
; posición debe ser un argumento en la función) y mostrarla por pantalla. En el llamado recursivo
; debemos aumentar en uno la posición a leer del vector hasta haber leido y visualizado todas las
; posiciones del vector, pero antes se debe conocer el número de posiciones en el vector; de otra
; forma no podriamos finalizar correctamente la recursión (este número también debe ser un
; argumento).

; definimos el vector
(define Vect (vector "Esto" " " "Es" " " "Un" " " "Vector" " " "Leido" " " "Recursivamente" ".") )
(define lon (- (vector-length Vect) 1))
(define pos 0)
(define (Display Vect lon pos)
  (if (= pos lon)
      (display (vector-ref Vect pos) )
      (begin
        (display (vector-ref Vect pos))
        (Display Vect lon (+ pos 1))
       )
   )
)