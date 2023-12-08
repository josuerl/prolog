#|
Este código define una serie de funciones donde cada uno esta hecha para determinar el volumen de una figura
 |#

#|
1.volumen de un cubo
|#
(
    defun cubo()
    (print "--- VOLUMEN DE UN CUBO ---")
    (print "Dame un lado: ")
    (setq lado(read))
    (setq volumen ( * ( * lado lado ) lado ))
    (print "El volumen es: ")
    (princ volumen)
)

#|
2.volumen de un prisma
|#
(
    defun prisma()
    (print "--- VOLUMEN DE UN PRISMA ---")
    (print "Dame el area base: ")
    (setq areab(read))
    (print "Dame la altura: ")
    (setq altura(read))
    (setq volumen ( * areab altura  ))
    (print "El volumen es: ")
    (princ volumen)
)

#|
3.volumen de un paralepipedo
|#
(
    defun paralepipedo()
    (print "--- VOLUMEN DE UN PRALEPIPEDO ---")
    (print "Dame el largo: ")
    (setq largo(read))
    (print "Dame el ancho: ")
    (setq ancho(read))
    (print "Dame la altura: ")
    (setq altura(read))
    (setq volumen ( * ( * largo ancho ) altura ))
    (print "El volumen es: ")
    (princ volumen)
)

#|
4.volumen de una piramide
|#
(
    defun piramide()
    (print "--- VOLUMEN DE UNA PIRAMIDE ---")
    (print "Dame el area base: ")
    (setq areab(read))
    (print "Dame la altura: ")
    (setq altura(read))
    (setq volumen ( * (/ 1 3) ( * areab altura )  ))
    (print "El volumen es: ")
    (princ volumen)
)

#|
5.volumen de un cilindro
|#
(
    defun cilindro()
    (print "--- VOLUMEN DEL CILINDRO ---")
    (print "Dame el radio: ")
    (setq radio(read))
    (print "Dame la altura: ")
    (setq altura(read))
    (setq volumen ( * 3.1416 ( * ( * radio radio ) altura) ))
    (print "El volumen es: ")
    (princ volumen)
)

#|
6.volumen de un cono
|#
(
    defun cono()
    (print "--- VOLUMEN DEL CONO ---")
    (print "Dame el radio: ")
    (setq radio(read))
    (print "Dame la altura: ")
    (setq altura(read))
    (setq volumen ( * (* (/ 1 3)  3.1416) ( * ( * radio radio ) altura) ))
    (print "El volumen es: ")
    (princ volumen)
)

#|
7.volumen de una esfera
|#
(
    defun esfera()
    (print "--- VOLUMEN DE UNA ESFERA ---")
    (print "Dame el radio: ")
    (setq radio(read))
    (setq volumen ( * (* (/ 4 3)  3.1416) ( * ( * radio radio ) radio) ))
    (print "El volumen es: ")
    (princ volumen)
)

#|
8.volumen de un tetraedo
|#
(
    defun tetraedo()
    (print "--- VOLUMEN DE UN TETRAEDO ---")
    (print "Dame la longuitud de un lado: ")
    (setq lado(read))
    (setq volumen ( / ( * ( * lado lado ) lado ) ( * 6 1.4142 ) ))
    (print "El volumen es: ")
    (princ volumen)
)

#|
9.volumen de un pismahex
|#
(
    defun prismahex()
    (print "--- VOLUMEN DE UN PRISMA HEXAGONAL ---")
    (print "Dame la longuitud de un lado: ")
    (setq lado(read))
    (print "Dame el apotema: ")
    (setq apotema(read))
    (print "Dame la profundidad: ")
    (setq prof(read))
    (setq volumen ( * (* (/ 3 2) lado ) ( * apotema prof )  ))
    (print "El volumen es: ")
    (princ volumen)
)

(cubo)
(prisma)
(paralepipedo)
(piramide)
(cilindro)
(cono)
(esfera)
(tetraedo)
(prismahex)