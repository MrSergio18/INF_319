#lang racket
; Construya una funcion que reciba una cadena y la devuelva invertida
(define (cadenaInvertida)
  (display "Introduzca una cadena: ")
  (define cadena (read))
  (define lon (string-length cadena))
  (display (revertir cadena (- lon 1) ""))
)

(define (revertir cadena pos nuevo)
  (if (< pos 0)
      nuevo
      (revertir cadena (- pos 1) (string-append nuevo (string (string-ref cadena pos))))
   )
)

; Construirun programa que reciba un vector de enteros y obtenga el promedio de los numeros
; del vector. Necesariamente utilizar recursividad
(define (leerVector)
  (display "Ingrese el tamanio del vector: ")
  (define n (read))
  (define vec (make-vector n))
  (display "Ingrese los valores de su vector: ")
  (leer vec n 0)
  ; (promedio vec n 0 0)
  (display (/ (promedio vec n 0) n))
)
(define (leer vec lon pos)
  (if(= pos lon)
     vec
     (begin
       (vector-set! vec pos (read))
       (leer vec lon (+ pos 1))
      )
   )
)
; mi metodo
;(define (promedio vec lon pos suma)
;  (if (= pos lon)
;      (/ suma lon)
;      (promedio vec lon (+ pos 1) (+ suma (vector-ref vec pos)))
;   )
;)

; metodo kapa (este metodo queria el lic)
(define (promedio vec lon pos)
  (if (= pos lon)
      0
      (+ (vector-ref vec pos) (promedio vec lon (+ pos 1)))
   )
)

; Genera la sumatoria Σ^n _(i=a)(1/i^3+1)
(define (sumatoriaA)
  (display "Ingrese un numero limite para la sumatoria: ")
  (define a (read))
  (sumatoria a)
)
(define (sumatoria a)
  (if(= a 0)
     0
     (+ (/ 1 (+ (* a a a) 1)) (sumatoria (- a 1)))
   )
)

; Escribe un programa que cuente el numero de vocales y consonantes que contiene
; necesariamente usar recursividad
(define (conteoVC)
  (display "Ingrese una cadena: ")
  (define cad (read-line))
  (conteo cad (string-length cad) 0 0 0)
)
(define (conteo cad lon pos voc con)
  (if (= pos lon)
      (begin
        (display (string-append "El numero de vocales es: " (number->string voc)))
        (newline)
        (display (string-append "El numero de consonantes es: " (number->string con)))
       )
      (if (char-alphabetic? (string-ref cad pos))
          (cond
            [(char=? (string-ref cad pos) #\a)(conteo cad lon (+ pos 1) (+ voc 1) con)]
            [(char=? (string-ref cad pos) #\e)(conteo cad lon (+ pos 1) (+ voc 1) con)]
            [(char=? (string-ref cad pos) #\i)(conteo cad lon (+ pos 1) (+ voc 1) con)]
            [(char=? (string-ref cad pos) #\o)(conteo cad lon (+ pos 1) (+ voc 1) con)]
            [(char=? (string-ref cad pos) #\u)(conteo cad lon (+ pos 1) (+ voc 1) con)]
            (else (conteo cad lon (+ pos 1) voc (+ con 1)))
           )
          (conteo cad lon (+ pos 1) voc con)
       )
   )
)