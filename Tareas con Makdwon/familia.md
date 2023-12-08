#|
Ejercicio hecho en clase
 |#
hermano(juan).
padre(juan).
padre(pedro).
padre(antonio).
padre(luiso).
padre(eduardo).
madre(luisa).
madre(maria).
madre(marta).
padrede(pedro,juan).
padrede(juan,julio).
padrede(juan,jose).
madrede(luisa,maria).
abuelo(X,Y):-padrede(X,W),padrede(W,Y).
abuela(X,Y):-madrede(X,W),madrede(W,Y).