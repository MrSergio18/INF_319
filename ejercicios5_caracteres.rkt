#lang racket
; funcion para leer datos
(define (leer)
  (begin
    (display "Introduzca un numero: ")
    (read)
   )
)

; Construir una funcion que reciba un parametro y devuelva Verdad si es un caracter y Falso si no lo es
(define (verificarCaracter x)
  (char? x)
)

; imprimir la respuesta
(define (respuesta x)
  (if (verificarCaracter x)
     (display "Verdad")
     (display "Falso")
  )
)

; Construir una funcion que reciba un parametro. Si el parametro es un caracter alfabetico,
; determinar si esta en minuscula y pasarlo a mayuscula y retornar este valor.
; Hacer lo mismo en caso contrario

(define (upLow x)
  ; verificamos que el argumento es un caracter
  (if (verificarCaracter x)
      (begin
        (if (char-alphabetic? x)
            (begin
               (if (char-lower-case? x)
                   (char-upcase x)
                   (char-downcase x)
                )
             )
            (display "No es un caracter alfabetico")
         )
       )
      (display "No es un caracter")
  )
)

; Realice un programa que pida un numero y saque por pantalla su tabla de Sumas (a-10)

; definimos la funcion para la lectura del numero, la misma llamara a la funcion que generara la tabla
(define (tablaSumas)
  (display "Introduzca un numero: ")
  (define y (read))
  (printf "Tabla de sumas de ~a:\n" y)
  (tabla y 1)
)
;                      y es igual a 1 (el valor que ira incrementando)
(define (tabla x y)
  (cond 
      [(> y 10)(display "")]
      (else
         (displayln (string-append (number->string x) " + " (number->string y) " = " (number->string (+ x y))))
         (tabla x (+ y 1))
      )
   )
)

; Construir una funcion que recibe un parametro. Si el parametro es un caracter devolver el
; numero que corresponda en la tabla del codigo ASCII y si es numero devolver el caracter que
; corresponda en la tabla
; NOTA: la funcion (number? n) retorna verdadero si 'n' es un numero y falso de lo contrario
(define (ascii x)
  (cond
    [(char? x)(display (char->integer x))]
    [(number? x)(display (integer->char x))]
    [else (display "Entrada no valida")]
   )
)