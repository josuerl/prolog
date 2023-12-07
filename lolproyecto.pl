% Llamamiento inicial
invocador:-	writeln('Hola invocador, bienvenido a League of Legends, te dare la informacion basica sobre de donde son los campeones, es importnate que todas las entradas deben ser en minusculas y con un "." al final'),
	readln(Input),
	invocador(Input),!.


	% despedidas

	invocador(Input):- Input == ['adios', '.'],
	writeln('Adios, espero haberte ayudado.'), !.
	invocador(Input):- Input == ['Adios', '.'],
	writeln('Adios, espero haberte ayudado.'), !.
	invocador(Input):- Input == ['Bye', '.'],
	writeln('Adios, espero haberte ayudado.'), !.
	invocador(Input):- Input == ['bye', '.'],
	writeln('Adios, espero haberte ayudado.'), !.
	invocador(Input):- Input == ['Fin', '.'],
	writeln('Adios, espero haberte ayudado.'), !.
	invocador(Input):- Input == ['fin', '.'],
	writeln('Adios, espero haberte ayudado.'), !.




	invocador(Input) :-
	template(Stim, Resp, IndStim),
	match(Stim, Input),
	% si he llegado aquí es que he
	% hallado el template correcto:
	replace0(IndStim, Input, 0, Resp, R),
	writeln(R),
	readln(Input1),
	invocador(Input1), !.


	% saludos
	template([hola, soy, s(_), '.'], ['Hola', 0 ], [2]).
	template([hola, mi, nombre, es, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [4]).
	template([buendia, mi, nombre, es, s(_), '.'], ['buen dia', 'Como', estas, tu, 0, '?'], [4]).
    template([hola, yo, soy, s(_), '.'], ['Hola', 0, espero, estes, teniendo, un, buen, dia], [3]).

	% templates interactivos base
	template([te, gustan, las, s(_), '.'], [flagLike], [3]).
	template([te, gustan, los, s(_), '.'], [flagLike], [3]).
	template([tu, sabes, s(_), '.'], [flagDo], [2]).
	template([eres, s(_), '.'], [flagIs], [1]).
	
	% TEMPLATES CLAMIDIA
	template([clamidia, '.'],['La clamidia es una enfermedad de transmision sexual causada por una bacteria llamada Chlamydia trachomatis. La mayoria de los pacientes infectados por esta bacteria no suelen desarrollar sintomas, pero cuando los presentan, el cuadro clinico es muy similar al de la gonorrea, y es imposible distinguirlos unicamente por los sintomas. Como la clamidia es una infeccion que se transmite a traves de las relaciones sexuales, la forma mas efectiva de prevenirla es con sexo seguro, mediante el uso de condon.'],[]).
	template([hablame, del, clamidia, '.'],['La clamidia es una enfermedad de transmision sexual causada por una bacteria llamada Chlamydia trachomatis. La mayoria de los pacientes infectados por esta bacteria no suelen desarrollar sintomas, pero cuando los presentan, el cuadro clinico es muy similar al de la gonorrea, y es imposible distinguirlos unicamente por los sintomas. Como la clamidia es una infeccion que se transmite a traves de las relaciones sexuales, la forma mas efectiva de prevenirla es con sexo seguro, mediante el uso de condon.'],[]).
	template([que, es, la, clamidia, '.'],['La clamidia es una enfermedad de transmision sexual causada por una bacteria llamada Chlamydia trachomatis. La mayoria de los pacientes infectados por esta bacteria no suelen desarrollar sintomas, pero cuando los presentan, el cuadro clinico es muy similar al de la gonorrea, y es imposible distinguirlos unicamente por los sintomas. Como la clamidia es una infeccion que se transmite a traves de las relaciones sexuales, la forma mas efectiva de prevenirla es con sexo seguro, mediante el uso de condon.'],[]).
    template([cuentame, de, la, clamidia, '.'],['La clamidia es una enfermedad de transmision sexual causada por una bacteria llamada Chlamydia trachomatis. La mayoria de los pacientes infectados por esta bacteria no suelen desarrollar sintomas, pero cuando los presentan, el cuadro clinico es muy similar al de la gonorrea, y es imposible distinguirlos unicamente por los sintomas. Como la clamidia es una infeccion que se transmite a traves de las relaciones sexuales, la forma mas efectiva de prevenirla es con sexo seguro, mediante el uso de condon.'],[]).
	
    % sintomas clamidia
	template([sintomas], ListaResultado, []) :-
   	 	findall(Sintomas, sintoma_clamidia(Sintomas), ListaResultado).
	
	template([sintomas, clamidia, hombre], ListaResultado, []) :-
   	 	findall(Sintomas, sintoma_clamidia(Sintomas), ListaResultado).

	template([sintomas, clamidia, mujer], ListaResultado, []) :-
		findall(Sintomas, sintoma_clamidiam(Sintomas), ListaResultado).

	template([cuales, son, los, sintomas, para, mujer], ListaResultado, []) :-
		findall(Sintomas, sintoma_clamidiam(Sintomas), ListaResultado).

	template([cuales, son, los, sintomas, para, hombre], ListaResultado, []) :-
		findall(Sintomas, sintoma_clamidia(Sintomas), ListaResultado).

	template([cuales, son, los, sintomas, de, la, clamidia, para, mujer], ListaResultado, []) :-
		findall(Sintomas, sintoma_clamidiam(Sintomas), ListaResultado).

	template([cuales, son, los, sintomas, de, la, clamidia, para, hombre], ListaResultado, []) :-
		findall(Sintomas, sintoma_clamidia(Sintomas), ListaResultado).

	template([dime, los, sintomas, de, la, clamidia, para, hombre], ListaResultado, []) :-
		findall(Sintomas, sintoma_clamidia(Sintomas), ListaResultado).

	template([dime, los, sintomas, de, la, clamidia, para, mujer], ListaResultado, []) :-
		findall(Sintomas, sintoma_clamidiam(Sintomas), ListaResultado).
	
	% causas de la clamidia
	template([cuales, son, las, causas], ListaResultado, []) :-
		findall(Causas, causa_clamidia(Causas), ListaResultado).
	
	template([cuales, son, las, causas, de, la, clamidia], ListaResultado, []) :-
		findall(Causas, causa_clamidia(Causas), ListaResultado).

	template([cuales, pueden, ser, las, causas, de, la, clamidia], ListaResultado, []) :-
		findall(Causas, causa_clamidia(Causas), ListaResultado).

	template([dime, las, causas], ListaResultado, []) :-
		findall(Causas, causa_clamidia(Causas), ListaResultado).
	
	template([dime, las, causas, de, la, clamidia], ListaResultado, []) :-
		findall(Causas, causa_clamidia(Causas), ListaResultado).
	
	template([causas], ListaResultado, []) :-
    	findall(Causas, causa_clamidia(Causas), ListaResultado).
	
	template([causas, de, la, clamidia], ListaResultado, []) :-
    	findall(Causas, causa_clamidia(Causas), ListaResultado).

	% especialistas clamidia
	template([con, quien, voy], ListaResultado, []) :-
		findall(Especialistas, especialista_clamidia(Especialistas), ListaResultado).
	
	template([quien, lo, atiende], ListaResultado, []) :-
		findall(Especialistas, especialista_clamidia(Especialistas), ListaResultado).
	
	template([quien, atiende, la, clamidia], ListaResultado, []) :-
		findall(Especialistas, especialista_clamidia(Especialistas), ListaResultado).
	
	template([quienes, son, los, especialistas, de, la, clamidia], ListaResultado, []) :-
		findall(Especialistas, especialista_clamidia(Especialistas), ListaResultado).

	template([dime, los, especialistas], ListaResultado, []) :-
		findall(Especialistas, especialista_clamidia(Especialistas), ListaResultado).
	
	template([especialistas], ListaResultado, []) :-
    	findall(Especialistas, especialista_clamidia(Especialistas), ListaResultado).
	

	% medicamento clamidia
	template([medicamentos], ListaResultado, []):-
		findall(Medicamentos, medicamento_clamidia(Medicamentos), ListaResultado).
	
	template([medicamento], ListaResultado, []):-
		findall(Medicamentos, medicamento_clamidia(Medicamentos), ListaResultado).
	
	template([cuales, son, los, medicamentos], ListaResultado, []):-
		findall(Medicamentos, medicamento_clamidia(Medicamentos), ListaResultado).
		
	template([cuales, son, los, medicamentos, de, la, clamidia], ListaResultado, []):-
		findall(Medicamentos, medicamento_clamidia(Medicamentos), ListaResultado).
	
	template([dime, los, medicamentos], ListaResultado, []):-
		findall(Medicamentos, medicamento_clamidia(Medicamentos), ListaResultado).

	template([dime, los, medicamentos, de, la, clamidia], ListaResultado, []):-
		findall(Medicamentos, medicamento_clamidia(Medicamentos), ListaResultado).

	template([que, medicamentos, necesito], ListaResultado, []):-
		findall(Medicamentos, medicamento_clamidia(Medicamentos), ListaResultado).
	
	template([que, medicamentos, debo, tomar], ListaResultado, []):-
		findall(Medicamentos, medicamento_clamidia(Medicamentos), ListaResultado).

	% trataemiento clamidia
	template([tratamiento], ListaResultado, []):-
		findall(Tratameintos, tratamiento_clamidia(Tratameintos), ListaResultado).
	
	template([dime, el, tratamiento], ListaResultado, []):-
		findall(Tratameintos, tratamiento_clamidia(Tratameintos), ListaResultado).

	template([dime, el, tratamiento, de, la, clamidia], ListaResultado, []):-
		findall(Tratameintos, tratamiento_clamidia(Tratameintos), ListaResultado).

	template([cual, es, el, tratamiento], ListaResultado, []):-
		findall(Tratameintos, tratamiento_clamidia(Tratameintos), ListaResultado).

	template([cual, es, el, tratamiento, para, la, clamidia], ListaResultado, []):-
		findall(Tratameintos, tratamiento_clamidia(Tratameintos), ListaResultado).

	template([como, se, trata, la, clamidia], ListaResultado, []):-
		findall(Tratameintos, tratamiento_clamidia(Tratameintos), ListaResultado).
	

	% templates comparativos de la clamidia
	template([s(_), es, un, sintoma], [flagSintoma], [0]).
	template([s(_), es, una, causa], [flagCausas], [0]).
	template([s(_), es, un, especialista], [flagEspecialista], [0]).
	template([s(_), es, un, medicamento], [flagMedicamento], [0]).

	% Hechos y flag de causas de la clamidia
	causasIs(X, R):- causa_clamidia(X), R = [si, X, es, una, causa, de, la, clamidia].
    causasIs(X, R):- \+causa_clamidia(X), R = [X, no, es, una, causa, de, la, clamidia].
	causa_clamidia('Relaciones_sexuales_sin_condon').
	causa_clamidia('Multiples_parejas').
	causa_clamidia('Relaciones_sexuales_con_parejas_infectadas').
	causa_clamidia('Contacto_con_fluidos_corporales_infectados').
    causa_clamidia('Mal_uso_del_condon').

	% Hechos y flag de sintomas de la clamidia
	sintomaIs(X, R):- sintoma_clamidia(X), R = [si, X, es, un, sintoma, del, clamidia].
    sintomaIs(X, R):- \+sintoma_clamidia(X), R = [X, no, es, un, sintoma, del, clamidia].
	sintoma_clamidia('Dolor o ardor al orinar').
	sintoma_clamidia('Secrecion del pene').
	sintoma_clamidia('Inflamacion testicular').
	sintoma_clamidia('Dolor testicular').
	sintoma_clamidia('Dolor rectal').

	% Hechos y flag de sintomas de la clamidiaM
	sintoma_clamidiam('Dolor o ardor al orinar').
	sintoma_clamidiam('Dolor abdominal bajo').
	sintoma_clamidiam('Secrecion vaginal anormal').
	sintoma_clamidiam('Sangrado entre periodos').
	sintoma_clamidiam('Dolor durante las relaciones sexuales').
	sintoma_clamidiam('Dolor pelvico').
	
	% Hechos y flag de especialistas
	especialistaIs(X, R):- especialista_clamidia(X), R = [si, X, es, un, especialista, apto, para, diagnosticar, el, clamidia].
    especialistaIs(X, R):- \+especialista_clamidia(X), R = [X, no, es, un, especialista, apto, para, diagnosticar, el, clamidia].
	especialista_clamidia('Medico general').
	especialista_clamidia('Ginecologo').
	especialista_clamidia('Urologo').
	especialista_clamidia('Enfermero').
    especialista_clamidia('Clinicas de salud sexual').
    especialista_clamidia('Departamento de salud local').
    especialista_clamidia('Clinicas especializadas en enfermedades de transmision sexual (ETS)').

	% Hechos de medicamentos
	medicamentoIs(X, R):- medicamento_clamidia(X), R = [si, X, es, un, medicamento, para, tratar, el, clamidia].
    medicamentoIs(X, R):- \+medicamento_clamidia(X), R = [X, no, es, un, medicamento, para, tratar, el, clamidia].
	medicamento_clamidia('Azitromicina').
	medicamento_clamidia('Doxiciclina').
	medicamento_clamidia('Levofloxacino').
	medicamento_clamidia('Ofloxacina').
	
    % Hechos del tratamiento 
	tratamiento_clamidia('Ir con el medico').
	tratamiento_clamidia('Seguir con el tratamiento').
	tratamiento_clamidia('No tener relaciones sexuales').
	tratamiento_clamidia('Monitoreo medico').

% clamidia Sintomas:
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagSintoma,
    sintomaIs(Atom, R).

% clamidia Causas:
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagCausas,
    causasIs(Atom, R).

% clamidia Especialista
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagEspecialista,
    especialistaIs(Atom, R).

% clamidia medicamento
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagMedicamento,
    medicamentoIs(Atom, R).



	% TEMPLATES DE LOL
	% info lol
	template([lol], ['League of Legends (tambien conocido por sus siglas LoL), es un videojuego multijugador de arena de batalla en linea desarrollado y publicado por Riot Games. En el juego, dos equipos de cinco jugadores luchan en un combate jugador contra jugador, cada equipo ocupando y defendiendo su mitad del mapa. Cada uno de los diez jugadores controla un personaje, conocido como "campeon", con habilidades unicas y diferentes estilos de juego '], []).
	template([que, es, lol], ['League of Legends (tambien conocido por sus siglas LoL), es un videojuego multijugador de arena de batalla en linea desarrollado y publicado por Riot Games. En el juego, dos equipos de cinco jugadores luchan en un combate jugador contra jugador, cada equipo ocupando y defendiendo su mitad del mapa. Cada uno de los diez jugadores controla un personaje, conocido como "campeon", con habilidades unicas y diferentes estilos de juego '], []).
	template([hablame, del, lol], ['League of Legends (tambien conocido por sus siglas LoL), es un videojuego multijugador de arena de batalla en linea desarrollado y publicado por Riot Games. En el juego, dos equipos de cinco jugadores luchan en un combate jugador contra jugador, cada equipo ocupando y defendiendo su mitad del mapa. Cada uno de los diez jugadores controla un personaje, conocido como "campeon", con habilidades unicas y diferentes estilos de juego '], []).
	template([que, es, piltover], ['Piltover es una ciudad progresista, con un poder e influencia en auge. Es el centro cultural de Valoran y el arte, la artesania, el comercio y la innovacion siempre van de la mano. '], []).
	template([que, es, aguas, turbias], ['Aguas turbias es una ciudad portuaria muy particular enclavada en el archipielago de las Islas de la Llama Azul. Alberga cazadores de serpientes, bandas portuarias y contrabandistas de todas partes del mundo. '], []).
	template([que, es, ciudad, de, bandel], ['Se habla de un lugar donde la magia es libre, donde los imprudentes pueden ser tentados por una miriada de maravillas, y quedar atrapados en un sueno... '], []).
	template([que, es, demacia], ['Demacia es un reino poderoso y honesto con una prestigiosa historia militar, y su gente siempre ha valorado profundamente los ideales de justicia, honor y deber, que coexisten con un feroz orgullo patriota.'], []).
	template([que, es, el, vacio], ['Comenzando a gritos su existencia junto al nacimiento del universo, el Vacio es una manifestacion de la nada incognoscible que habita mas alla.'], []).
	template([que, es, freljord], ['Freljord es un lugar duro e implacable en el que la gente nace lista para luchar por la supervivencia contra todo pronostico.'], []).
	template([que, es, islas, de, las, sombras], ['Hubo una epoca en la que estas tierras acogieron a una civilizacion noble y cultivada conocida por sus aliados y emisarios como las Islas Bendecidas. Sin embargo, hace mas de mil anos, un cataclismo magico sin precedentes hizo anicos la barrera que protegia el reino material del espiritual y lo convirtio en uno solo... lo que condeno a todos los seres vivos al instante.'], []).
	template([que, es, ixtal], ['Famosa por su domino de la magia elemental, Ixtal fue una de las primeras naciones independientes en unirse al imperio de Shurima. '], []).
	template([que, es, jonia], ['Jonia, rodeada por traicioneros mares, esta formada por una serie de provincias aliadas desperdigadas a lo largo y ancho de un inmenso archipielago que muchos conocen como las Tierras Primigenias. '], []).
	template([que, es, noxus], ['Noxus es un poderoso imperio con una reputacion aterradora. Para quienes no se encuentran en el interior de sus fronteras, Noxus es una civilizacion amenazante cuya expansion no se detiene.'], []).
	template([que, es, shurima], ['El imperio de Shurima fue una prospera civilizacion que recubria todo un continente. Los poderosos dioses guerreros de la Hueste Ascendida fueron los encargados de fraguarlo, y reunian a las poblaciones dispares del sur obligandolas a convivir en paz.'], []).
	template([que, es, targon], ['El monte Targon es el mayor pico de Runaterra, una montana de roca erosionada por el sol entre un grupo de montanas que sobrepasan en altura a todos los demas accidentes geograficos del planeta'], []).
	template([que, es, zaun], ['Zaun es un distrito suburbano que yace en los valles y canones que conectan con Piltover. La poca luz que llega lo hace filtrada a traves del humo generado en una marana de tuberias, pues Zaun destaca por su arquitectura gris e industrial'], []).

	% region piltover
	template([piltover], ListaResultado, []):-
		findall(PILTOVER, piltover(PILTOVER), ListaResultado).
	
	template([dime, los, campeones, de, piltover], ListaResultado, []):-
		findall(PILTOVER, piltover(PILTOVER), ListaResultado).
	
	template([cuales, son, campeones, piltover], ListaResultado, []):-
		findall(PILTOVER, piltover(PILTOVER), ListaResultado).

	template([campeones, de, la, region, de, piltover], ListaResultado, []):-
		findall(PILTOVER, piltover(PILTOVER), ListaResultado).
	
	template([campeones, piltover], ListaResultado, []):-
		findall(PILTOVER, piltover(PILTOVER), ListaResultado).

	template([region, de, piltover], ListaResultado, []):-
		findall(PILTOVER, piltover(PILTOVER), ListaResultado).

	% region aguas turbias
	template([aguas, turbias], ListaResultado, []):-
		findall(Aguas_turbias, aguas_turbias(Aguas_turbias), ListaResultado).
	
	template([dime, los, campeones, de, aguas, turbias], ListaResultado, []):-
		findall(Aguas_turbias, aguas_turbias(Aguas_turbias), ListaResultado).
	
	template([cuales, son, campeones, aguas, turbias], ListaResultado, []):-
		findall(Aguas_turbias, aguas_turbias(Aguas_turbias), ListaResultado).

	template([campeones, de, la, region, de, aguas, turbias], ListaResultado, []):-
		findall(Aguas_turbias, aguas_turbias(Aguas_turbias), ListaResultado).
	
	template([campeones, aguas, turbias], ListaResultado, []):-
		findall(Aguas_turbias, aguas_turbias(Aguas_turbias), ListaResultado).

	template([region, de, aguas, turbias], ListaResultado, []):-
		findall(Aguas_turbias, aguas_turbias(Aguas_turbias), ListaResultado).

	% region ciudad, de, bandel
	template([ciudad, de, bandel], ListaResultado, []):-
		findall(Ciudad_de_bandel, ciudad_de_bandel(Ciudad_de_bandel), ListaResultado).
	
	template([dime, los, campeones, de, ciudad, de, bandel], ListaResultado, []):-
		findall(Ciudad_de_bandel, ciudad_de_bandel(Ciudad_de_bandel), ListaResultado).
	
	template([cuales, son, campeones, ciudad, de, bandel], ListaResultado, []):-
		findall(Ciudad_de_bandel, ciudad_de_bandel(Ciudad_de_bandel), ListaResultado).

	template([campeones, de, la, region, de, ciudad, de, bandel], ListaResultado, []):-
		findall(Ciudad_de_bandel, ciudad_de_bandel(Ciudad_de_bandel), ListaResultado).
	
	template([campeones, ciudad, de, bandel], ListaResultado, []):-
		findall(Ciudad_de_bandel, ciudad_de_bandel(Ciudad_de_bandel), ListaResultado).

	template([region, de, ciudad, de, bandel], ListaResultado, []):-
		findall(Ciudad_de_bandel, ciudad_de_bandel(Ciudad_de_bandel), ListaResultado).

	% region demacia
	template([demacia], ListaResultado, []):-
		findall(Demacia, demacia(Demacia), ListaResultado).
	
	template([dime, los, campeones, de, demacia], ListaResultado, []):-
		findall(Demacia, demacia(Demacia), ListaResultado).
	
	template([cuales, son, campeones, demacia], ListaResultado, []):-
		findall(Demacia, demacia(Demacia), ListaResultado).

	template([campeones, de, la, region, de, demacia], ListaResultado, []):-
		findall(Demacia, demacia(Demacia), ListaResultado).
	
	template([campeones, demacia], ListaResultado, []):-
		findall(Demacia, demacia(Demacia), ListaResultado).

	template([region, de, demacia], ListaResultado, []):-
		findall(Demacia, demacia(Demacia), ListaResultado).

	
	% region el vacio
	template([el, vacio], ListaResultado, []):-
		findall(Vacio, vacio(Vacio), ListaResultado).
	
	template([dime, los, campeones, del, vacio], ListaResultado, []):-
		findall(Vacio, vacio(Vacio), ListaResultado).
	
	template([cuales, son, campeones, del, vacio], ListaResultado, []):-
		findall(Vacio, vacio(Vacio), ListaResultado).

	template([campeones, de, la, region, del, vacio], ListaResultado, []):-
		findall(Vacio, vacio(Vacio), ListaResultado).
	
	template([campeones, del, vacio], ListaResultado, []):-
		findall(Vacio, vacio(Vacio), ListaResultado).

	template([region, del, vacio], ListaResultado, []):-
		findall(Vacio, vacio(Vacio), ListaResultado).

   % region el freljord
	template([el, freljord], ListaResultado, []):-
		findall(Freljord, freljord(Freljord), ListaResultado).
	
	template([dime, los, campeones, del, freljord], ListaResultado, []):-
		findall(Freljord, freljord(Freljord), ListaResultado).
	
	template([cuales, son, campeones, del, freljord], ListaResultado, []):-
		findall(Freljord, freljord(Freljord), ListaResultado).

	template([campeones, de, la, region, del, freljord], ListaResultado, []):-
		findall(Freljord, freljord(Freljord), ListaResultado).
	
	template([campeones, del, freljord], ListaResultado, []):-
		findall(Freljord, freljord(Freljord), ListaResultado).

	template([region, del, freljord], ListaResultado, []):-
		findall(Freljord, freljord(Freljord), ListaResultado).

    % region islas de las sombras
	template([islas, de, las, sombras], ListaResultado, []):-
		findall(Islas_de_las_sombras, islas_de_las_sombras(Islas_de_las_sombras), ListaResultado).
	
	template([dime, los, campeones, de, las, islas, de, las, sombras], ListaResultado, []):-
		findall(Islas_de_las_sombras, islas_de_las_sombras(Islas_de_las_sombras), ListaResultado).
	
	template([cuales, son, campeones, de, las, islas, de, las, sombras], ListaResultado, []):-
		findall(Islas_de_las_sombras, islas_de_las_sombras(Islas_de_las_sombras), ListaResultado).

	template([campeones, de, la, region, de, las, islas, de, las, sombras], ListaResultado, []):-
		findall(Islas_de_las_sombras, islas_de_las_sombras(Islas_de_las_sombras), ListaResultado).
	
	template([campeones, de, las, islas, de, las, sombras], ListaResultado, []):-
		findall(Islas_de_las_sombras, islas_de_las_sombras(Islas_de_las_sombras), ListaResultado).

	template([region, de, las, islas, de, las, sombras], ListaResultado, []):-
		findall(Islas_de_las_sombras, islas_de_las_sombras(Islas_de_las_sombras), ListaResultado).

    % region ixtal
	template([ixtal], ListaResultado, []):-
		findall(Ixtal, ixtal(Ixtal), ListaResultado).
	
	template([dime, los, campeones, de, ixtal], ListaResultado, []):-
		findall(Ixtal, ixtal(Ixtal), ListaResultado).
	
	template([cuales, son, campeones, de, ixtal], ListaResultado, []):-
		findall(Ixtal, ixtal(Ixtal), ListaResultado).

	template([campeones, de, la, region, de, ixtal], ListaResultado, []):-
		findall(Ixtal, ixtal(Ixtal), ListaResultado).
	
	template([campeones, de, ixtal], ListaResultado, []):-
		findall(Ixtal, ixtal(Ixtal), ListaResultado).

	template([region, de, ixtal], ListaResultado, []):-
		findall(Ixtal, ixtal(Ixtal), ListaResultado).

    % region jonia
	template([jonia], ListaResultado, []):-
		findall(Jonia, jonia(Jonia), ListaResultado).
	
	template([dime, los, campeones, de, jonia], ListaResultado, []):-
		findall(Jonia, jonia(Jonia), ListaResultado).
	
	template([cuales, son, campeones, de, jonia], ListaResultado, []):-
		findall(Jonia, jonia(Jonia), ListaResultado).

	template([campeones, de, la, region, de, jonia], ListaResultado, []):-
		findall(Jonia, jonia(Jonia), ListaResultado).
	
	template([campeones, de, jonia], ListaResultado, []):-
		findall(Jonia, jonia(Jonia), ListaResultado).

	template([region, de, jonia], ListaResultado, []):-
		findall(Jonia, jonia(Jonia), ListaResultado).

     % region noxus
	template([noxus], ListaResultado, []):-
		findall(Noxus, noxus(Noxus), ListaResultado).
	
	template([dime, los, campeones, de, noxus], ListaResultado, []):-
		findall(Noxus, noxus(Noxus), ListaResultado).
	
	template([cuales, son, campeones, de, noxus], ListaResultado, []):-
		findall(Noxus, noxus(Noxus), ListaResultado).

	template([campeones, de, la, region, de, noxus], ListaResultado, []):-
		findall(Noxus, noxus(Noxus), ListaResultado).
	
	template([campeones, de, noxus], ListaResultado, []):-
		findall(Noxus, noxus(Noxus), ListaResultado).

	template([region, de, noxus], ListaResultado, []):-
		findall(Noxus, noxus(Noxus), ListaResultado).

     % region shurima
	template([shurima], ListaResultado, []):-
		findall(Shurima, shurima(Shurima), ListaResultado).
	
	template([dime, los, campeones, de, shurima], ListaResultado, []):-
		findall(Shurima, shurima(Shurima), ListaResultado).
	
	template([cuales, son, campeones, de, shurima], ListaResultado, []):-
		findall(Shurima, shurima(Shurima), ListaResultado).

	template([campeones, de, la, region, de, shurima], ListaResultado, []):-
		findall(Shurima, shurima(Shurima), ListaResultado).
	
	template([campeones, de, shurima], ListaResultado, []):-
		findall(Shurima, shurima(Shurima), ListaResultado).

	template([region, de, shurima], ListaResultado, []):-
		findall(Shurima, shurima(Shurima), ListaResultado).

    
	 % region targon
	template([targon], ListaResultado, []):-
		findall(Targon, targon(Targon), ListaResultado).
	
	template([dime, los, campeones, de, targon], ListaResultado, []):-
		findall(Targon, targon(Targon), ListaResultado).
	
	template([cuales, son, campeones, de, targon], ListaResultado, []):-
		findall(Targon, targon(Targon), ListaResultado).

	template([campeones, de, la, region, de, targon], ListaResultado, []):-
		findall(Targon, targon(Targon), ListaResultado).
	
	template([campeones, de, targon], ListaResultado, []):-
		findall(Targon, targon(Targon), ListaResultado).

	template([region, de, targon], ListaResultado, []):-
		findall(Targon, targon(Targon), ListaResultado).

	 % region zaun
	template([zaun], ListaResultado, []):-
		findall(Zaun, zaun(Zaun), ListaResultado).
	
	template([dime, los, campeones, de, zaun], ListaResultado, []):-
		findall(Zaun, zaun(Zaun), ListaResultado).
	
	template([cuales, son, campeones, de, zaun], ListaResultado, []):-
		findall(Zaun, zaun(Zaun), ListaResultado).

	template([campeones, de, la, region, de, zaun], ListaResultado, []):-
		findall(Zaun, zaun(Zaun), ListaResultado).
	
	template([campeones, de, zaun], ListaResultado, []):-
		findall(Zaun, zaun(Zaun), ListaResultado).

	template([region, de, zaun], ListaResultado, []):-
		findall(Zaun, zaun(Zaun), ListaResultado).

	
    % templates comparativos
	% 
	template([s(_), es, un, campeon, de, piltover], [flagPILTOVER], [0]).
    template([s(_), es, un, campeon, de, aguas, turbias], [flagAguas_turbias], [0]).
    template([s(_), es, un, campeon, de, ciudad, de, bandel], [flagCiudad_de_bandel], [0]).
    template([s(_), es, un, campeon, de, demacia], [flagDemacia], [0]).
    template([s(_), es, un, campeon, del, vacio], [flagVacio], [0]).
    template([s(_), es, un, campeon, del, freljord], [flagFreljord], [0]).
    template([s(_), es, un, campeon, de, las, islas, de, las, sombras], [flagIslas_de_las_sombras], [0]).
    template([s(_), es, un, campeon, de, ixtal], [flagIxtal], [0]).
    template([s(_), es, un, campeon, de, nonia], [flagJonia], [0]).
    template([s(_), es, un, campeon, de, noxus], [flagNoxus], [0]).
    template([s(_), es, un, campeon, de, shurima], [flagShurima], [0]).
    template([s(_), es, un, campeon, de, targon], [flagTargon], [0]).
	template([s(_), es, un, campeon, de, zaun], [flagZaun], [0]).

	% templates default
	template(_, ['No te he comprendido, dime algo que me sirva'], []). 


	% piltover 
	piltoverIs(X, R):- piltover(X), R = [si, X, es, un, campeon, de, piltover].
   	piltoverIs(X, R):- \+piltover(X), R = [X, no, es, un, campeon, de, piltover].
	piltover('caitlyn').
	piltover('vi').
	piltover('camille').
	piltover('ezreal').
	piltover('heimerdinger').
    piltover('jayce').
    piltover('orianna'). 
	piltover('seraphine').

	% aguas turbias
	aguas_turbiasIs(X, R):- aguas_turbias(X), R = [si, X, es, un, campeon, de, aguas, turbias].
	aguas_turbiasIs(X, R):- \+aguas_turbias(X), R = [X, no, es, un, campeon, de, aguas, turbias].
	aguas_turbias('fizz').
	aguas_turbias('gangplank').
	aguas_turbias('graves').
	aguas_turbias('illaoi').
	aguas_turbias('miss fortune').
	aguas_turbias('nautilus').
	aguas_turbias('pike').
	aguas_turbias('tahm kench').
	aguas_turbias('twisted fate').

	% ciudad de bandel
	ciudad_de_bandelIs(X, R):- ciudad_de_bandel(X), R = [si, X, es, un, campeon, de, ciudad, de, bandel].
	ciudad_de_bandelIs(X, R):- \+ciudad_de_bandel(X), R = [X, no, es, un, campeon, de, la, ciudad, de, bandel].
	ciudad_de_bandel('corki').
	ciudad_de_bandel('lulu').
	ciudad_de_bandel('rumble').
	ciudad_de_bandel('teemo').
	ciudad_de_bandel('tristana').
	ciudad_de_bandel('veigar').
	ciudad_de_bandel('yummi').

	% Demacia
	demaciaIs(X, R):- demacia(X), R = [si, X, es, un, campeon, de, demacia].
	demaciaIs(X, R):- \+demacia(X), R = [X, no, es, un, campeon, de, demacia].
	demacia('fiora').
	demacia('galio').
	demacia('garen').
	demacia('jarvan iv').
	demacia('kayle').
	demacia('lucian').
	demacia('lux').
	demacia('morgana').
	demacia('poppy').
	demacia('quinn').
	demacia('shyvana').
	demacia('sona').
	demacia('sylas').
	demacia('vayne').
	demacia('xin zhao').



	% vacio
	vacioIs(X, R):- vacio(X), R = [si, X, es, un, campeon, del, vacio].
	vacioIs(X, R):- \+vacio(X), R = [X, no, es, un, campeon, del, vacio].
	vacio('bel veth').
	vacio('cho gath').
	vacio('kai sa').
	vacio('kassadin').
	vacio('kha zix').
	vacio('kog maw').
	vacio('malzahar').
	vacio('rek sai').
	vacio('vel koz').

	% freljord
	freljordIs(X, R):- freljord(X), R = [si, X, es, un, campeon, del, freljord].
	freljordIs(X, R):- \+freljord(X), R = [X, no, es, un, campeon, del, freljord].
	freljord('anivia').
	freljord('ashe').
	freljord('braum').
	freljord('gnar').
	freljord('gragas').
	freljord('lissandra').
	freljord('nunu y willup').
	freljord('olaf').
	freljord('ornn').
	freljord('sejuani').
	freljord('trundle').
	freljord('tryndamer').
	freljord('udyr').
	freljord('voliber').
	

	% islas_de_las_sombras
	islas_de_las_sombrasIs(X, R):- islas_de_las_sombras(X), R = [si, X, es, un, campeon, de, las, islas, de, las, sombras].
	islas_de_las_sombrasIs(X, R):- \+islas_de_las_sombras(X), R = [X, no, es, un, campeon, de, las, islas, de, las, sombras].
	islas_de_las_sombras('elise').
	islas_de_las_sombras('gwen').
	islas_de_las_sombras('hecarim').
	islas_de_las_sombras('kalista').
	islas_de_las_sombras('karthus').
	islas_de_las_sombras('maokai').
	islas_de_las_sombras('thresh').
	islas_de_las_sombras('vex').
	islas_de_las_sombras('viego').
	islas_de_las_sombras('yorick').

	% ixtal
	ixtalIs(X, R):- ixtal(X), R = [si, X, es, un, campeon, de, ixtal].
	ixtalIs(X, R):- \+ixtal(X), R = [X, no, es, un, campeon, de, ixtal].
	ixtal('malphite').
	ixtal('milio').
	ixtal('neeko').
	ixtal('nidalee').
	ixtal('qiyana').
	ixtal('rengar').
	ixtal('zyra').

	% jonia
	joniaIs(X, R):- jonia(X), R = [si, X, es, un, campeon, de, jonia].
	joniaIs(X, R):- \+jonia(X), R = [X, no, es, un, campeon, de, jonia].
	jonia('ahri').
	jonia('akali').
	jonia('irelia').
	jonia('ivern').
	jonia('jhin').
	jonia('karma').
	jonia('kayn').
	jonia('kennen').
	jonia('lee sin').
	jonia('lillia').
	jonia('maestro yi').
	jonia('wukong').
	jonia('rakan').
	jonia('sett').
	jonia('shen').
	jonia('syndra').
	jonia('varus').
	jonia('xayah').
	jonia('yasuo').
	jonia('yone').
	jonia('zed').

	% noxus
	noxusIs(X, R):- noxus(X), R = [si, X, es, un, campeon, de, noxus].
	noxusIs(X, R):- \+noxus(X), R = [X, no, es, un, campeon, de, noxus].
	noxus('briar').
	noxus('cassiopeia').
	noxus('darius').
	noxus('draven').
	noxus('katarina').
	noxus('kled').
	noxus('leblanc').
	noxus('mordekaiser').
	noxus('rell').
	noxus('riven').
	noxus('samira').
	noxus('sion').
	noxus('swain').
	noxus('talon').
	noxus('vladimir').
		
	% shurima
	shurimaIs(X, R):- shurima(X), R = [si, X, es, un, campeon, de, shurima].
	shurimaIs(X, R):- \+shurima(X), R = [X, no, es, un, campeon, de, shurima].
	shurima('akshan').
	shurima('amumu').
	shurima('azir').
	shurima('k sante').
	shurima('naafiri').
	shurima('nasus').
	shurima('rammus').
	shurima('renekton').
	shurima('sivir').
	shurima('skarner').
	shurima('taliyah').
	shurima('xerath').

	% targon
	targonIs(X, R):- targon(X), R = [si, X, es, un, campeon, de, targon].
	targonIs(X, R):- \+targon(X), R = [X, no, es, un, campeon, de, targon].
	targon('aphelios').
	targon('aurelion sol').
	targon('diana').
	targon('leona').
	targon('pantheon').
	targon('soraka').
	targon('taric').
	targon('zoe').

	% zaun
	zaunIs(X, R):- zaun(X), R = [si, X, es, un, campeon, de, zaun].
	zaunIs(X, R):- \+zaun(X), R = [X, no, es, un, campeon, de, zaun].
	zaun('blitzcrank').
	zaun('dr. mundo').
	zaun('ekko').
	zaun('janna').
	zaun('jinx').
	zaun('renata glasc').
	zaun('singed').
	zaun('twitch').
	zaun('urgot').
	zaun('viktor').
	zaun('warwick').
	zaun('zac').
	zaun('ziggs').
	zaun('zeri').

	% Lo que le gusta a invocador : flagLike
	invocadorLikes(X, R):- likes(X), R = [si, me, gusta, X].
	invocadorLikes(X, R):- \+likes(X), R = [X, no, me, gusta].
	likes(apples).
	likes(ponies).
	likes(zombies).
	likes(manzanas).
	likes(computadoras).
	like(carros).

	% lo que hace invocador: flagDo
	invocadorDoes(X, R):- does(X), R = [si, yo, X].
	invocadorDoes(X, R):- \+does(X), R = [X, no, yo, no, lo, hago].
	does(study).
	does(cook).
	does(work).

	% lo que es invocador: flagIs
	invocadorIs(X, R):- is0(X), R = [si, soy, X].
	invocadorIs(X, R):- \+is0(X), R = [no, soy, X].
	is0(dumb).
	is0(weird).
	is0(nice).
	is0(fine).
	is0(happy).
	is0(redundant).

	match([],[]).
	match([], _):- true.

	match([S|Stim],[I|Input]) :-
		atom(S), % si I es un s(X) devuelve falso
		S == I,
		match(Stim, Input),!.

	match([S|Stim],[_|Input]) :-
	% I es un s(X), lo ignoro y continúo con el resto de la lista
		\+atom(S),
		match(Stim, Input),!.

	replace0([], _, _, Resp, R):- append(Resp, [], R),!.

	% invocador likes:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagLike,
		invocadorLikes(Atom, R).

	% invocador does:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagDo,
		invocadorDoes(Atom, R).

	% invocador is:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagIs,
		invocadorIs(Atom, R).

	replace0([I|Index], Input, N, Resp, R):-
		length(Index, M), M =:= 0,
		nth0(I, Input, Atom),
		select(N, Resp, Atom, R1), append(R1, [], R),!.

	replace0([I|Index], Input, N, Resp, R):-
		nth0(I, Input, Atom),
		length(Index, M), M > 0,
		select(N, Resp, Atom, R1),
		N1 is N + 1,
		replace0(Index, Input, N1, R1, R),!.

	

	% lol FLAGS
    % piltover
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagPILTOVER,
		piltoverIs(Atom, R).

	% aguas turbias
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagAguas_turbias,
		aguas_turbiasIs(Atom, R).

    % ciudad de bandel
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagCiudad_de_bandel,
		ciudad_de_bandelIs(Atom, R).

    % demacia
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagDemacia,
		demaciaIs(Atom, R).

    % vacio
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagVacio,
		vacioIs(Atom, R).

    % freljord
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagFreljord,
		freljordIs(Atom, R).

	% islas de las sombras
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagIslas_de_las_sombras,
		islas_de_las_sombrasIs(Atom, R).

	% ixtal
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagIxtal,
		ixtalIs(Atom, R).

	% jonia
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagJonia,
		joniaIs(Atom, R).
	
	% noxus
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagNoxus,
		noxusIs(Atom, R).
	
	% shurima
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagShurima,
		shurimaIs(Atom, R).

	% targon
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagTargon,
		targonIs(Atom, R).

	% zaun
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagZaun,
		zaunIs(Atom, R).


