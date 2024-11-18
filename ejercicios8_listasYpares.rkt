#lang racket
; Construir una funcion que reciba una lista e imprima uno por uno todos los valores
; usar la funcion null? para saber si se llego al final de una lista

; creamos una lista por teclado
(define lista (list 2 5 "hola" #\a #\b 5 9 "mundo" 'uno))

(define (mostrarLista lista)
  (if (null? lista)
      (display "")
      (begin
        (display (car lista))
        (display " ")
        (mostrarLista (cdr lista))
       )
   )
)

; Construir una funcion que devuelva una lista con los datos que el usuario digite por teclado
; la entrada de datos termine cuando el usuario digite el numero -1
(define (lecturaLista)
  (display "Ingrese los datos de su lista: ")
  (define dato (read))
  (leerLista (list) dato)
)

(define (leerLista lista dato)
  (if(equal? dato -1)
     (display lista)
     (leerLista (append lista (list dato)) (read)) ; tener cuidado, ya que append no puede modificar una lista
     )                                             ; lo que hace append es devolver una lista combinada con otra lista
  )                                                ; y en si, no modifica la lista original