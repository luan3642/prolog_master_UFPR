soma([], 0). % caso base para recuersao parar


soma([Heads | Tail], Result):-
    soma(Tail, SomaTail),
    Result is Head + SomaTail.
