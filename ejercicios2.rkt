#lang racket
; Ejercicio 1: Construir la función Circunferencia (formula: 2*Pi*Radio), dato de entrada Radio
(define (Circunferencia Radio)
  (display (* 2 3.14 Radio))
  )

; Ejercicio 2: Construya una función para calcular la suma de: f(X,Y)=X^3+Y^2
(define (suma x y)
  (display (+ (* x x x) (* y y)))
)

; Ejercicio 3: Construir una función para calcular la siguiente expresión f(a)=(a+1)^2 + (a-1)^2
(define (sumaCuadrados a)
  (display (+ (* (+ a 1)(+ a 1))(* (- a 1)(- a 1))))
)

; Ejercicio 4: Construir una función para establecer el mayor entre tres números diferentes
(define (mayor a b c)
  (if (and (> a b)(> a c))
      (display a)
      (if(and (> b a)(> b c))
         (display b)
         (display c)
       )
   )
)

; Ejercicio 5: Elaborar un algoritmo que lea los 3 lados de un triangulo cualquiera y calcule su área,
; considerar: Si A,B y C son los lados y S, el semi perímetro.

  ; calculamos primero el semiperimetro (S = (A+B+C)/2)
(define (semiPerimetro a b c)
  (/ (+ a b c) 2)
)

  ; ahora calculamos el area del triangulo
(define (areaTriangulo a b c)
  (display (sqrt (* (semiPerimetro a b c)(- (semiPerimetro a b c) a)(- (semiPerimetro a b c) b)(- (semiPerimetro a b c) c))))
)

; Ejercicio 6: Se tiene registrada la producción(unidades) logradas por un operario a lo largo de la
; semana (lunes a sábado). Elabore un algoritmo que nos muestre si el operario recibirá
; incentivos sabiendo que el promedio de producción mínima es de 100 unidades. Si el
; promedio de producción es mayor o igual a 100 unidades recibe incentivos.

(define (incentivo a b c d e f)
  (if (>= (/ (+ a b c d e f) 6) 100)
      (display "El operario recibira incentivos")
      (display "El operario NO recibira incentivos")
  )
)