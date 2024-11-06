#lang racket
; Escribir un programa que permita generar códigos de usuario por el procedimiento
; siguiente:
; Tiene que leer el nombre y los dos apellidos de una persona y devolver un código de
; usuario formado por las tres primeras letras del primer apellido, las tres primeras letras
; del segundo apellido y las tres primeras letras del nombre , ejemplo ALEX RUIZ
; SANCHEZ , debe devolver RUISANALE.
(define (codigoUsuario)
  (display "Ingrese el nombre: ")
  (define nombre (read-line))
  (display "Ingrese el apellido paterno: ")
  (define paterno (read-line))
  (display "Ingrese el apellido materno: ")
  (define materno (read-line))
  (codigo nombre paterno materno)
)

(define (codigo a b c)
  (display "El codigo de usuario es: ")
  (display
     (string-append (substring a 0 3)
                    (substring b 0 3)
                    (substring c 0 3))
  )
)

; Construir un programa que reciba una cadena y devuelva una cadena equivalente pero
; sin las vocales.

(define (sinVocales)
  (display "Ingrese la cadena: ")
  (define cadena (read-line))
  (define longitud (string-length cadena))
  (define i 0)
  (quitarVocales cadena longitud i)
)

(define (quitarVocales cad len i)
  (if (= i len)
      (display "")
      (begin
        (if (or (char-ci=? (string-ref cad i) #\a)
                (char-ci=? (string-ref cad i) #\e)
                (char-ci=? (string-ref cad i) #\i)
                (char-ci=? (string-ref cad i) #\o)
                (char-ci=? (string-ref cad i) #\u)
             )
            (display "")
            (display (string-ref cad i))
        )
        (quitarVocales cad len (+ i 1))
      )
   )  
)

; Construir una funcion que reciba una cadena y la devuelva invertida
(define (invertirCad)
  (display "Ingrese la cadena: ")
  (define cad (read-line))
  (define longitud (string-length cad))
  (define i longitud)
  (display "La cadena invertida es :")
  (invertir cad (- i 1))
)
(define (invertir cad i)
  (if (< i 0)
      (display "")
      (begin
        (display (string-ref cad i))
        (invertir cad (- i 1))
      )
   )
)

; Construir una funcion que reciba una cadena y devuelva cuantas vocales tiene
(define (contarV)
  (display "Ingrese una cadena: ")
  (define cad (read-line))
  (define lon (string-length cad))
  (define c 0)
  (display (string-append "La cadena tiene " (number->string (contar cad (- lon 1) c)) " vocales"))
)

(define (contar cad lon c)
  (if (< lon 0)
      c
      (begin
         (if (or (char-ci=? (string-ref cad lon) #\a)
                 (char-ci=? (string-ref cad lon) #\e)
                 (char-ci=? (string-ref cad lon) #\i)
                 (char-ci=? (string-ref cad lon) #\o)
                 (char-ci=? (string-ref cad lon) #\u)
              )
             (contar cad (- lon 1) (+ c 1))
             (contar cad (- lon 1) c)
          )
       )
   )
)