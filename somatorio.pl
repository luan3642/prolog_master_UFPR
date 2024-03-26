somatorio([], 0).

somatorio([X | Y], S):-
    somatorio(Y, SY),
    S is X + SY.
