homem(luan).
homem(deive).
homem(lourival).

mulher(maria).
mulher(lorrany).
mulher(caroline).

pai(lourival, luan).
pai(lourival, lorrany).
pai(lourival, deive).

mae(maria, lorrany).
mae(maria, luan).
mae(maria, deive).

noivos(luan, caroline).

engajed(X,Y):- noivos(X, Y).
engajed(X,Y):- noivos(Y, X).


irmaos(X, Y):-
    pai(P, X),
    pai(P, Y),
    mae(M, X),
    mae(M, Y),
    X \= Y.



