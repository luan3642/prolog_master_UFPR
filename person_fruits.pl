person(thomas).
person(caroline).
fruit(maca).
fruit(laranja).

define(X):-
    pessoa(X);
    fruta(X).

fruta(Z):-
    fruit(Z),
    write('Fruta').


pessoa(Y):-
    person(Y),
    write('Pessoa').

