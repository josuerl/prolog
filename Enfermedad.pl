%%declaraciones de enfermedades
enfermedad(gripe).
enfermedad(rubeola).
enfermedad(malaria).
enfermedad(hepatitis).
enfermedad(tuberculosis).
enfermedad(anemia).
%enfermode(manuel,gripe).
%tienesintoma(alicia,cansancio).
%declaraciones de síntomas, según enfermedad
%podemos hacer consultas por ejemplo
%mostrar una enfermedad y sus síntomas o las enferm
edades y síntomas
%determinar un síntoma a que enfermedad(es) pertece
ne
sintomade(tos, gripe). %la tos es síntoma de gripe
sintomade(cansancio, gripe). %el cansancio es sínto
ma de gripe
sintomade(fiebre, gripe). %la fiebre es síntoma d
e gripe
sintomade(dolorcabeza, gripe). %dolor de cabeza es
síntoma de gripe
sintomade(nauseas, hepatitis). %las nauseas son sín
toma de hepatitis
sintomade(diarrea, hepatitis). %la diarrea es sínto
ma de hepatitis
sintomade(ictericia, hepatitis). %la ictericia es s
íntoma de hepatitis
sintomade(cansancio, anemia). %cansancio es síntoma
de anemia
sintomade(apatia, anemia). %apatía es síntoma de
anemia
sintomade(nausea, anemia). %las nauseas son síntom
as de anemia
sintomade(tos, tuberculosis). %la tos es síntoma d
e la tuberculosis
sintomade(cansancio, tuberculosis). %el cansancio e
s síntoma de tuberculosis
sintomade(fiebre, tuberculosis). %la fiebre es sínt
oma de la tuberculosis
sintomade(escalofrios, tuberculosis). %los escalofr
íos es síntoma de tuberculosis
sintomade(escalofrios, malaria). %los escalofríos s
on síntomas de la malaria
sintomade(fiebre , malaria). %la fiebre es síntoma
de malaria
sintomade(diarrea , malaria). %la diarrea es síntom
a de malaria
sintomade(ictericia, malaria). %la ictericia es sín
toma de malaria
sintomade(fiebre, rubeola). %la fiebre es síntoma
de rubéola
sintomade(jaqueca, rubeola). %la jaqueca es síntom
a de rubéola
sintomade(secrecion, rubeola). %la secreción es sín
toma de rubeola
% Reglas para determinar que probabilidad una perso
na puede tener una
% enfermedad X dado n síntomas
% %La función buscar busca las enfermedades que con
tengan como mínimo los síntomas
%suministrados
% % primer parámetro (lista de enfermedades).
% % segundo parámetro (Enfermedad).
% %tercer parámetro cantidad de ocurrencias
% %(a decir verdad tendría que ser la misma cantida
d que el arreglo entregado).
buscar([], E , 0).
buscar(X , E , 1) :- sintomade(X, E).
buscar([X|Xs] , E , P) :- enfermedad(E) , buscar(X
, E , S1) , buscar(Xs , E ,S2) , P is S1 + S2.
%%función que devuelve la cantidad de síntomas tota
les de la enfermedad seleccionada
cantSint(E , C) :- findall(X , sintoma(X, E) , L) ,
length(L , R), C is R.
%%Esta función es parecida a la de buscar con la ex
cepción que en el ultimo argumento te entrega
%% el (porcentaje de probabilidad de la enfermedad)
diagnostico([X|Xs] , E , K) :- buscar([X|Xs] , E ,
P) , cantSint(E , T) , K is P * 100 / T.
%--------------------------------------------------
---------------------------------------------------
----------------
%hasta alli llegamos en el primer informe, pero aho
ra añadiremos mas capacidad a nuestro SE.
%--------------------------------------------------
---------------------------------------------------
----------------
%declaraciones de los hechos para determinar medici
na de una enfermedad
%que medicamento debo tomar dependiendo la enfermed
ad
medicinade(contrex, gripe). %contrex es medicamento
de la gripe
medicinade(jarabe, gripe). %jarabe es medicamento d
e la gripe
medicinade(pastillas, tubercolosis). %pastillas es
medicamento de la tubercolosis
medicinade(vacuna, malaria). %vacuna es medicamento
de la malaria
medicinade(vacuna, rubéola). %vacuna es medicamento
de la rubeola
medicinade(vitaminas, anemia). %vitaminas es medica
mento de la anemia
medicinade(pastillas, hepatitis). %pastillas es med
icamento de hepatitis
%declaración de reglas
recetade(M, S):-sintomade(S, Z),medicinade(M, Z).
especialistade(otorrino, gripe).
especialistade(nutricionista, anemia).
especialistade(endocrinologia, hepatitis).
especialistade(medicinageneral, rubéola).
especialistade(nutricionista, tubercolosis).
especialistade(medicinageneral, malaria).
%--------------------------------------------------
---------------------------------------------------
----------------
%
Reglas
%--------------------------------------------------
---------------------------------------------------
----------------
atiende_especialista(E, S):- sintoma_de(S,Z),especi
alista_de(E, Z).
% esta regla es para hacer consultas ejemplo
% Si tengo enfermedad gripe por ejemplo que especia
lista y que medicina
% me receta
mereceta(Es, M, E):-medicinade(M, E),sintomade(S, E
), atiendeespecialista(Es,S).