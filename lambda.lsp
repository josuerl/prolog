(
    defvar *cuadrado*
    (lambda ()
        (print "--- Area del cuadrado ---")
        (print "Dame el perimetro: ")
        (setq num1 (read))
        (setq num2 (* num1 num1))
        (princ "El area del cuadrado es: ")
        (princ num2)
    )
)

(
    defvar *rectangulo*
    (lambda ()
        (print "--- Area del rectangulo ---")
        (print "Dame el largo del rectangulo: ")
        (setq num1 (read))
        (print "Dame el ancho del rectangulo: ")
        (setq num2 (read))
        (setq num3 (* num1 num2))
        (print "El area del rectangulo es: ")
        (princ num3)
    )
)

(
    defvar *triangulo*
    (lambda ()
        (print "--- Area del triangulo ---")
        (print "Dame la base del rectangulo: ")
        (setq base (read))
        (print "Dame la altura del triangulo: ")
        (setq altura (read))
        (setq num3 (/(* base alutra )2))
        (print "El area del triangulo es: ")
        (princ num3)
    )
)

(
    defvar *circulo*
    (lambda()
        (print "--- AREA DEL CIRCULO ---")
        (print "Dame el radio del circulo: ")
        (setq radio(read))
        (setq res (* 3.1416(^ radio 2)))
        (print "El area del circulo es: ")
        (princ res)
    )
)

(
    defvar *trapecio*
    (lambda ()
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
)

(
    defvar *cubo*
    (lambda ()
        (print "--- VOLUMEN DE UN CUBO ---")
        (print "Dame un lado: ")
        (setq lado (read))
        (setq volumen (* (* lado lado) lado))
        (print "El volumen es: ")
        (princ volumen)
    )
)

(
    defvar *prisma*
    (lambda ()
        (print "--- VOLUMEN DE UN PRISMA ---")
        (print "Dame el area base: ")
        (setq areab(read))
        (print "Dame la altura: ")
        (setq altura(read))
        (setq volumen ( * areab altura  ))
        (print "El volumen es: ")
        (princ volumen)
    )
)

(
    defvar *paralepipedo*
    (lambda ()
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
)

(
    defvar *piramide*
    (lambda ()
        (print "--- VOLUMEN DE UNA PIRAMIDE ---")
        (print "Dame el area base: ")
        (setq areab(read))
        (print "Dame la altura: ")
        (setq altura(read))
        (setq volumen ( * (/ 1 3) ( * areab altura )  ))
        (print "El volumen es: ")
        (princ volumen)
    )
)

(
    defvar *cilindro*
    (lambda ()
        (print "--- VOLUMEN DEL CILINDRO ---")
        (print "Dame el radio: ")
        (setq radio(read))
        (print "Dame la altura: ")
        (setq altura(read))
        (setq volumen ( * 3.1416 ( * ( * radio radio ) altura) ))
        (print "El volumen es: ")
        (princ volumen)
    )
)

(funcall *cuadrado*)
(funcall *rectangulo*)
(funcall *triangulo*)
(funcall *circulo*)
(funcall *trapecio*)
(funcall *cubo*)
(funcall *prisma*)
(funcall *paralepipedo*)
(funcall *piramide*)
(funcall *cilindro*)