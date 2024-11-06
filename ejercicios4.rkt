#lang racket
; Imprimir los números del uno al diez recursivamente
(define (printNum1-10 x)
  (if (= x 10)
      (display x)
      (begin
        (display x)
        (display " ")
        (printNum1-10 (+ 1 x))
      )
  )
)

; Escribir un programa que reciba un numero e indique si se trata de un numero par
(define (verificarPar x)
  (if (= (modulo x 2) 0)
      (display "Es un numero par")
      (display "No es un numero par")
  )
)

; Construir una función que reciba como parámetro un numero N y calcule la suma
; de todos los enteros comprendidos entre 1 y el numero recibido.
(define (sumaEntre1N i n)
  (cond
    [(= i (+ 1 n)) 0]
    (else (+ i (sumaEntre1N (+ 1 i) n)))
  )
)

; Escriba una función que calcule cuantos números naturales hay entre 2 números
; dados, incluyéndolos.
(define (sumaEntreAB a b)
  (cond
    [(> a b) 0]
    (else (+ a (sumaEntreAB (+ a 1) b)))
  )
)