#lang racket
; ******************* FUNCIONES *****************

; 1. Escribe una funcion que verifique si una lista de numeros esta ordenada de forma ascendente
(define lista (list 1 2 2 4 2 6))
(define lista2 (list 5 8 3 4 9 6))
(define lista3 (list #\h #\o #\l #\a))
(define (verificarOrdenA lista)
  (cond
    [(or (null? (cdr lista))(null? lista))(display "La lista esta ordenada de forma ascendente")]
    [(<= (car lista)(car (cdr lista)))(verificarOrdenA (cdr lista))]
    [else (display "La lista no tiene orden ascendente")]
  )
)
; NOTA: ten mucho cuidado al manejar listas, ya que puedes apuntar a un elemento null
; por ejemplo: (define lista (lista 1)) -> (cdr lista) -> (la cola de 'lista' es null)

; 2. Escribe una funcion que tome una lista de numeros y devuelva una lista con sus cuadrados
(define (listaCuadrados lista nuevo)
  (if (null? lista)
      nuevo
      (listaCuadrados (cdr lista) (append nuevo (list (* (car lista) (car lista)))))
   )
)

; 3. Crear una funcion que tome 2 listas y devuelva una lista con los elementos que tienen en comun
(define (listaComun lista1 lista2 nuevo)
  (if (null? lista1)
      nuevo
      (let ([comun (elementoComun (car lista1) lista2)])
        (if (equal? comun #\f)
            (listaComun (cdr lista1) lista2 nuevo)
            (listaComun (cdr lista1) lista2 (append nuevo (list comun)))
         )
       )
   )
)
(define (elementoComun elem lista)
  (if (null? lista)
      #\f
      (if (equal? elem (car lista))
          elem
          (elementoComun elem (cdr lista))
       )
   )
)

; **************** RECURSIVIDAD ********************
; 1. Escribe una funcion recursiva que encuentre el maximo en una lista de numeros
(define (maximo lista max)
  (if (null? lista)
      max
      (if (< max (car lista))
          (maximo (cdr lista) (car lista))
          (maximo (cdr lista) max)
       )
   )
)

; 2. Crea una función recursiva que cuente cuántas veces aparece un elemento en una lista.
(define (contar lista elem)
  (if (null? lista)
      0
      (if (equal? (car lista) elem)
          (+ 1 (contar (cdr lista) elem))
          (contar (cdr lista) elem)
       )
   )
)

; 3. Define una funcion recursiva que calcule la potencia de un numero sin usar operadores predefinidos
(define (pot base exp)
  (if (= exp 0)
      1
      (* base (pot base (- exp 1)))
   )
)

; ******************** CARACTERES ***************************
; 1. Escribe una funcion que verifique si todos los caracteres de una lista son letras
(define (verificarLetras lista)
  (if (null? lista)
      (display "Todos los caracteres de la lista son letras")
      (if (char-alphabetic? (car lista))
          (verificarLetras (cdr lista))
          (display "No todos los caracteres de la lista son letras")
       )
   )
)

; 2. Crear una funcion que cuente cuantos caracteres en una lista son consonantes
(define (contarConsonantes lista)
  (if (null? lista)
      0
      (if (char-alphabetic? (car lista))
          (let ([car (char->integer (char-downcase (car lista)))])
            (if (or (= car 97) (= car 101) (= car 105) (= car 111) (= car 117))
                (contarConsonantes (cdr lista))
                (+ 1 (contarConsonantes (cdr lista)))
             )
          )
          (contarConsonantes (cdr lista))
       )
   )
)

; 3. Define una función que convierta una lista de caracteres en una lista de códigos ASCII.