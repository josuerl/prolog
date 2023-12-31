#|
Este código define una serie de funciones donde cada uno esta hecha pra determinar el area de una figura
 |#

#|
1.area de un cuadrado
|#
(
    defun cuadrado()
    (print "--- Area del cuadrado ---")
    (print "Dame el perimetro: ")
    (setq num1 (read))
    (setq num2 (* num1 num1))
    (princ "El area del cuadrado es: ")
    (princ num2)
)

#|
2.area de un rectangulo
|#
(
    defun rectangulo()
    (print "--- Area del rectangulo ---")
    (print "Dame el largo del rectangulo: ")
    (setq num1 (read))
    (print "Dame el ancho del rectangulo: ")
    (setq num2 (read))
    (setq num3 (* num1 num2))
    (print "El area del rectangulo es: ")
    (princ num3)
)

#|
3.area de un tringulo
|#
(
    defun triangulo()
    (print "--- Area del triangulo ---")
    (print "Dame la base del rectangulo: ")
    (setq base (read))
    (print "Dame la altura del triangulo: ")
    (setq altura (read))
    (setq num3 (/(* base alutra )2))
    (print "El area del triangulo es: ")
    (princ num3)
)

#|
4.area de un circulo
|#
(
    defun circulo()
    (print "--- AREA DEL CIRCULO ---")
    (print "Dame el radio del circulo: ")
    (setq radio(read))
    (setq res (* 3.1416(^ radio 2)))
    (print "El area del circulo es: ")
    (princ res)
)

#|
5.area de un trapecio
|#
(
    defun trapecio()
    (print "--- AREA DEL TRAPECIO ---")
    (print "Dame la base mayor: ")
    (setq bsma(read))
    (print "Dame la base menor: ")
    (setq bsme(read))
    (print "Dame la altura menor: ")
    (setq altura(read))
    (setq area ( / (* (+ bsma bsme)  altura) 2))
    (print "El area del trapecio es: ")
    (princ area)
)

#|
6.area de un rombo
|#
(
    defun rombo()
    (print "--- AREA DEL ROMBO ---")
    (print "Dame la diagonal mayor: ")
    (setq dgmar(read))
    (print "Dame la diagonal menor: ")
    (setq dgmen(read))
    (setq area ( / ( * dgmar dgmen ) 2 ))
    (print "El area del rombo es: ")
    (princ area)
)

#|
7.area de un paralelogramo
|#
(
    defun paralelogramo()
    (print "--- AREA DEL PARALELOGRAMO ---")
    (print "Dame la base: ")
    (setq base(read))
    (print "Dame la altura : ")
    (setq altura(read))
    (setq area ( * base altura ))
    (print "El area del paralelogramo es: ")
    (princ area)
)

#|
8.area de un hexagono
|#
(
    defun hexagonor()
    (print "--- AREA DEL HEXAGONO REGULAR ---")
    (print "Dame la medida de un lado: ")
    (setq lado(read))
    (print "Dame la apotema: ")
    (setq apotema(read))
    (setq area ( * ( * lado apotema ) 6 ))
    (print "El area del hexagono es: ")
    (princ area)
)

#|
9.area de un pentagono
|#
(
    defun pentagono()
    (print "--- AREA DE UN PENTAGONO ---")
    (print "Dame el perimetro: ")
    (setq perimetro(read))
    (print "Dame el apotema: ")
    (setq apotema(read))
    (setq area ( / ( * perimetro apotema ) 2 ))
    (print "El area del pentagono es: ")
    (princ area)
)

(cuadrado)
(rectangulo)
(triangulo)
(circulo)
(trapecio)
(rombo)
(paralelogramo)
(hexagonor)
(pentagono)