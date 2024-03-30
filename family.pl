% vamos comecar definindo os homens
homem(luan).
homem(lourival).
homem(deive).
homem(thomas).
homem(orlando).
% vamos comecar definindo as mulheres
mulher(maria).
mulher(lorrany).
mulher(caroline).
mulher(tatiane).


%definir predicado casado.
married(lourival, maria).

casados(X,Y):-
    % ponto e virgula significa OU
    married(X,Y);
    married(Y,X).

% vamos usar o predicado de parent para definir as relacoes
parent(lourival, luan).
parent(lourival, lorrany).
parent(lourival, deive).
parent(maria, luan).
parent(maria, lorrany).
parent(maria, deive).
parent(orlando, tatiane).
parent(tatiane, thomas).

grandparent(X,Z):-
    parent(X, Y),
    parent(Y, Z).
    


irmaos(X,Y):-
    parent(P, X),
    parent(P, Y),
    X \= Y.

