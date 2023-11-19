animal(cachorro)  :- eh_fato_que('tem pelo'), eh_fato_que('late').
animal(gato)  :- eh_fato_que('tem pelo'), eh_fato_que('mia').
animal(pato) :- eh_fato_que('tem penas'), eh_fato_que('grasna').

eh_fato_que(Q) :-
		format("~w?\n", [Q]),
		read(sim).
