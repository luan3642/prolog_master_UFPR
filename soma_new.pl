soma([], 0). % caso base para recuersao parar


soma([Head | Tail], Result):-
    soma(Tail, SomaTail),
    Result is Head + SomaTail.
