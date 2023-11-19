:- use_module(library(clpfd)).
puzzle([S,E,N,D,M,O,R,Y]) :-
    Variables = [S,E,N,D,M,O,R,Y],
    Variables ins 0..9,
    all_different(Variables),
    (1000*S + 100*E + 10*N + D) +
    (1000*M + 100*O + 10*R + E) #=
    (10000*M + 1000*O + 100*N + 10*E + Y),
    S #\= 0, M #\=0,
    label(Variables).
