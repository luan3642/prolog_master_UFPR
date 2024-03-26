soma_valores([], 0). % caso base a soma de uma lista vazia é 0

soma_valores([Head | Tail], Result):-
    soma_valores(Tail, TailSum),
    Result is Head + TailSum.